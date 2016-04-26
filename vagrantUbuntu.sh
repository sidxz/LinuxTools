#	This script boots up an ubuntu 64 instance 
#	Author: Siddhant Rath
#	Mail : sid@tamu.edu
#	Date : APR 14 2016
#	Version 0.1 Beta
#	GIT : https://github.com/Siddhant-R/LinuxTools.git

#local variables
bold=$(tput bold)
normal=$(tput sgr0)
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
BLUE='\033[1;34m'
BLOCK_BLUE='\e[44m'
BLOCK_NORMAL='\e[49m'
#Header
printf "%b" "\n${BLOCK_BLUE}                    --- VAGRANT UBUNTU ---        ${BLOCK_NORMAL}\n"
printf "%b" "Version 0.1 \nReport issues at https://github.com/Siddhant-R/LinuxTools\n"
#Boot option
if (($#<1))
then
printf "%b" "Error. Please pass a folder name to create a Vagrant Ubuntu VM\n" >&2
printf "%b" "Example Usage : ${bold}vagrantUbuntu my_vm \n${normal}" >&2
exit 1
fi

#Vagrant Ubuntu64

###Create Folder to Install
mkdir $1
cd $1

### Add Ubuntu 64 image
vagrant box add ubuntu-15.04-amd64 https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/15.04/ubuntu-15.04-amd64.box --provider virtualbox
#Initialize Vagrant
vagrant init ubuntu-15.04-amd64

### Install vb-guest (Some times it fails to mount, this solves it)
vagrant plugin install vagrant-vbguest

vagrant up

if(($?!=0))
 then
 printf "%b" " ${RED}[FAIL]${NC} \nFailed Booting Up! \n" >2&
 exit 1
fi
printf "%b" "${GREEN} [SUCCESS]${NC} \n"
printf "%b" "Thank you for using vagrantUbuntu.\n"
printf "%b" "Find other useful tools at  https://github.com/Siddhant-R/LinuxTools\n"

vagrant ssh

##NOTES: 
