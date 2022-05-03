#syntax
# ipcheck () {
#     ping -c1 $j 1>/dev/null 2>/dev/null
#     if [ $? == 0 ] 
#     then
#         echo "$j ip is rechable"
#     else
#         echo "$j ip is not Rechable"
#     fi
# }


# ip_list=`cat ip.txt | awk -F " " '{print $2}'`
# echo $ip_list
# for j in $ip_list 
# do
#     ipcheck
# done

create_file ()
{
    read -p "Enter the File Name: " filename
    echo $filename
    test -f $filename
    if [ $? == 0 ] 
    then 
        echo "File already exits"
    else
        echo "File Not Exist Can be Created"
        touch $filename
        if [ $? == 0 ]
        then
            echo "File Created Successfully"
        else
            echo "Error in creating file"
        fi
    fi
}
create_file