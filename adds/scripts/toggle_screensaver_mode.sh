#!/bin/sh

CONF_FILE="/mnt/onboard/.kobo/Kobo/Kobo eReader.conf"
SCREENSAVER_FOLDER="/mnt/onboard/.kobo/screensaver"
SCREENSAVER_BACKUP="/mnt/onboard/.kobo/screensaver_off"

# Make sure backup directory exists for first-time use
if [ ! -d "$SCREENSAVER_BACKUP" ] && [ -d "$SCREENSAVER_FOLDER" ]; then
  mv "$SCREENSAVER_FOLDER" "$SCREENSAVER_BACKUP"
  echo "First run: disabled custom screensaver"
  exit 0
fi

# Toggle based on presence of folder
if [ -d "$SCREENSAVER_FOLDER" ]; then
  mv "$SCREENSAVER_FOLDER" "$SCREENSAVER_BACKUP"
  echo "Custom screensaver OFF"
else
  mv "$SCREENSAVER_BACKUP" "$SCREENSAVER_FOLDER"
  echo "Custom screensaver ON"
fi

# Toggle ShowBookCover in Kobo eReader.conf
if grep -q "ShowBookCover=true" "$CONF_FILE"; then
  sed 's/ShowBookCover=true/ShowBookCover=false/' "$CONF_FILE" > "${CONF_FILE}.tmp" && mv "${CONF_FILE}.tmp" "$CONF_FILE"
else
  sed 's/ShowBookCover=false/ShowBookCover=true/' "$CONF_FILE" > "${CONF_FILE}.tmp" && mv "${CONF_FILE}.tmp" "$CONF_FILE"
fi
