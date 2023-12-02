FROM golang
COPY . /src
WORKDIR /src/Beetroot/cmd/beetroot
RUN go get
RUN chmod +x go_run.sh
EXPOSE 8080
ENTRYPOINT ["bash", "./go_run.sh"]