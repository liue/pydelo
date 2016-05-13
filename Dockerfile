FROM daocloud.io/python:2.7
ADD pip_requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN mkdir /code
WORKDIR /code
COPY . /code
EXPOSE 9998

CMD ["python", "/code/init.py"]
CMD ["python", "/code/manage.py"]