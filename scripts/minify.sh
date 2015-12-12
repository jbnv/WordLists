echo -n "{"
delimiter2=""
ls -1 $1*.txt | while read -r filename
  do
  delimiter1=""
  echo -n "$delimiter2'$filename':["
  cat $filename | while read -r word
    do
    echo -n "$delimiter1'$word'"
    delimiter1=","
    done
  echo -n "]"
  delimiter2=","
  done
echo "}"
