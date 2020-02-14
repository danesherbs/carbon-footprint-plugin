pkg=/sys/class/powercap/intel-rapl/intel-rapl:0
dram=$pkg/intel-rapl:0:0

e1=$(cat $dram/energy_uj)
SECONDS=0
sleep 1
e2=$(cat $dram/energy_uj)
power=$(bc <<< "scale=2; ($e2-$e1)/$SECONDS/1000000")

echo $power