FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y fortune cowsay netcat && \
    apt-get clean

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
