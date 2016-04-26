#	This script boots up an CENT OS 7 instance 
#	Author: Siddhant Rath
#	Mail : sid@tamu.edu
#	Date : APR 27 2016
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
printf "%b" "\n${BLOCK_BLUE}                    --- VAGRANT CENT OS ---        ${BLOCK_NORMAL}\n"
printf "%b" "Version 0.1 \nReport issues at https://github.com/Siddhant-R/LinuxTools\n"
#Boot option
if (($#<1))
then
printf "%b" "Error. Please pass a folder name to create a Vagrant CENTOS VM\n" >&2
printf "%b" "Example Usage : ${bold}vagrantCENTOS my_vm \n${normal}" >&2
exit 1
fi

#Vagrant CENT OS 7

###Create Folder to Install
mkdir $1
cd $1

### Add CENT OS 7 Minimal 64 image
vagrant box add cent-os-7 https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box --provider virtualbox

#Initialize Vagrant
vagrant init cent-os-7

### Install vb-guest (Some times it fails to mount, this solves it)
#vagrant plugin install vagrant-vbguest

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
