
#!/bin/bash

KEYSTORE_NAME="limbus_keystore.jks"
ALIAS_NAME="limbus_alias"
STOREPASS="123456"
KEYPASS="123456"
DNAME="CN=Limbus, OU=TRPG, O=AI, L=Seoul, S=KR, C=KR"

if [ ! -f "$KEYSTORE_NAME" ]; then
  echo "Generating keystore..."
  keytool -genkeypair -v \
    -keystore $KEYSTORE_NAME \
    -alias $ALIAS_NAME \
    -keyalg RSA \
    -keysize 2048 \
    -validity 10000 \
    -storepass $STOREPASS \
    -keypass $KEYPASS \
    -dname "$DNAME"
else
  echo "Keystore already exists."
fi
