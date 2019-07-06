# terraform_notes
This Repository contains the notes for terraform notes


- Terraform is used for cloud provision.
- Terraform is used to Ochestration or for creation of server.

- Terraform takes into account the current state of the environment.
State managment: using terraform.tfstate”

- What if it fails? it will mark the one which is failed as tainted.

terraform is used for...
Create (+)
Modify (~)
Delete (-)

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

- Terraform providers:
This means basically the cloud providers that Terraform has which has information of the type of Cloud Providers which can be AWS, Microsoft Azure, Google 

A Specific provider may provider  certain type of features: servers, database, load balancer vms, etc...blah blah!!..

Example:
resource "aws_instance" "demo_name_of_aws_instance" {
  ami           = "machine_id"
  instance_type = "typeoftheinstance"
}

Terraform init - Go and get the required things needed for .tf file
Terraform deals with multiple providers and is provider neutral, hence whenever we download terraform it doesn't come pre-loaded with provider based configuration or data, based upon what resource we provider in the .tf terraform file it goes ahead and gets the required data based on the provider and dumps it into .terraform file.

Terraform plan:
This will go ahead and show exactly what we have intialized and planned and whats  gonna happen now.


Terraform Apply:
TO finally apply the changes in the environment, by having to get confirmation and then apply it.


Variables:
Variables helps to make the configuration of the terraform more configurable and easy to configure.
type: This helps to provide a Data-Type which can be -  string, number, bool, list, map, set, object, tuple, and any
default: Variables can be passed to terraform but we can also have default variables setup in place in case if the value is placed.

Example:

variable "server_name" {
  description = "This variable is used to store details of the Server Configuration"
  type        = string
}
In this case, we havent configured a default value in that case the terraform would go ahead and ask to enter a variable based on it.


variable "NAME" {
 [CONFIG ...]
}

$ terraform apply
var.server_name
  This variable is used to store details of the Server Configuration
  Enter a value:
  <--- In this way, its gonna ask the value.
  
  
  terraform apply -var "server_name=test_server" <-- This is how we can send the value at the run time
  
- To use the Variables in the terraform file.
Variables can be used in the terraform file using the variable reference
var.<VARIABLE_NAME>

Output Variables:
Similiar to input variables we also have the output variables which are used to display the value.

output "server_name" {
  value       = test_server_name
  description = "The name of the Server"
}

Output Variables contain the following stuff:
- value
- description
- sensitive: if its set to true then the value wont be displayed on the screen.

How to output all the outputs:
terraform output --> This will be used to display all the values.




