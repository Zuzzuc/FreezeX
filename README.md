#FreezeX
A simple script that will freeze all procceses except for itself and the supplied ones. 

##Usage
Please note that using {1..someLargeNumber} will slow this script down if the number is large.

Usage is: "./FreezeX.sh 1 2 3 4"

Set $1 to "-1" to, instead of freezing all but the supplied processes, unfreeze all but the supplied processes.

##Examples
Freeze all proccesses but the process with PID 45<br>`./FreezeX.sh 45`<br><br>

Freeze all proccesses but the processes with PID 45, 67 and 839<br>`./FreezeX.sh 45 67 839`<br><br>

Unfreeze all proccesses but the processes with PID 45, 67 and 839<br>`./FreezeX.sh -1 45 67 839`<br><br>

Freeze no procceses below 500<br>`./FreezeX {1..500}`<br><br>

Freeze everything except Terminal<br>`./FreezeX $(pgrep Terminal)`<br><br>

Freeze nothing (Why would anyone do this though?)<br>`./FreezeX $(ps -A -o pid)`<br><br>
