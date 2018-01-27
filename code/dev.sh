CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go build -a -installsuffix cgo -o main-arm .
docker build -t main-arm -f Dockerfile.arm .
docker tag main-arm $DOCKER_ID_USER/main-arm

