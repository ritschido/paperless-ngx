#!/usr/bin/env bash

#Einbinden über PAPERLESS_POST_CONSUME_SCRIPT und chmod a+x nicht vergessen.

TOKEN="botxxxxxxx"
SENDPHOTO="https://api.telegram.org/$TOKEN/sendphoto"
SENDTEXT="https://api.telegram.org/$TOKEN/sendMessage"
SEND_ID="123456789"

curl \
-F "chat_id="$SEND_ID"" \
-F "photo=@"${DOCUMENT_THUMBNAIL_PATH}"" \
-F "caption="'Neues Dokument im DMS. http://paperless.local/api/documents/'${DOCUMENT_ID}'/preview/'"" \
$SENDPHOTO

curl \
-F "chat_id="$SEND_ID"" \
-F "text="'POSTEINGANG bearbeiten: http://paperless.local/documents/'${DOCUMENT_ID}''"" \
$SENDTEXT


