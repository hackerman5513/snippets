#!/bin/bash

output="moves_data.txt"
> "$output"  # Clear file at start

for ((id=0; id<=19800; id++)); do
  echo "Processing moveId=$id..."

  response=$(curl -s -X POST "https://bachatasteps.com/showThisMove_v2_now.php" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" \
    --data "moveIds=$id&user=public&userGroup=friends&lang=en&thisDomain=BachataSteps.com&cdnURL=https%3A%2F%2Fbalazsimibachatasteps.b-cdn.net%2F&userCustomListsNames=&userVelemenyListArrayJSON=&userNowList=&userNextList=&userFavoriteList=&userFixedList=&userPartyList=&userTeachsoonList=&userNotesMovesList=&allowedMylists=2&options=&movesWithTime=.&shouldContainUserMoves=no&allMovesNotes=")

  name=$(echo "$response" | sed -n "s/.*<div id=\"mozdulat-cim-$id\"[^>]*>\([^<]*\)<\/div>.*/\1/p")
  urls=$(echo "$response" | grep 'data-src=' | sed -n 's/.*data-src="\([^"]*\)".*/\1/p')

  if [ -n "$name" ]; then
    echo "$name" >> "$output"
  fi

  if [ -n "$urls" ]; then
    echo "$urls" >> "$output"
  fi

  echo >> "$output"
done

echo "All data saved to $output"

