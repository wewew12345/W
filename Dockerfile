FROM mysterysd/wzmlx:latest

RUN sudo apt install python3 python3-pip
RUN pip3 install -r requirements-cli.txt

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
