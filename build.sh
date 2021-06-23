mkdir -p output
docker build --network host -t markwylde/autocodium .
docker run --user $(id -u):$(id -g) -v `pwd`/output:/output --net host markwylde/autocodium sh -c \
  "ls && mv /build/vscodium/VSCode-linux-x64 /output"
