FROM scratch as frontend-source
FROM python:3.10 as frontend-runtime

ENV BACKEND_HOST=0.0.0.0
ENV BACKEND_PORT=42000
ARG FRONTEND_TARGET=None
ARG FRONTEND_BRANCH=main

# Cache Bust
#ARG CACHE_BUST_FRONTEND

COPY --from=frontend-source . /opt/app

RUN pip install -r /opt/app/server/requirements.txt

WORKDIR /opt/app/server

CMD ["/opt/app/server/run.sh"]