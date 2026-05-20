FROM ubuntu:latest
RUN apt-get uptdate
RUN apt install python3 python3-pip git -y
RUN git clone https://github.com/EVT98/bookshopflaskapp.git
WORKDIR bookshopflaskapp
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]