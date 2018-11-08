#! /bin/sh

# https://developer.android.com/studio/
SDK_TOOLS_VERSION=4333796

COMPILE_SDK_VERSION=28
BUILD_TOOLS_VERSION=28.0.3

ANDROID_HOME=/home/android/sdk
SDK_NAME=sdk-tools-linux-${SDK_TOOLS_VERSION}.zip

# download sdk tools
if [ ! -f ${SDK_NAME} ]; then
  wget http://dl.google.com/android/repository/${SDK_NAME};
fi
rm -rf ${ANDROID_HOME}
mkdir -p ${ANDROID_HOME}
unzip -qd ${ANDROID_HOME} ${SDK_NAME}
rm -rf ${SDK_NAME}

cd ${ANDROID_HOME}

# update and install android platform ,tools
(yes | ./tools/bin/sdkmanager --no_https --update)
(yes | ./tools/bin/sdkmanager --no_https --update) && \
(yes | ./tools/bin/sdkmanager --no_https "build-tools;${BUILD_TOOLS_VERSION}") && \
(yes | ./tools/bin/sdkmanager --no_https "platform-tools") && \
(yes | ./tools/bin/sdkmanager --no_https "platforms;android-${COMPILE_SDK_VERSION}")


