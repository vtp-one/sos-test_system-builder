FROM scratch as backend-source
FROM python:3.10 as backend-runtime

ENV BACKEND_HOST=0.0.0.0
ENV BACKEND_PORT=42000
ARG BACKEND_TARGET=None
ARG BACKEND_BRANCH=main

# Cache Bust
#ARG CACHE_BUST_BACKEND

COPY --from=backend-source . /opt/app

RUN pip install -r /opt/app/server/requirements.txt

WORKDIR /opt/app/server

CMD ["/opt/app/server/run.sh"]
