#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 [exporter1] [exporter2] ..."
  exit 1
fi

full_compose_file="docker-compose.yml"

rm -rf "$full_compose_file"
cat "docker-compose.template.yml" >> "$full_compose_file"

for dir in "$@"; do
  if [ -d "$dir" ]; then
    compose_part_file="$dir/service.yml"

    if [ -f "$compose_part_file" ]; then
      cat "$compose_part_file" >> "$full_compose_file"
      echo "$dir add to $full_compose_file."
    fi
  else
    echo "$dir neexistuje."
  fi
done
