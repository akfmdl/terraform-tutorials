# Create google kubernetes engine

## Prerequisites
GCP account is required. Account should have permission `Service Account User`

## Task

### Create role
At first, you need to grant permissions to service account you created in `0-authentication` section.
Otherwise, You will get error like this:
```bash
Error: googleapi: Error 403: Required ~ permission(s) for ~ forbidden
```

![](../src/2023-02-10-16-44-07.png)
![](../src/2023-02-10-16-45-28.png)
Add permissions below
![](../src/2023-02-10-18-51-42.png)

### Add service account to iam principal
* Select IAM -> GRANT ACCESS
![](../src/2023-02-10-17-57-16.png)
* Now you will associate the service account you created in `0-authentication` section to the role you created in the previous step.
![](../src/2023-02-10-17-57-57.png)

### create files and folders
* create your own folder somewhere you want.
* create files named `main.tf`, `variables.tf` in your folder.

### `main.tf`
* Write code to athenticate to GCP using [Google Cloud Platform Provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs)
  * credentials should be the file path you created in `0-authentication` section
* Write code to create gke(Google Kubernetes Engine) cluster with 1 node using [Google Kubernetes Engine Provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster)


### `variables.tf`
* Write code to define variables for `main.tf`: credentials, cluster name, region, zone, node count, etc.
* Use the variables in `main.tf`

### Run terraform commands
initialize terraform
```
terraform init
```

see what will be created
```
terraform plan
```

apply the changes
```
terraform apply
```