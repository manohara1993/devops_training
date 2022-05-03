#create multiple Users
#define a array Define a list having mitiplt entries
# userlist=`cat users.txt`
#echo $userlist
# for i in $userlist
# do
# id $i 1>/dev/null 2>/dev/null 
# echo $i 
# if [ $? == 0 ]
# then
#     echo "User Exist"
# else
#     echo "User Dosent exist can be created"
#     useradd $i
#     if [ $? == 0 ]
#     then
#         echo "User Creted Success fully"
#     else
#         echo "Error in creating user"
#     fi
# fi
# done

list="file1.txt file2.txt file3.txt"
for i in $list
do
    echo "Item Name: " $i
    test -f $i
    if [ $? == 0 ] 
    then 
        echo "File already exits"
    else
        echo "File Not Exist Can be Created"
        touch $i
        if [ $? == 0 ]
        then
            echo "File Created Successfully"
        else
            echo "Error in creating file"
        fi 
    fi
done


temp = (user1 user2 user3 )
echo ${temp[1]}
for i in ${temp[@]}
do
   echo $i
   id $id
   for i [$? ==0 ]
   then 
      echo "User already exist"
   else
      echo "user not exist"
      







