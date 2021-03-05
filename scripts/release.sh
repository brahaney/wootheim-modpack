#! /bin/bash
read -p "Enter Version Tag: " tag
(cd client && zip -r ../dist/client-$tag.zip ./**)
(cd server && zip -r ../dist/server-$tag.zip ./**)
gh release create $tag ./dist/*-$tag.zip -t "$tag"
