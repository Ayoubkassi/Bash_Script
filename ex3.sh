#! /bin/bash



function calcMinMax(){
  for i in `seq 1 $1`
  do
    read -p "Enter number $i : " -t 10 nums[$i]
  done

  min=${nums[1]}
  max=${nums[1]}

  for i in `seq 2 $1`
  do
    if [ ${nums[$i]} -gt $max ]
    then
      let "max=nums[i]"
    elif [ ${nums[$i]} -lt $min ]
    then
      let "min=nums[i]"
    fi
  done

  let "total=max+min"
  let "res=total/2"

  echo "max is      : $max"
  echo "min is      : $min"
  echo "(max+min)/2 : $res"

}

read -p "How much number You will Enter  : " -t 10 len



calcMinMax $len
