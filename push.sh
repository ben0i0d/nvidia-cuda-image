# auto build image

remote="docker.io/ben0i0d/cuda"

podman push $remote:12.2.0-base-debian12
podman push $remote:12.2.0-runtime-debian12
podman push $remote:12.2.0-devel-debian12