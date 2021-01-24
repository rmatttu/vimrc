#!/bin/sh

# Usage
# {{_cursor_}}

# set -e
# set -u

# Function definition
f () {
  echo this is test $1 $2 $3
}

# Main script
start_time=`date +%s`

# Current directory
cd `dirname $0`
script_dir_path=$(dirname $(readlink -f $0))

# Function
f 'arg1' 2 3
sleep 3

# xargs
find ./ -newermt "2021-01-01" -type f | xargs -I{} echo {}

end_time=`date +%s`
time=$((end_time - start_time))
echo $time
