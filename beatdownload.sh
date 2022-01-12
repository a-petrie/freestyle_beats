#!/bin/bash

touch .downloaded
diff .yturls .downloaded | awk 'NR>1{ print $2 }' | xargs -d"\n" youtube-dl -x --audio-format mp3
diff .yturls .downloaded | awk 'NR>1{ print $2 }' >> .downloaded

git add .yturls
git commit -m "adding new beats"
git push origin main
