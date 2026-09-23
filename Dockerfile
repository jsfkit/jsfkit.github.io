FROM ghcr.io/getzola/zola:v0.23.6-alpine

WORKDIR /project
EXPOSE 8000

CMD ["serve", "--interface", "0.0.0.0", "--port", "8000", "--base-url", "localhost"]
