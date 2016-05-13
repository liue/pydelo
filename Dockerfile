FROM daocloud.io/python:2.7
ADD pip_requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN mkdir /demo
WORKDIR /demo
COPY . /demo
COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh
EXPOSE 8000

CMD /demo/docker-entrypoint.sh