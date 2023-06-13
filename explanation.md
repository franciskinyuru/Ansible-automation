## Provision a geerlingguy/ubuntu2004 using vagrant and deploy Yolo app using ansible

## Implementation plan

 ## prerequisites 
  1. install vagrant
  2. Install virtual box.

## Step 1
 Provision a geerlingguy/ubuntu2004 using vagrant manually on you machine.
 Create a new directory and cd to this directory and run below command
 `
 vagrant init geerlingguy/ubuntu2004

`
a vagrant file will be created in the current folder

Open the vagrantfile in a text editor and uncomment the below lines

`
config.vm.box = "geerlingguy/ubuntu2004"
config.vm.network "forwarded_port", guest: 80, host: 8080
vb.memory = "1024"
end
config.vm.provider "virtualbox" do |vb|
`
you can add below line to allow download without ssl validation

`
config.vm.box_download_insecure = true
`

Save the vagrant file.

Then run below command to download the ubuntu virtual machine
`
vagrant up

`
Then run below to access the virtual machine

`
vagrant ssh
`

## Step 2 

To clone and deploy the yolo application in docker desktop.

Create a vars.yml file for add the variables
Create a roles directory then a task directory the a main.yml file for the container roles

In the main.yml define the tasks of clone the repository.

Tasks for Building the client and backend images

create a new folder and copy the docker-compose.yaml file to the created directory from the cloned project

Define tasks to run the containers form the docker-compose.yml file.

Confirm the services are running and accessible.

