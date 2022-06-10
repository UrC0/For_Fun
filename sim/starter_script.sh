#!/bin/sh

python3 file_formatting.py  ~/proj/tools/spike-demo/spike.log ./hello/spike_temp.log
sed -E '/mem 0x9000002c 0x00$/,$d' ./hello/spike_temp.log > ./hello/spike_tempo.log
sed -E '/mem 0x9000002c 0x00$/,$d' trace.log > ./hello/trace_temp.log
python3 file_comparasion.py ./hello/trace_temp.log ./hello/spike_temp.log

