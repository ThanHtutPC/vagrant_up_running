#  Custom Vagrant Box Lab

This project demonstrates the full workflow for creating, configuring, and managing custom Vagrant boxes using VirtualBox. It covers everything from creating and configuring a base VM to packaging and reusing it.

---

##  Topics Covered

-  Box Format and Structure
-  Basic Box Management Commands
-  Creating Boxes from an Existing VM
-  Creating Boxes from Scratch
-  VirtualBox Machine Setup
-  OS Configuration & Provisioning
-  Installing VirtualBox Guest Additions
-  Adding Additional Software
-  Minimizing Final Box Size
-  Packaging the Box

---

##  Commands
```sh 
vagrant package --output ssh-user.box
vagrant box add my-custom-box ./ssh-user.box
```