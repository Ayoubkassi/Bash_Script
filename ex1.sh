#! /bin/bash


read -p "Entrez un nombre de seconds : " -t 20 seconds
#calcul hour,min,secons
let "hour = seconds / 3600"
let "min = seconds % 3600 /60 "
let "second = seconds % 60"




#write function that print : and add 0 if we do have just one digit
function PrintRightDigit(){
  if [ "${#1}" == "1" -a "$2"="no" ]
  then
    echo -e "0$1\c"
  elif [ "${#1}" == "1" ]
  then
    echo -e ":0$1\c"
  else
    echo -e ":$1\c"
  fi
}

echo -e "Time in HH:MM:SS Format is : \c"
PrintRightDigit $hour
PrintRightDigit $min
PrintRightDigit $second "no"
echo ""
