# CompJournoStick

Computational Journalism on a Stick - a Fedora Remix for computational journalists

## What you need to tell your lawyer

1. CompJournoStick is a [Fedora Remix](http://fedoraproject.org/wiki/Remix): "a combination of Fedora® software, with or without add-ons, that can be created by any community member at any time to produce interesting and compelling products."
    * CompJournoStick is not provided or supported by the Fedora Project.
    * Official Fedora software is available through the [Fedora Project website](http://fedoraproject.org/).
2. CompJournoStick is licensed under the [GNU Affero General Public License](http://www.gnu.org/licenses/agpl-3.0.html).
3. Fedora software contains some components that are regulated by the Federal government of the United States of America. You can't "export" CompJournoStick to some places of interest to some journalists - Cuba, North Korea, Iran, Syria and Sudan. I am not a lawyer, which is why you should talk to yours. See [Fedora Export Control Product Matrix ](https://fedoraproject.org/wiki/Legal:Export?rd=Distribution/Download/ExportRegulations) for the details.

## Components of CompJournoStick

### From Fedora 18 repositories
CompJournoStick starts with the default Fedora desktop. This includes
* The Linux kernel, device drivers, etc.,
* GNU utilities, tools, libraries, etc.,
* The [GNOME 3](http://www.gnome.org/gnome-3/) desktop,
* The [Mozilla](http://www.mozilla.org/en-US/) [Firefox](http://www.mozilla.org/en-US/firefox) browser,
* The [Evolution](http://projects.gnome.org/evolution/) integrated email, addressbook and calendaring tools,
* The [Rhythmbox](http://projects.gnome.org/rhythmbox/) music management application,
* The [Shotwell](http://yorba.org/shotwell/) photo organizer, and
* The [LibreOffice](http://www.libreoffice.org/) personal productivity suite.

To the default Fedora 18 desktop, I've added
* The [Fedora Design Suite](http://spins.fedoraproject.org/design/#about),
* The [Audacity](http://audacity.sourceforge.net/) audio editor and recorder,
* The [PiTiVi](http://www.pitivi.org/) movie editor,
* The [Calibre](http://calibre-ebook.com/), [Sigil](http://code.google.com/p/sigil/), and [LyX](http://www.lyx.org/) ebook editors,
* The [Bluefish](http://bluefish.openoffice.nl/index.html) HTML editor and [Freemind](http://freemind.sourceforge.net/wiki/index.php/Main_Page) mind-mapping package,
* The Python [Natural Language Tool Kit](http://nltk.org/) and [NetworkX](http://networkx.github.com/) packages,
* The [WordNet](http://wordnet.princeton.edu/) lexical database,
* The [QuantLib](http://quantlib.org/index.shtml) library for quantitative finance,
* Ruby, Perl and Python web scraping tools,
* The [Tesseract](http://code.google.com/p/tesseract-ocr/) optical character recognition engine,
* The [SpatiaLite](http://www.gaia-gis.it/gaia-sins/), [PostGIS](http://www.postgis.net/) and [Quantum GIS](http://www.qgis.org/) GIS packages,
* The [PostgreSQL](http://www.postgresql.org/), [MongoDB](http://www.mongodb.org/), [CouchDB](http://couchdb.apache.org/), [Riak](http://basho.com/products/riak-overview/) and [Redis](http://redis.io) databases,
* The [GGOBI](http://www.ggobi.org/) data visualization system, and, of course,
* [R](http://r-project.org), and the [RKWard](http://rkward.sourceforge.net/) R IDE/GUI.

### From [Comprehensive R Archive Network (CRAN)](http://cran.r-project.org)
This repository has scripts to install a number of packages from CRAN. The Fedora-level dependencies required for them are (mostly) on the CompJournoStick media already.

The script 'install-all.bash' in 'RBasePackages' installs what I consider the base toolset for computational journalism - the Graphics and Reproducible Research task views, R Commander, Rattle and the 'tm' text mining tools. If you don't need all of that power, you can install individual packages as needed from the 'RKWard' GUI or a terminal.

### [RStudio](http://www.rstudio.com/)
My original plan was to put RStudio on the CompJournoStick media from the RPMs built by the RStudio project. However, I couldn't come up with a simple maintenance capability, so I instead am installing RStudio, both desktop and server, from scripts in 'RStudio'.

To install RStudio, go into the 'RStudio' directory and run 'install-all.bash'. After a lengthy compile and install, it will open up a firewall dialog. If you don't want to run the RStudio server, just cancel out of this. But if you do, open TCP port 8787 on both the run time and persistent configurations. After this is done, you will get a Firefox window to log in to RStudio.

### Optional CRAN packages
I've included scripts to install the High Performance Computing, Machine Learning, Finance, Econometrics, Time Series, Spatial and Natural Language Processing task views, as well as a script to install some social network analysis packages. Most of the dependencies required are on the media, although there are a number of packages in High Performance Computing that won't build because they require proprietary GPU software. A few packages aren't available for Linux.

To install one of these task views, go into the appropriate directory and run 'install-all.bash'. You can install them all from the main directory by running 'install-all-options.bash'.
