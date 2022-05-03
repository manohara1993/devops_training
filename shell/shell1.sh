#create a file
#ask user to provide file name
#Check Whether the file present or not
#Then Create a file
#Verify the file Succesfully created or not

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

