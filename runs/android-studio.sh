#!/bin/bash

# Dependencies
sudo apt-get install -y wget unzip
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 

# Download Last Android Studio
base_url="https://redirector.gvt1.com/edgedl/android/studio/ide-zips"
version="2024.1.1.11"
download_url="$base_url/$version/android-studio-$version-linux.tar.gz"

wget $download_url -O android-studio.tar.gz

# Install
sudo mkdir -p /opt/android-studio
sudo tar -xvzf android-studio.tar.gz -C /opt/android-studio --strip-components=1
