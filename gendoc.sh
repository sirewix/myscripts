#!/bin/sh

#- Script for generating the README.md for this repo:
#- ```sh
#- ./gendoc.sh > README.md
#- ```

#* sed grep

echo '# Miscellaneous scripts'
echo 'Some random useful scripts I wrote over the years'
for cmd in *; do
  [ -x "$cmd" ] || continue
  echo
  echo "## [\`$cmd\`](./$cmd)"
  cat $cmd | grep '^#- ' | cut -c 4-
  deps=$(cat $cmd | grep '^#\* ' | cut -c 4- | tr ' ' '\n' | sort)
  if [ -n "$deps" ]; then
    echo
    echo -n '**Dependencies:** '
    for dep in $deps; do
      echo -n "\`$dep\`, "
    done | sed 's/..$//'
    echo
  fi
done
