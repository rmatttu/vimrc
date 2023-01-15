#!/usr/bin/env bash
#
# Usage
# ./pull-all-submodule.sh <root_dir>
#
# e.g.
# ./dev-tool/pull-all-submodule.sh .
#

set -e
set -u

pull_master_for_all_repos() {
  while IFS= read -r -d '' i
  do
    (
      cd "$i"
      pwd
      git checkout master
      git pull
    )
  done <   <(find "$1" -mindepth 1 -maxdepth 1 -type d -print0)
}

pull_master_for_all_repos pack/default/start
pull_master_for_all_repos pack/default/opt
