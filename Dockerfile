FROM node:14

ENV SHOULD_BUILD="yes"
ENV SHOULD_DEPLOY="no"
ENV BUILD_ARCH="x64"
ENV BUILDARCH="x64"
ENV CI_WINDOWS="false"
ENV VSCODE_ARCH="x64"
ENV OS_NAME="linux"

RUN apt-get update && apt-get upgrade -y && apt-get install -y git jq imagemagick curl build-essential pkg-config libx11-dev libxkbfile-dev libsecret-1-dev fakeroot rpm vim desktop-file-utils

RUN mkdir /build
WORKDIR /build

RUN chown -R node:node /build

USER node

RUN git clone https://github.com/VSCodium/vscodium.git /build/vscodium

WORKDIR /build/vscodium
RUN rm create_appimage.sh
ADD create_appimage.sh create_appimage.sh

RUN ./get_repo.sh

WORKDIR /build/vscodium/vscode

RUN yarn

WORKDIR /build/vscodium

RUN ./build.sh
