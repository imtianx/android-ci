# android-ci


## linux 安装 android sdk

```
# sdk platform  28
curl https://raw.githubusercontent.com/imtianx/android-ci/master/shell/install_android_sdk.sh -o  install_android_sdk.sh --progress 
chmod a+x install_android_sdk.sh
./install_android_sdk.sh

# set Env /etc/profile

NADROID_HOME=
export PATH=${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:$PATH

source /etc/profile

# 如果 profile 修改出错，导致系统命令无效，可用下面命令重置😂
export PATH=/usr/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/bin:/sbin

```
