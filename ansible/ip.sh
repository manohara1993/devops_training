ip_list=`cat ip.txt | awk -F " " '{print $2}'`
echo $ip_list
for j in $ip_list 
do
    ping -c1 $j 1>/dev/null 2>/dev/null
    if [ $? == 0 ] 
    then
        echo "$j ip is rechable"
    else
        echo "$j ip is not Rechable"
    fi
done