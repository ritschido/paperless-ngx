#!/usr/bin/env bash



TOKEN="botxxxxxxx"
SENDPHOTO="https://api.telegram.org/$TOKEN/sendphoto"
SENDTEXT="https://api.telegram.org/$TOKEN/sendMessage"
SEND_ID="123456789"


#curl -v "https://api.telegram.org/bot""$TOKEN""/sendPhoto?chat_id=""$USER_ID" -H 'Content-Type: multipart/form-data' -F photo=@"${6}"
curl \
-F "chat_id="$SEND_ID"" \
-F "photo=@"${DOCUMENT_THUMBNAIL_PATH}"" \
-F "caption="'Neues Dokument im DMS. http://paperless.local/api/documents/'${DOCUMENT_ID}'/preview/'"" \
$SENDPHOTO

curl \
-F "chat_id="$SEND_ID"" \
-F "text="'POSTEINGANG bearbeiten: http://paperless.local/documents/'${DOCUMENT_ID}''"" \
$SENDTEXT


