#!/bin/sh

# Usage
{{_cursor_}}

# subroutine
test () {
  echo this is test $1 $2 $3
}

# Main script
cd `dirname $0`
start_time=`date +%s`

### 時間測定したい処理
test 'arg1' 2 3
sleep 3

end_time=`date +%s`
time=$((end_time - start_time))
echo $time

