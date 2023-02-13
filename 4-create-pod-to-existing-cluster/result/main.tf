provider "google" {
  credentials = file("${data.terraform_remote_state.eks.outputs.credentials}")
  region      = data.terraform_remote_state.eks.outputs.region
  zone        = data.terraform_remote_state.eks.outputs.zone
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}


resource "kubernetes_deployment_v1" "hello_world" {
  metadata {
    name = "hello-deployment"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        run = "hello-world"
      }
    }

    template {
      metadata {
        labels = {
          run = "hello-world"
        }
      }

      spec {
        container {
          image = "nginxdemos/hello:latest"
          name  = "hello"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service_v1" "hello_world" {
  metadata {
    name = "hello-service"
    labels = {
      run = "hello-world"
    }
  }
  spec {
    selector = {
      run = "hello-world"
    }
    port {
      port     = 80
      protocol = "TCP"
    }
    type = "LoadBalancer"
  }
}

output "web_url" {
  value = kubernetes_service_v1.hello_world.status.0.load_balancer.0.ingress.0.ip
}
