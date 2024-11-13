docker buildx build ./ -t t113:latest --network host \
    --build-arg HTTP_PROXY=http://127.0.0.1:7890 \
    --build-arg HTTPS_PROXY=http://127.0.0.1:7890
