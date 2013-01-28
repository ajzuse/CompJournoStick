## Next step: installing library packages from the [Comprehensive R Archive Network (CRAN)](http://cran.r-project.org)
The easiest way to install CRAN packages is to open the [RKWard] R IDE/GUI and install them from the 'Settings -> Manage R Packages' dialog. In addition, I've selected a number of packages I regularly use and provided a script to install them. 

The CompJournoStick Fedora Remix contains all the Fedora-level dependencies these packages need to run. I consider this the minimum toolset for doing computational journalism. It includes the [Graphics](http://cran.r-project.org/web/views/Graphics.html) and [Reproducible Research](http://cran.r-project.org/web/views/ReproducibleResearch.html) task views, [R Commander](http://socserv.mcmaster.ca/jfox/Misc/Rcmdr/), [Rattle](http://rattle.togaware.com/) and the ['tm' text mining tools](http://cran.r-project.org/web/packages/tm/vignettes/tm.pdf).

To install these packages, open a terminal and type
```
cd ~/CompJ<TAB>/RBase<TAB><ENT>
./inst<TAB><ENT>
```
