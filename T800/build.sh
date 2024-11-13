docker build ./ -t t800:latest --network host \
    --build-arg HTTP_PROXY=http://192.168.8.74:7890 \
    --build-arg HTTPS_PROXY=http://192.168.8.74:7890