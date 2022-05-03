#create a script to provide directry name
#chek the directry presence
#if ther give a error 
#if no ther create
read -p "Enter the Directry name: " directry
echo $directry
test -d $directry
if [ $? == 0 ]
then
    echo "Directry already present"
else
    echo "Diectry not present, we can create now"
    mkdir $directry
    if [ $? == 0 ]
    then
        echo "$directry Directry Created"
    else
        echo "Error In Creation"
    fi
fi