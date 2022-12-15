QR_CODE_FILENAME="shared-secret-qr-code-new.svg"

AUTH='otpauth://totp/Rhea%20Myers?secret=CA7OELGCBZDYE3XRVOPXJWPWWLPIGPNOP6ZCWMBB3H5VKXC32XYA&issuer=Shared%20Secret%20%282020%29'

qrencode -t SVG --size 100 --margin 0 --output "${QR_CODE_FILENAME}" "${AUTH}"
