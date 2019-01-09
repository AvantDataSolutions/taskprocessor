FROM amd64/python:3.6.8-jessie
RUN apt-get update && apt-get install -y curl gcc g++

COPY taskprocessor.py /run/taskprocessor.py
COPY setup.py /run/setup.py

WORKDIR /run
RUN pip3 install .

CMD python3 -m taskprocessor
