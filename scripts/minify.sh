# Minify all of the text files in the current folder.
echo -n "{"
delimiter2=""
ls -1 *.txt | cut -d'.' -f 1 | while read -r filename
  do
  delimiter1=""
  echo -n "$delimiter2\"$filename\":["
  cat $filename.txt | while read -r word
    do
    echo -n "$delimiter1\"$word\""
    delimiter1=","
    done
  echo -n "]"
  delimiter2=","
  done
echo "}"
