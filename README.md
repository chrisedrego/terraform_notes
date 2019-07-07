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

Infrastructure is core building block on which application are constructed.

Terraform is declarative.
What does it mean when we say terraform is declarative, basically we say that.
Hey, I have the CPU to two CPUs with 4GB RAM and Ubuntu OS installed on it.

While the procedural one includes going ahead say...
Create vm using the management tool with the help of this, click on Create VM, select 1CPU and 4GB as RAM and blah balh!!!

In this case basically with the help of Terraform which is declarative we make terraform resposible for doing all the needed changes as needed in order to build-up the whole infrastructure and environment for us.

Terraform - and the end state
Terraform helps you focus on what the planned end state should look like, rather than the intricute detail which are needed.

Terraform - Graph-based approach.
Whatever resource that we define as well as the configuration terraform does the rest of it and doesnt need the extra effort it does the underlying stuff needed, resource have  dependency so it goes ahead and maps the resource with their respective dependencies.

Terraform is build by Hashicorp

Terraform is not configuration managment?
tools like chef, puppet ansible are configuration managemnt.
Terraform is something which is used to provision and build the server and netwok and infrastructure.

Unified environments accross different stages.
with the help of terraform we can make sure that all the environment have the same configuration as the infrastructure is now in the form of code, this makes sure that there is consistency.

Shareable
As the infrastructure is now in the form of code, it ensures that the

How much of mess is needed to install and configure it on your computer?
No fuzz, it will just be needed to go ahead and download the binary from the official terraform portal or using package management tools like chocolatey or brew

Terraform is technological + vendor + provider + ... Neutral, terraform isnt just binded to one specific vendor or provider

Terraform has some stages:
- init (get ready with all the required dependencies and provider based configuration)
- plan (before applying the changes it will show what changes will be perforemd on it)
- apply (Applying the changes to the Infrastructure)
- destroy (Destroy the chagnes made by terraform to the infrastructure)


