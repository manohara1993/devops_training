#Check the user
#id exit Delet it
#if user not there gice the error

read -p "Enter the User: " username
echo $username
id $username
if [ $? == 0 ]
then
    echo "User exist"
    sudo userdel $username
    if [ $? == 0 ]
    then
        echo "User Deleted"
    else
        echo "error in user delete"
    fi
else
    echo "User not Exist"
fi