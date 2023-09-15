FROM eoelab.org:1032/build-image-stacks/nvidia-cuda-image/cuda:12.2.0-base-debain13

LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV NVIDIA_PRODUCT_NAME="CUDA"

# Add entrypoint items
COPY entrypoint.d/ /opt/nvidia/entrypoint.d/
COPY nvidia_entrypoint.sh /opt/nvidia/

RUN apt-get update && apt-get install -y --no-install-recommends cuda-libraries-12-2=12.2.0-1 libnpp-12-2=12.1.1.14-1 \
    cuda-nvtx-12-2=12.2.53-1 libcusparse-12-2=12.1.1.53-1 libcublas-12-2=12.2.1.16-1 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*  && \
# Keep apt from auto upgrading the cublas and nccl packages. See https://gitlab.com/nvidia/container-images/cuda/-/issues/88
    apt-mark hold libcublas-12-2

ENTRYPOINT ["/opt/nvidia/nvidia_entrypoint.sh"]