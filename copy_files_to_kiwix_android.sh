#!/usr/bin/env bash

for f in *; do # for all files in current directory
    if [ -d ${f} ]; then # if it is a directory
        if [ -f "$f/info.json" ] && [ -d "$f/res" ]; then #that has a json file and icon set
            mkdir -p "kiwix-android/branded/src/$f/res" #make directory
            cp -v "$f/info.json" "kiwix-android/branded/src/$f/info.json" # copy json over
            cp -vr "$f/res" "kiwix-android/branded/src/$f" #copy icons over
        fi
    fi
done
