# Exercise 2
cores=$(cat /proc/cpuinfo | grep "processor" | wc -l)

cores2=$(nproc)
# Check if Input is a Number
if [[ $# -ne 1 || ! $1 =~ ^[0-9]+$ ]]; then
    echo "Usage: $0 [MAX_NUM_CORES]" >&2
    exit 1
fi

if [ "$cores2" -lt "$1" ]; then
	message="The Computer does not have enough CPU cores!"
else
	message="Ok"
fi
echo $message
