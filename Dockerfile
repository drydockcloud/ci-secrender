FROM python:3.7-alpine
LABEL exposed.command.single=secrender

COPY secrender.sh /
COPY requirements.txt /
RUN pip install -r /requirements.txt

RUN apk add git && \
    pip install git+https://github.com/CivicActions/secrender.git@v0.5.0#egg=secrender

VOLUME /results
WORKDIR /src
ENTRYPOINT ["/secrender.sh"]
CMD ["--help"]


