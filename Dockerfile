FROM python:3.8
ARG DIR_WORK=/work
WORKDIR ${DIR_WORK}
COPY requirements.txt ${DIR_WORK}/
RUN apt-get update && apt-get install -y libgomp1 graphviz
RUN pip install --upgrade pip && \
    pip install setuptools==57.5.0 && \
    pip install -r requirements.txt
