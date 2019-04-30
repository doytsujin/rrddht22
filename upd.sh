#!/bin/bash
data=`python upd.py`
t=`echo $data | awk '{ print $1}'`
h=`echo $data | awk '{print $2}'`
rrdtool update /home/pi/rdb/dht22th.rrd N:$t:$h
