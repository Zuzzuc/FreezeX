#FreezeX
A simple script that will freeze all procceses except for itself and the supplied ones. 

##Usage
Please note that using {1..someLargeNumber} will slow this script down a lot, 

Usage is: "./FreezeX.sh 1 2 3 4"

## Examples
Freeze all proccesses but the process with PID 45<br>`./FreezeX.sh 45`<br><br>

Freeze no procceses below 500<br>`./FreezeX {1..500}`<br><br>

Freeze everything except Terminal<br>`./FreezeX $(pgrep Finder)`<br><br>

Freeze nothing (Why would anyone do this though)<br>`./FreezeX $(ps -A -o pid)`<br><br>
