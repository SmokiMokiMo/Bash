#!/bin/bash

echo "Block all Demo SG...with values 'TRUE'"

hostnames=${1}

for hostname in "${hostnames[@]}"
do
    sudo iptables -I INPUT -p tcp -j DROP -s $ip
    echo "The IP address for $hostname is $ip"
        
    # Use the IP address in another command
    # For example:
    # curl "http://$ip:80"
done
echo "-----------------------------------------------------------"
echo "               ALL SG is Blocked!!!!!!!!!!"
sudo iptables -n -L -v
echo "----------------------------------------------------------------------------------"
echo " List of ALL SG which are Blocked!!!!!!!!!!"

