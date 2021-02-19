FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
ENV INPUT = ""
RUN apt-get update
RUN apt-get -y install python3-pip python3-cairo python3-tk python3-pygraphviz libglpk-dev
WORKDIR /dryvr
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
# CMD ["sh", "-c", "python3 main.py ./input/daginput/input_thermo.json"]
# CMD [ "python3", "main.py"]
ENTRYPOINT python3 main.py ${INPUT}