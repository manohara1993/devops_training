#create a User
#take User inpute

read -p "Enter User Name: " username
echo $username
id $username 1>/dev/null 2>/dev/null
if [ $? == 0 ]
then
    echo "User Already exist"
else
    echo "User Not Present"
    sudo useradd $username
    if [ $? == 0 ]
    then
        echo "User created Successfully"
    else
        echo "Error in user creation"
    fi
fi