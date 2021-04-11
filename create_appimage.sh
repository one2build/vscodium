#!/bin/bash
if [[ "$VSCODE_ARCH" == "x64" ]]; then
  cd ..
  export DOCKER_BUILD=1
  bash -e src/resources/linux/appimage/pkg2appimage VSCodium-AppImage-Recipe.yml
fi
