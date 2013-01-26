#! /bin/bash

sudo rm -fr src
mkdir -p src

pushd src
svn checkout svn://scm.r-forge.r-project.org/svnroot/sentiment/

pushd sentiment/pkg
for i in boilerpipeR tm.plugin.sentiment tm.plugin.webmining
do
  R CMD build ${i}
  R CMD INSTALL ${i}*tar.gz 2>&1 | tee ${i}.log
done
popd

popd
