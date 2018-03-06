#!/bin/bash

oc create -f jenkins-slave-ansible/buildconfig-template.yaml
oc new-app jenkins-slave-ansible-builder

oc create -f jenkins-slave-python-selenium/buildconfig-template.yaml
oc new-app jenkins-slave-python-selenium-builder
