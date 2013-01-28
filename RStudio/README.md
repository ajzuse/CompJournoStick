## Installing [RStudio](http://www.rstudio.com/)
My original plan was to put RStudio on the CompJournoStick media from the RPMs built by the RStudio project. However, I couldn't come up with a simple maintenance strategy, so I instead am installing RStudio, both desktop and server, from scripts in ['RStudio'](https://github.com/znmeb/CompJournoStick/tree/master/RStudio).

To install RStudio, open a terminal and type
```
cd ~/CompJ<TAB>/RStu<TAB><ENT>
./inst<TAB><ENT>
```
After a lengthy compile and install, it will open up a firewall dialog. If you don't want to run the RStudio server, just cancel out of this. But if you do, open TCP port 8787 on both the run time and persistent configurations

1. Select 'Runtime Configuration' in the drop-down. Select the 'Ports' tab. Press the 'Add' button. Enter '8787' in the 'Port / Port Range' box and press i'OK'.
1. Select 'Persistent Configuration' in the drop-down. You should still be on the 'Ports' tab. Enter port '8787' with the 'Add' button. Then go to the 'File' menu and select 'Quit'.
1. After this is done, you will get a Firefox window to log in to RStudio.
