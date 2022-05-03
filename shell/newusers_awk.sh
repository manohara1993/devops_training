list=`cat file1.txt | awk -F "-" '{print $2}'`
echo $list

for i in $list
do 
    echo $i 
    id $i 1>/dev/null 2>/dev/null
    if [ $? == 0 ]
    then
        echo "user already exist"
    else
        echo "User not Exist, Creating now"
        sudo useradd $i
        if [ $? == 0 ]
        then
            echo $i "User Created"
        else
            echo "error in $i User Creation"
        fi
    fi
done