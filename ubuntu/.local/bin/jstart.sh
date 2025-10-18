#!/bin/bash

nohup /wildfly/37.0.1.Final/bin/standalone.sh -b 0.0.0.0 > /wildfly/37.0.1.Final/standalone/log/wildfly.log 2>&1 &

