FROM python:3.7-alpine
LABEL exposed.command.single=secrender

COPY requirements.txt /
RUN pip install -r /requirements.txt

RUN apk add git && \
    pip install -e git+https://github.com/CivicActions/secrender.git#egg=secrender

WORKDIR /src
ENTRYPOINT ["secrender"]
CMD ["--help"]


