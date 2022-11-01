#!/bin/bash

if [[ -f "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/Info.plist" ]]; then
    extension_version=$(/usr/bin/defaults read "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/Info" CFBundleVersion)
else
    extension_version="Not Installed"
fi

echo "<result>$extension_version</result>"

exit 0