#create multiple Users
#define a array Define a list having mitiplt entries
userlist=`cat users.txt`
#echo $userlist
for i in $userlist
do
id $i 1>/dev/null 2>/dev/null 
echo $i 
if [ $? == 0 ]
then
    echo "User Exist"
else
    echo "User Dosent exist can be created"
    useradd $i
    if [ $? == 0 ]
    then
        echo "User Creted Success fully"
    else
        echo "Error in creating user"
    fi
fi
done
