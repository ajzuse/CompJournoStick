## Installing library packages from the [Comprehensive R Archive Network (CRAN)](http://cran.r-project.org)
The easiest way to install CRAN packages is to open the [RKWard](http://rkward.sourceforge.net/) R IDE/GUI and install them from the 'Settings -> Manage R Packages' dialog. If you're just getting started with R, RKWard is a great way to explore and you can add packages as needed.

For more advanced users, I've selected a number of packages I regularly use and provided a script to install them. The CompJournoStick Fedora Remix contains all the Fedora-level dependencies these packages need to run.

I consider this the minimum toolset for doing computational journalism on R. It includes the [Graphics](http://cran.r-project.org/web/views/Graphics.html) and [Reproducible Research](http://cran.r-project.org/web/views/ReproducibleResearch.html) task views, [R Commander](http://socserv.mcmaster.ca/jfox/Misc/Rcmdr/), [Rattle](http://rattle.togaware.com/) and the ['tm' text mining tools](http://cran.r-project.org/web/packages/tm/vignettes/tm.pdf).

To install these packages, open a terminal and type
```
cd ~/CompJ<TAB>/RBase<TAB><ENT>
./inst<TAB><ENT>
```

## Optional CRAN packages
I've included scripts to install the High Performance Computing, Machine Learning, Finance, Econometrics, Time Series, Spatial and Natural Language Processing task views, as well as a script to install some social network analysis packages. Most of the dependencies required are installed in the 'FedoraWorkstationInstall' step. However, there are a number of packages in High Performance Computing that won't build because they require proprietary GPU software. And a few CRAN packages in some of the task views aren't available for Linux.

To install one of these task views, go into the appropriate directory and run 'install-all.bash'. Or, you can install them ***all*** from the main directory by typing
```
cd ~/CompJ<TAB><ENT>
./install-all-options.bash<ENT>
```

# [Next step: Installing RStudio](https://github.com/znmeb/CompJournoStick/blob/master/RStudio/README.md)
