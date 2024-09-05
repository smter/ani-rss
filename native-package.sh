#!/bin/bash
/bin/bash ./package.sh
cd target
native-image -march=x86-64 -cp ./ani-rss-jar-with-dependencies.jar ani.rss.Main -o ani-rss -O2 -H:-CheckToolchain -H:+StaticExecutableWithDynamicLibC -H:+ReportExceptionStackTraces
cd ..