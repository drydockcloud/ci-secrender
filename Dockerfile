FROM python:3.7-alpine

RUN apk add git && \
    pip install git+https://github.com/CivicActions/secrender.git#egg=secrender

WORKDIR /src
ENTRYPOINT ["secrender"]
CMD ["--help"]


