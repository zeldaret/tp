# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

RUN dpkg --add-architecture i386 && apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential cmake python3-pip wine wine32

USER vscode

# Install DevkitPPC
WORKDIR /tmp
RUN wget https://apt.devkitpro.org/install-devkitpro-pacman
RUN chmod +x ./install-devkitpro-pacman
RUN yes | sudo ./install-devkitpro-pacman
RUN sudo chmod +x ./install-devkitpro-pacman
RUN sudo ./install-devkitpro-pacman
RUN sudo dkp-pacman -Syu --noconfirm
WORKDIR /etc
RUN sudo ln -sf /proc/self/mounts mtab
RUN sudo dkp-pacman -S --noconfirm gamecube-dev wii-dev