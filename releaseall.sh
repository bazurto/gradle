#!/bin/bash
make VERSION=2.14.1 JAVAVERSION=8.362.09 clean
exit

make VERSION=2.14.1 JAVAVERSION=8.362.09 release
make VERSION=2.14.1 JAVAVERSION=8.362.09 clean

make VERSION=3.5.1 JAVAVERSION=8.362.09 release
make VERSION=3.5.1 JAVAVERSION=8.362.09 clean

make VERSION=4.10.3 JAVAVERSION=8.362.09 release
make VERSION=4.10.3 JAVAVERSION=8.362.09 clean

make VERSION=5.6.4 JAVAVERSION=11.0.18.10 release
make VERSION=5.6.4 JAVAVERSION=11.0.18.10 clean

make VERSION=6.9.4 JAVAVERSION=11.0.18.10 release
make VERSION=6.9.4 JAVAVERSION=11.0.18.10 clean

make VERSION=7.6.2 JAVAVERSION=17.0.6.10 release
make VERSION=7.6.2 JAVAVERSION=17.0.6.10 clean

make VERSION=8.2.1 JAVAVERSION=17.0.6.10 release
make VERSION=8.2.1 JAVAVERSION=17.0.6.10 clean


