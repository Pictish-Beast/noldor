#
# Demo App
# https://docs.docker.com/engine/getstarted/step_four/#step-2-build-an-image-from-your-dockerfile
# sudo docker build -t docker-whale .

FROM docker/whalesay:latest
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay
