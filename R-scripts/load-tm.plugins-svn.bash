#! /bin/bash

rm -fr /opt/src/tm.plugins
mkdir -p /opt/src/tm.plugins

pushd /opt/src/tm.plugins
svn checkout svn://scm.r-forge.r-project.org/svnroot/sentiment/

pushd sentiment/pkg
for i in boilerpipeR tm.plugin.sentiment tm.plugin.webmining
do
  R CMD build ${i}
  R CMD INSTALL ${i}*tar.gz 2>&1 | tee ${i}.log
done
popd

popd
