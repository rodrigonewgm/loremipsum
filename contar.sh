#!/bin/bash

shopt -s nullglob  

files=(loremipsum-*.txt)

if [ ${#files[@]} -eq 0 ]; then
  echo "No se encontraron archivos loremipsum-*.txt en el directorio."
  exit 1
fi

for f in "${files[@]}"; do
  if [ -f "$f" ]; then
    lineas=$(wc -l < "$f")
    echo "$f tiene $lineas líneas."
  else
    echo "No se pudo leer $f"
  fi
done

