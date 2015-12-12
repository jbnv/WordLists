cat Languages.txt | while read -r language
do
  rm $language.txt
  source scripts/minify.sh $language > $language.txt
done
