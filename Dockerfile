# build nginix from the source 



FROM ubuntu:latest 

ENV USER ="root"
ENV BACKEND ="/home/$USER/lefla"


WORKDIR /ngnix_from_source_docker

#create a user 

EXPOSE 8000





RUN apt-get update -y && \
    apt  install python3-pip -y && \
    python3 --version 

# install fastapi 

RUN pip install fastapi && \
    pip install "uvicorn[standard]"


COPY . /ngnix_from_source_docker



# #run the server 



