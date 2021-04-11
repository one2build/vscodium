docker build --network host -t markwylde/autocodium .
docker run -v `pwd`/output:/output --net host markwylde/autocodium sh -c \
  "ls && cp /build/vscodium/VSCodium/codium_* /output && cp /build/vscodium/out/VSCodium-* /output"
