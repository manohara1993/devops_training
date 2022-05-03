#delete a file if it exist

read -p "Enter the File Name: " filename
echo $filename
test -f $filename
if [ $? == 0 ]
then
    echo "File Exist, We are deleting the file now"
    rm -rf $filename  #rm -rf /  unlink
    if [ $? == 0 ]
    then
        echo "File Deleted"
    else 
        echo "error in deletion"
    fi
else
    echo "File  not Exist"
fi 