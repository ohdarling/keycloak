#!/bin/bash

mvn -Pdistribution -pl distribution/server-dist -am -Dmaven.test.skip clean install

tar xfz distribution/server-dist/target/keycloak-8.0.1.tar.gz
cd keycloak-8.0.1
bin/standalone.sh
cd ..
