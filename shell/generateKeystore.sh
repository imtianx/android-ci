#!/usr/bin/env sh

#
# 使用 keytool 工具 可批量生成 keystore
#

# 签名配置信息
keystore_name="android.keystore"
new_keystore_alias="android"
new_keystore_keypass="123456"
new_keystore_storepass="123456"

keytool -genkey -alias "${new_keystore_alias}" -keyalg RSA -validity 36500 -keystore "${keystore_name}" -dname "CN=imtianx,OU=imtianx,O=android,L=Hangzhou,ST=Zhejiang,C=CN" -storepass "${new_keystore_storepass}" -keypass "${new_keystore_keypass}"
