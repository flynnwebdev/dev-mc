for f in ~/projects/morning-challenges/term_one/*.rb
do
  name=$(basename ${f%.*})
  echo
  echo "CREATE: $name"
  git checkout -b $name
  cp $f .
  git add *.rb
  git commit -m "Initial commit - $name"
  git push -uf origin $name
  git checkout master
  echo "DONE!"
  echo
  sleep 2
done

