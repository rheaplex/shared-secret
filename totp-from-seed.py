# pip install pyotp

import pyotp
import time

totp = pyotp.TOTP(
    'CA7OELGCBZDYE3XRVOPXJWPWWLPIGPNOP6ZCWMBB3H5VKXC32XYA===='
)
now = totp.now()
print(now)
