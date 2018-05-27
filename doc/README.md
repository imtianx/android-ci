
# docker 安装及使用

## 1、参考
[docker 入门到实践](https://github.com/yeasy/docker_practice)

[docker store](https://store.docker.com/)

[docker hub](https://hub.docker.com/explore/)


## 2、docker 常用命令

```
docker search gitlab

docker pull docker.io/gitlab/gitlab-ce

docker run -d docker.io/gitlab/gitlab-ce

docker ps

docker images
docker image ls
docker image ls -q        // -q 显示 id, -f 过滤， -a 显示中间层镜像
docker images -f dangling=true    // 显示虚悬镜像
docker images --format "table {{.ID}}\t{{.Respository}}\t{{.Tag}}"

docker image rm container_id        // 可使用id（长/短）镜像名，摘要，

docker exec -it container_id /bin/bash     // 进入容器，exit退出

``` 

## 3、dockerFile 制作

