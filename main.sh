declare -ir size=10

for i in $(seq 0 $((size - 1)))
do
  for j in $(seq 0 $((size - 1)))
  do
    (( ((i == 0) || (i == size - 1)) || ((j == 0) || (j == size - 1)) || (i == j) || (i == size - j - 1) )) && printf "#" || printf " "
  done
  echo
done