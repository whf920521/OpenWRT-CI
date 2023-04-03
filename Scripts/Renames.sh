#!/bin/bash

#批量重名为 型号_日期_格式(SQUASHFS)
for var in $OWRT_TYPE; do
  for file in $(find ./ -type f -iname "*$var*.*"); do
    ext=${file##*.}
    name=$(echo "$var" | tr "[:lower:]" "[:upper:]")_"$OWRT_DATE"_"SQUASHFS"
    mv "$file" "$name.$ext"
  done
done