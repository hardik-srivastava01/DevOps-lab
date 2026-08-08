#!/usr/bin/env bash

SOURCE_DIR="$(pwd)"
DEST_DIR="$HOME/DevOps-Lab/Troubleshooting/02-Problem/Screenshots"

mkdir -p "$DEST_DIR"

find "$SOURCE_DIR" -maxdepth 1 -type f -name '0*' -exec cp -t "$DEST_DIR" -- {} +

echo "Copied files starting with 0:"
find "$DEST_DIR" -maxdepth 1 -type f -name '0*' -printf '%f\n'
