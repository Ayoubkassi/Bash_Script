#! /bin/bash

#function accept 3params , two numbers and operation
function calcul(){
  case $3 in
    "+")
      echo "The result is : $[$1+$2]"
      ;;
    "-")
      echo "The result is : $[$1-$2]"
      ;;
    "*")
      echo "The result is : $[$1*$2]"
      ;;
    "/")
      echo "The result is : $[$1/$2]"
      ;;

    *)
      echo "Invalid Operator !!"
      ;;

  esacs
}

read -p "Enter the first Number  : " -t 10 n1
read -p "Enter the second Number : " -t 10 n2
read -p "Enter the operator (+,-,*,/) : " -t 10 op



calcul $n1 $n2 $op
