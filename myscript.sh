#! /bin/bash

#test some commands


#variables
#name="Ayoub Kassi"

#two methods to print variable name

#echo "Hello $name"
#echo "Hello ${name}"

#read input (programation is input output)

#read -p "Enter Your Name : " name
#read -p "Enter Your Password : " -s  pass

# -e to use \n and \t ... in your echo 

#conditions

#if [ "$pass" == "12345" ]
#then
#    echo -e "\nHello Mr Kassi"
#else
#    echo -e "\nSir b7alk"
#fi


#other exemple

#if [ "$name" == "ayoubkassi" ]
#then
#    echo -e "\nHello Mr Kassi"
#elif [ "$name" == "aminesahraoui" ]
#then
#    echo -e "\nHello Mr Sahraoui"
#else
#    echo -e "\nSir b7alk Ya weed l3ebd"
#fi


#comparaison

#val1 -eq val2 return true if the values are equal
#val1 -ne val2 return true if the values are not equal
#val1 -gt val2 return true if val1 is greater than val2
#val1 -lt val2 return true if val1 is less than val2
#val1 -le val2 return true if val1 is less than or equal val2
#val1 -ge val2 return true if val1 is greater than or eaqual val2


#num1=1
#num2=2

#if [ "$num1" -ge "$num2" ]
#then
#    echo "True"
#else
#    echo "False"
#fi



#file conditioning


# -d file | return True if the file is a directory
# -e file | return True if the file exists  
# -f file | return True if the provided string is a file
# -g file | return True if the group is a set on a file
# -r file | return True if the file is readable

#filename="./test/HELP.md"

#if [ -f  "$filename" ]
#then
#    echo "This is File"
#else
#    echo "This is not a file"
#fi


#case statement

read -p "Are you 21 or over? Y/N : " answer
case "$answer" in
    [yY] | [yY][eE][sS])
        echo "You can have a beer :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry , no drinking"
        ;;

    *)
        echo "Please Enter y/yes or n/no"
        ;;
esac


#simple foor loop


#names="Ayoub Amine Othmane"
#for name in $names
#    do
#        echo "Hello ${name}"
#    
#done


#loop for file names
#FILES=$(ls *.txt)
#NEW="new"
#for FILE in $FILES
#    do 
#        echo "$FILE"
#        mv $FILE $NEW-$FILE
#done


#functions

#function sayHello(){
#echo "Hello Ayoub"
#}

#sayHello

#function With Params

#function Hi(){
#    echo "Hello $1 $2"
#    echo "Script name is : ${0}"
#    echo "Number of params are :${#}"
#    echo "All params are : ${*}" #or ${@}
#}

#Hi "Ayoub" "Kassi"


#create folder and write some files into it

mkdir hello 
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"


