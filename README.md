# VSCodium (one2build)
This repo will allow you to build VSCodium from source, using docker, with just one command.

## Usage
```bash
git clone https://github.com/one2build/vscodium
cd vscodium
./build.sh
```

The builds will be put into an `output` directory where you cloned.

## Find all builds
Builds are all over the place, so you can search for them:

```bash
find .. -iname '*.deb' -or -iname '*.rpm' -or -iname '*.appimage'
```
