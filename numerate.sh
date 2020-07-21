#!/bin/bash
# rename and numerate the files by arg placement
i=0;
for input in "$@"; do
  ((i=i+1))
  file=$(ls "${input##*/}")
  echo ${i} ${file}
  mv "${file}" "${i} ${file}"
  done
