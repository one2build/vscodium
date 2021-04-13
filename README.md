# VSCodium (one2build)
This repo will allow you to build VSCodium from source, using docker, with just one command.

## Usage
```bash
git clone https://github.com/one2build/vscodium
cd vscodium
./build.sh
```

The builds will be put into an `output` directory where you cloned.

You can install the deb by running:

```
sudo dpkg -i output/codium_*.deb
sudo apt-mark hold codium
```

## Find all builds
Builds are all over the place, so you can search for them:

```bash
find .. -iname '*.deb' -or -iname '*.rpm' -or -iname '*.appimage'
```

## Prevent auto updating
If your OS package manager comes with a `codium` package, then it will probably
try and "update" it when their version periodically.

Prevent this by running:

```
sudo apt-mark hold codium
```
