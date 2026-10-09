# Exercise 3
cores=$(cat /proc/cpuinfo | grep "processor" | wc -l)
ram=$(free -h | awk '/^Mem:\s+[0-9]+Gi/ {print $2}')
cores2=$(nproc)
hostname=$(hostname)

# Check if Input is a Number
if [[ $# -ne 2 || ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ ]]; then
	echo "Usage: $0 [MAX_NUM_CORES] [MAX_RAM_NEEDED]" >&2
    exit 1
fi

if [ "$cores2" -lt "$1" ]; then
	messagecpu="The Computer does not have enough CPU cores!"
else
	messagecpu="Cores Ok"
fi

if [ "${ram//Gi}" -lt "$2" ]; then
	messageram="The Computer does not have enough RAM!"
else
	messageram="RAM Ok"
fi



echo $messagecpu
echo $messageram
echo $hostname
echo ""
echo "The Command Free shows Total, Available, Allocated RAM, in this case I utilized it similar to the other Exercises so if the user Inputs a Number higher than the Available total RAM a message will be print out. Since RAM is also important to See if the VM could run the Software that is to be installed. The other Command hostname shows the name of the current VM, like this it is a final check if the Software would be installed onto the correct machine."
