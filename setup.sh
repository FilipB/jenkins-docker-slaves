#!/bin/bash

oc create -f jenkins-slave-ansible/buildconfig-template.yaml
oc new-app jenkins-slave-ansible-builder

