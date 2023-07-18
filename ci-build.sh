pwd
ls -la ~

wget -q https://go.dev/dl/go1.20.6.windows-amd64.zip
unzip -q go1.20.6.windows-amd64.zip

export PATH=$PATH:$(pwd)/go/bin
export GOROOT=$(pwd)/go

go version
git submodule init
git submodule update
cd go-algorand
./scripts/configure_dev.sh
make

cp ~/go/bin/algod.exe ../algod.exe
cp ~/go/bin/diagcfg.exe ../diagcfg.exe
cp ~/go/bin/goal.exe ../goal.exe
cp ~/go/bin/kmd.exe ../kmd.exe

ls -la