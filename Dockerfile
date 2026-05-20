FROM ubuntu:latest
RUN apt-get uptdate
RUN apt install python3 python3-pip git -y
RUN git clone https://github.com/utrains/bookshopflaskapp.git
WORKDIR bookshopflaskapp
RUN pip3 install -r requirements.txt