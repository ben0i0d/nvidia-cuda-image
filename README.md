# nvidia-cuda-image
## 如果您通过github访问本项目，请注意
1. github上的仓库是由源仓库推送的镜像仓库，是一个镜像仓库
2. 我们的源仓库是 https://eoelab.org:1031/build-image-stacks/nvidia-cuda-image
3. 我们的docker镜像仓库是 https://hub.docker.com/r/ben0i0d/cuda   
4. 对于issue/PR，我们推荐在源仓库上提，这对于我们工作更方便，并且源仓库具有pipeline支持

## 项目梗概
### 目标预期
基于上游项目二次构建基于debian13的镜像以提供更新软件包的支持，如gcc13等
### 目标平台
* OS : debian 13
* ARCH : x86_64

## 上游

**镜像源**
* apt ustc：https://mirrors.ustc.edu.cn/help/debian.html

### 项目上游
NVIDIA https://gitlab.com/nvidia/container-images/cuda
