#!/usr/bin/env bash

set -e
set -u

pull_master_for_all_repos () {
  cd $1
  for i in $(ls -1); do
    cd $i
    echo $(pwd)
    git checkout master
    git pull
    cd ../
  done
}

cd `dirname $0`
pull_master_for_all_repos pack/default/start

cd ../../../
pull_master_for_all_repos pack/default/opt
