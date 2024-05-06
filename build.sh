# auto build image

remote="docker.io/ben0i0d/cuda"

arch="amd64"


podman build --arch=$arch -t $remote:12.2.0-base-debian12 base
podman build --arch=$arch -t $remote:12.2.0-runtime-debian12 runtime
podman build --arch=$arch -t $remote:12.2.0-devel-debian12 devel
