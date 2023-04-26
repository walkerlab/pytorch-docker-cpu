ARG BASE_IMG_NAME

FROM ${BASE_IMG_NAME}

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    wget \
    vim \
    curl \
    zip \
    && \
    apt-get clean

ARG TORCH_VER
ARG TORCHAUDIO_VER
ARG TORCHVISION_VER

RUN pip3 install torch==${TORCH_VER} torchvision==${TORCHVISION_VER} torchaudio==${TORCHAUDIO_VER} --index-url https://download.pytorch.org/whl/cpu
WORKDIR /src