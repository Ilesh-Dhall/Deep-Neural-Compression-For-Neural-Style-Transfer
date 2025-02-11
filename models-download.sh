#!/bin/bash

# Define the destination directory
MODEL_DIR="models"
mkdir -p $MODEL_DIR

# Function to download files from Google Drive
download_from_gdrive() {
    FILE_ID=$1
    FILE_NAME=$2
    echo "Downloading $FILE_NAME..."
    curl -L -o $MODEL_DIR/$FILE_NAME "https://drive.google.com/uc?export=download&id=$FILE_ID"
}

download_from_gdrive "1R6JZDLPvdjrEKUNUcnRxcd6nLOhbdZj7" "pruned_model.pth"
download_from_gdrive "1zBqwEFexnGKZet0Mitt3jRPVw3BlzuOA" "vgg19-d01eb7cb.pth"

echo "All models downloaded successfully!"
