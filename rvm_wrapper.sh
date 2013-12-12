#!/usr/bin/env bash

. ~/.rvm/scripts/rvm

RVM_PATH=`rvm env --path -- ruby-version[@gemset-name]`
source $RVM_PATH

ruby ./oook
