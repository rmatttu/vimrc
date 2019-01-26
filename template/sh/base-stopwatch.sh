#!/bin/sh

# Usage
{{_cursor_}}


# Main script
start_time=`date +%s`

### 時間測定したい処理
sleep 3

end_time=`date +%s`
time=$((end_time - start_time))
echo $time

