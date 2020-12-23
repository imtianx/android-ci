# android-ci



## jenkins 安装（war）

```
# 下载 war
wget https://mirrors.tuna.tsinghua.edu.cn/jenkins/war-stable/2.138.2/jenkins.war

# 后台启动，默认，8080 端口
nohup java -jar jenkins.war


```

## linux 安装 android sdk

@2020-12-23 目前使用 commandlinetools 安装，可使用脚本 [install_android_sdk2.sh](/shell/install_android_sdk2.sh)

```
# sdk platform  28
curl https://raw.githubusercontent.com/imtianx/android-ci/master/shell/install_android_sdk.sh -o  install_android_sdk.sh --progress 
chmod a+x install_android_sdk.sh
./install_android_sdk.sh

# set Env /etc/profile
ANDROID_HOME=/home/android/sdk
export PATH=${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:$PATH
source /etc/profile
# 或者：export PATH=/home/android/sdk/tools:/home/android/sdk/platform-tools:$PATH

# 如果 profile 修改出错，导致系统命令无效，可用下面命令重置😂
export PATH=/usr/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/bin:/sbin

```



