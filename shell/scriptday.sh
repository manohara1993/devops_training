# weekday 1 :monday
# weekday 2 :tuesday
# weekday 3 :wednesday
# weekday 4 :thursday
# weekday 5 :friday
# weekday 6 :saturdayday

list=`cat file1.txt | awk -F "-" '{print $4}'`
echo $list
n=1
for i in $list
do  
    
    echo "weekday $n :" $i
    #$n=$n +1
   ((n=n+1))
     
done