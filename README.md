# CompJournoStick

Computational Journalism on a Stick - a Fedora Remix for computational journalists

> “There are three kinds of men. The one that learns by reading. The few who learn by observation. The rest of them have to pee on the electric fence for themselves.” - Will Rogers

## What you need to tell your lawyer
1. CompJournoStick is a [Fedora Remix](http://fedoraproject.org/wiki/Remix): "a combination of Fedora® software, with or without add-ons, that can be created by any community member at any time to produce interesting and compelling products."
    * CompJournoStick is not provided or supported by the Fedora Project.
    * Official Fedora software is available through the [Fedora Project website](http://fedoraproject.org/).
1. The Fedora project is ***very*** strict about the licensing of software, content and documentation that they package and distribute. So there are some things you won't find in CompJournoStick. The details can be found [here](http://fedoraproject.org/wiki/Packaging:Guidelines#Legal).
1. CompJournoStick licenses: the code is licensed under the [GNU Affero General Public License](http://www.gnu.org/licenses/agpl-3.0.html). The documentation is licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)](http://creativecommons.org/licenses/by-sa/3.0/) license.
1. Fedora software contains some components that are regulated by the Federal government of the United States of America. You may not export CompJournoStick to some places of interest to some journalists - Cuba, North Korea, Iran, Syria and Sudan. I am not a lawyer, which is why you should talk to yours. See [Fedora Export Control Product Matrix ](https://fedoraproject.org/wiki/Legal:Export?rd=Distribution/Download/ExportRegulations) for the details.

## Installing Fedora
1. Minimum system requirements: you'll need a 64-bit Intel or AMD PC with at least 4 GB of RAM and 32 GB of free disk space. If you're installing to a virtual machine, the virtual machine must have at least 2 GB of RAM and a 32 GB virtual disk drive. You'll need reliable wall power and a reliable Internet connection.
1. Go to the [Fedora Project home page](https://fedoraproject.org/) and [download Fedora 18](http://download.fedoraproject.org/pub/fedora/linux/releases/18/Live/x86_64/Fedora-18-x86_64-Live-Desktop.iso).
1. Install Fedora 18 on a real or virtual machine. I run Fedora 18 on real machines as my primary operating system, but it works fine in virtual machines under VMware Player, VMware Workstation, VirtualBox, Windows 8 Pro Client Hyper-V or Fedora Virtual Machine Manager.
1. You now have a Fedora desktop. Included are
    * The Linux kernel, device drivers, etc.,
    * [GNU](http://www.gnu.org/) utilities, tools, libraries, etc.,
    * The [GNOME 3](http://www.gnome.org/gnome-3/) desktop,
    * The [Mozilla](http://www.mozilla.org/en-US/) [Firefox](http://www.mozilla.org/en-US/firefox) browser,
    * The [Evolution](http://projects.gnome.org/evolution/) integrated email, addressbook and calendaring tools,
    * The [Rhythmbox](http://projects.gnome.org/rhythmbox/) music management application,
    * The [Shotwell](http://yorba.org/shotwell/) photo organizer, and
    * The [LibreOffice](http://www.libreoffice.org/) personal productivity suite.

## Getting used to GNOME 3
If you've never used the GNOME 3 desktop before, here are some tips.

1. To start an application, move the mouse to the upper left hand corner. You should see a 'Favorites' bar on the left, which is pre-loaded with Firefox, Rhythmbox, Evolution, Shotwell, File Manager, and some of the LibreOffice tools. If that's what you want, just click the icon. If it isn't ...
1. There's a 'grid' at the bottom of the favorites bar. Click on that and you'll get a list of all the applications installed. Or ...
1. If you know part of the name of the application, just start typing it. You'll get a search bar and the icons of partial matches. When you see the one you want, right-click on it and either add it to 'Favorites' or open a new window.
1. Like most Linux systems, you will be doing quite a bit in the terminal. So ... move your mouse to the upper left, type 'term' and add the Terminal to the 'Favorites' bar.
1. The terminal uses a shell called 'Bourne Again Shell (bash)'. This has a convenient feature called 'tab completion'. In the terminal, you type the first part of a command or file name and press <TAB>. If the shell can complete the command / file name, it will. Otherwise it will list the possibilities. You can then enter the next few characters and press <TAB> again to finish it.
For example, suppose you want to run the script './install-all.bash'. Type
    ```
    ./ins
    ``` and press 'TAB'. If the script is present, 'bash' will complete the command and all you have to do is press 'ENTER'. In the following, I'll use the code ```<TAB>``` for 'TAB" and```<ENT>``` for 'Enter'.

## Getting the scripts
1. Boot up Fedora 18 and log in. You'll be in the GNOME 3 desktop.
1. Download the CompJournoStick scripts. Start Firefox; it's in the 'Favorites' bar. Download the most recent 'Source code (zip)' archive file from the [Github tags page](https://github.com/znmeb/CompJournoStick/tags). 
1. Open the archive with the Archive Manager and press the 'Extract' button on the upper right. In the file selection dialog, pick your home directory and press the 'Extract' button on the lower right.

## [Next step: installing packages from Fedora](https://github.com/znmeb/CompJournoStick/blob/master/FedoraWorkstationInstall/README.md)
