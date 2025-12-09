#!/usr/bin/env bash
# Once upon a time... Bash script
birth=1428
death=1476
location="Transylvania"
weaknesses=("Sunlight" "Garlic")

age=$((death - birth))
echo "$location age: $age"
for w in "${weaknesses[@]}"; do
  echo " - $w"
done
