FROM python:3.11.5
WORKDIR /app
COPY ./ /app/
EXPOSE 8080

RUN mkdir -p /app/logs

RUN pip3 install -r /app/requirements.txt

RUN chmod a+x /app/run.sh

ENTRYPOINT ["/bin/bash", "/app/run.sh"]