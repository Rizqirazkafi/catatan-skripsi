# Poin pembahasan
Dokumen ini membahas tentang poin perbandingan antara NixOS dengan Ansible

## NixOS

### Definisi
NixOS merupakan ...


### Plus
* nixpkgs works on every distro including MacOS
* Doesn't need master system
* declarative and reproducible system
* immutable
* containerize system package and dependencies

### Minus
* Documentation sucks
* Not much tutorial
* Forum is not that big
* Hard to learn

## Hasil Experiment NixOS
### Laptop to Existing Server
__First Run__
* Connection speed 20Mbps
* No Nginx and Web
* 52 sec download, build time and copy
* 2 sec copy 

__Second Run__
* Removed ncdu
* Build and copy took 17 sec

### Server to server
__First Run__
* Connection speed 1Gbps
* With nginx
* Already built
* 1m10s

__ Second Run__
* Unchanged
* 3 sec to copy



## Ansible

### Definisi
Ansible merupakan

### Plus
* Support most of */Linux distribution, MacOS, Windows, even Networking devices
* Easy to learn
* Good Documentation
* Lots of tutorials online
* Declarative for a certain points

### Minus
* Playbooks must be distro/system specific
* Doesn't really tell the whole system state
* When old playbook deleted, the configuration state still exist on the system

## ToDo
* Add more test to NixOS pasca Install






