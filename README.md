# pytroch-docker-cpu
Basic pytorch docker image with minimums tools and only CPU support

# Example docker build command to test image build:
```docker build -t test --build-arg BASE_IMG_NAME=python:3.11.3-slim-buster --build-arg TORCH_VER=2.0.0 --build-arg TORCHAUDIO_VER=2.0.1 --build-arg TORCHVISION_VER=0.15.1 .```