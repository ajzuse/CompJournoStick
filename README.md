# CompJournoStick

Computational Journalism on a Stick - a Fedora Remix for computational journalists

## What you need to tell your lawyer

1. CompJournoStick is a [Fedora Remix](http://fedoraproject.org/wiki/Remix): "a combination of Fedora® software, with or without add-ons, that can be created by any community member at any time to produce interesting and compelling products."
    * CompJournoStick is not provided or supported by the Fedora Project.
    * Official Fedora software is available through the [Fedora Project website](http://fedoraproject.org/).
2. The Fedora project is ***very*** strict about the licensing of software, content and documentation that they package and distribute. So there are some things you won't find in CompJournoStick. The details can be found [here](http://fedoraproject.org/wiki/Packaging:Guidelines#Legal).
3. CompJournoStick licenses: the code is licensed under the [GNU Affero General Public License](http://www.gnu.org/licenses/agpl-3.0.html). The documentation is licensed under the [Creative Commons Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)](http://creativecommons.org/licenses/by-sa/3.0/) license.
4. Fedora software contains some components that are regulated by the Federal government of the United States of America. You may not export CompJournoStick to some places of interest to some journalists - Cuba, North Korea, Iran, Syria and Sudan. I am not a lawyer, which is why you should talk to yours. See [Fedora Export Control Product Matrix ](https://fedoraproject.org/wiki/Legal:Export?rd=Distribution/Download/ExportRegulations) for the details.

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

## Getting the scripts
1. Boot up Fedora 18 and log in. You'll be in the GNOME 3 desktop.
1. If you've never used the GNOME 3 desktop, the easiest way to start an application is to move the mouse to the upper left corner of the screen. If you don't see the application you want in the 'Favorites' menu on the left, start typing and you'll see a search bar and some possible candidates. For example, to open a terminal, move the mouse to the upper left and type 'term'.
1. Download the CompJournoStick scripts. Start Firefox; it's in the 'Favorites' menu on the left when you move your mouse to the upper left screen corner. Download the most recent 'Source code (zip)' archive file from the [Github tags page](https://github.com/znmeb/CompJournoStick/tags). 
1. Open the archive with the Archive Manager and press the 'Extract' button on the upper right. In the file selection dialog, pick your home directory and press the 'Extract' button on the lower right.
1. Open a terminal. This one isn't in the initial menu, so move your mouse to the upper left and type 'term'. When you see the terminal, right-click on it and select 'Add to favorites', because you'll be doing a lot with the terminal.
1. The terminal uses a shell called 'Bourne Again Shell (bash)'. This has a convenient feature called 'tab completion'. In the terminal, type

```
cd CompJou<TAB>
```

The shell will complete the file name for you and you'll be in the script directory.
