FROM ben0i0d/cuda:12.2.0-runtime-debian12

ENV LIBRARY_PATH /usr/local/cuda/lib64/stubs

RUN apt-get update && apt-get install -y --no-install-recommends cuda-cudart-dev-12-2=12.2.53-1 cuda-command-line-tools-12-2=12.2.0-1 \
    cuda-minimal-build-12-2=12.2.0-1 cuda-libraries-dev-12-2=12.2.0-1 cuda-nvml-dev-12-2=12.2.81-1 cuda-nvprof-12-2=12.2.60-1 \
    libnpp-dev-12-2=12.1.1.14-1 libcusparse-dev-12-2=12.1.1.53-1 libcublas-dev-12-2=12.2.1.16-1 cuda-nsight-compute-12-2=12.2.0-1 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*  && \
# Keep apt from auto upgrading the cublas and nccl packages. See https://gitlab.com/nvidia/container-images/cuda/-/issues/88
    apt-mark hold libcublas-dev-12-2=12.2.1.16-1
