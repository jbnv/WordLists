cat Languages.txt | while read -r language
do
  rm $language.json
  source scripts/minify.sh $language > $language.json
done
