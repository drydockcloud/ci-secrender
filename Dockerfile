FROM python:3.9
LABEL exposed.command.single=secrender

COPY secrender.sh /
COPY requirements.txt /
RUN pip install -r /requirements.txt

RUN apk add git && \
    pip install git+https://github.com/CivicActions/secrender.git@v0.5.2#egg=secrender

VOLUME /results
WORKDIR /src
ENTRYPOINT ["/secrender.sh"]
CMD ["--help"]


