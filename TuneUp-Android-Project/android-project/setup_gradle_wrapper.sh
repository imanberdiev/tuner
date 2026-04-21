#!/bin/bash
# Run this script once after cloning to download gradle-wrapper.jar
# Or just open in Android Studio - it will handle this automatically

echo "Downloading Gradle wrapper..."
mkdir -p gradle/wrapper
curl -L "https://raw.githubusercontent.com/gradle/gradle/v8.4.0/gradle/wrapper/gradle-wrapper.jar" \
     -o gradle/wrapper/gradle-wrapper.jar
echo "Done! Now you can run: ./gradlew assembleDebug"
