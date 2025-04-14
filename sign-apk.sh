
#!/bin/bash

APK_PATH="app-release-unsigned.apk"
SIGNED_APK_PATH="app-release-signed.apk"
KEYSTORE_PATH="limbus_keystore.jks"
ALIAS_NAME="limbus_alias"
STOREPASS="123456"
KEYPASS="123456"

echo "Signing APK..."
apksigner sign \
  --ks $KEYSTORE_PATH \
  --ks-key-alias $ALIAS_NAME \
  --ks-pass pass:$STOREPASS \
  --key-pass pass:$KEYPASS \
  --out $SIGNED_APK_PATH \
  $APK_PATH
