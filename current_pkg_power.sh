pkg=/sys/class/powercap/intel-rapl/intel-rapl:0

e1=$(cat $pkg/energy_uj)
SECONDS=0
sleep 1
e2=$(cat $pkg/energy_uj)
power=$(bc <<< "scale=2; ($e2-$e1)/$SECONDS/1000000")

echo $power