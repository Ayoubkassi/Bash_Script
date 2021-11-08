#! /bin/bash



#recursive approach
function factoriel(){
  res=1
  for i in `seq 1 $1`
  do
    let "res *=i"
  done

  echo "factoriel($1) = $res"

}

read -p "Enter a Number  : " -t 10 n

factoriel $n
