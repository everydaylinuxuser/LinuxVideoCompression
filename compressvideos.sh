#!/bin/bash

# Check if directory is passed as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

DIRECTORY=$1

# Check if the provided argument is a valid directory
if [ ! -d "$DIRECTORY" ]; then
  echo "Error: Directory $DIRECTORY does not exist."
  exit 1
fi

# Create a compressed folder if it doesn't exist
COMPRESSED_DIR="$DIRECTORY/compressed"
mkdir -p "$COMPRESSED_DIR"

# Path to the downloaded ffmpeg AppImage
FFMPEG_PATH="./ffmpeg-7.0.1-i686-static/ffmpeg"

# Loop through all video files in the directory
for FILE in "$DIRECTORY"/*.{mp4,mkv,avi,mov,flv}; do
  if [ -f "$FILE" ]; then
    BASENAME=$(basename "$FILE")
    OUTPUT_FILE="$COMPRESSED_DIR/$BASENAME"
    
    # Compress the video using ffmpeg AppImage
    "$FFMPEG_PATH" -i "$FILE" -vcodec libx265 -crf 28 "$OUTPUT_FILE"
    
    if [ $? -eq 0 ]; then
      echo "Compressed $FILE to $OUTPUT_FILE"
    else
      echo "Failed to compress $FILE"
    fi
  fi
done

echo "Compression completed. Compressed files are in $COMPRESSED_DIR"
