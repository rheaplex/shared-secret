#!/bin/bash
QR_CODE_FILENAME="shared-secret-qr-code.svg"
ISSUER="Shared%20Secret%20%282020%29"
ID="Rhea%20Myers"
SECRET="$(echo $1 | sha256sum | cut -f 1 -d ' ' | xxd -r -p - | base32 | cut -f 1 -d '=')"
AUTH="otpauth://totp/${ID}?secret=${SECRET}&issuer=${ISSUER}"

if [ -f "${QR_CODE_FILENAME}" ]; then
    echo "QR Code file exists: ${QR_CODE_FILENAME}"
    echo "Not overwriting."
    exit 0
fi

qrencode -t SVG --size 10 --margin 0 --output "${QR_CODE_FILENAME}" "${AUTH}"
