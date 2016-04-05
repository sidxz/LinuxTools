# LinuxTools
Linux Tools to make life simpler

## NOTE:  Please check Wiki for Manuals. This page is not always updated.
#Make Bootable USB
##Usage
###Syntax:
    ./makeBootableUSB <Name of USB> <Path to ISO>
    example : ./makeBootableUSB sdb ubuntu.iso
###What is makeBootableUSB?
Make Bootable USB  allows you to create bootable Live USB drives from command line for Ubuntu and other Linux distributions without burning a CD.
After the USB is created you can directly boot from the USB device. 
For this to happen you need to select 'USB/Removable Devices' as your first boot device from bios or from bios quick boot menu.

###Special Note to use it in VMWare
Vmware may not inherently support booting from a USB Device.
Solution :- 
* Use Plop BootManager : Download - Website: http://www.plop.at/en/bootmanager.htm
* Download the plpbt-x.x.x.zip file and unzip it
* Edit Virtual Machine Settings so that :- 
* CD/DVD uses an iso image, plpbt.iso
* (Important) USB Controller, Compatibility is set to USB2.0
* Make sure your USB drive is connected to VM
* Start the VM and you should see a menu. Choose USB with and press ENTER
