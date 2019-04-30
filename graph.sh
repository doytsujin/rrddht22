#!/bin/bash
rrdtool graph dayly.png \
     --start -86400 --end now \
     -w 800 -h 600 \
     --title "DHT22/home" \
     --watermark "`date`" \
     --font DEFAULT:10: \
     DEF:temp=1.rrd:temp:AVERAGE \
     AREA:temp#FF0000:"Температура" \
     GPRINT:temp:LAST:"Cur\: %5.2lf" \
     GPRINT:temp:AVERAGE:"Avg\: %5.2lf" \
     GPRINT:temp:MAX:"Max\: %5.2lf" \
     GPRINT:temp:MIN:"Min\: %5.2lf" \
     DEF:hum=1.rrd:hum:AVERAGE \
     LINE1:hum#00FF00:"Влажность" \
     GPRINT:hum:LAST:"Cur\: %5.2lf" \
     GPRINT:hum:AVERAGE:"Avg\: %5.2lf" \
     GPRINT:hum:MAX:"Max\: %5.2lf" \
     GPRINT:hum:MIN:"Min\: %5.2lf"
