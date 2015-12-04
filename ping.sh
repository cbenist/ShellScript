echo "Enter the url you would like to check!"
read website

echo "Pinging: $website"


count=$(ping -c5 $website | grep 'received' | awk -F',' '{ print $2 }' | awk '{ print $1 }')
    
    if [$count -eq 0];
    then
    echo "$website is down (ping failed)."
    
    else
    
    echo "$website is up and running."
    
    fi
