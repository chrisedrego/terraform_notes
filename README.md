# terraform_notes
This Repository contains the notes for terraform notes


- Terraform is used for cloud provision.

- Terraform is statefull meaning that it will compare the current state, and then would do the changes based on it.

- Terraform is Infrastructure as a Code.

- Infrastructure as a Code - meaning that the Infrastructure is managed as code as configuration file, so that it can stored managed and version controlled.

- Multiple Provider: Terraform has various providers: Azure, AWS, Google.

- IaaC Terraform Configuration can be shared with others.

- Terraform files end with .tf

- Install Terraform.
https://www.terraform.io/downloads.html


terraform has providers, providers are basically cloud providers like azure resource manager, and others as well.


- terraform stages:
Init: What its gonna look like
Plan: Dry Run (Visualize) before doing see it
Apply: Build the infrastructure that we planned and apply

- So basically if we want to configure the infrastructure the ways to configure it is by using the GUI for that cloud provider but with terraform we can go over the minor details of the configuration and specify the details in the .tf file and then apply the same.
- So that we get a live env, setup.
