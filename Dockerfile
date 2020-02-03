FROM python:3.7

ARG PROJECT project
ARG PROJECT_PATH /opt/app
ARG USER app

RUN groupadd -r $USER && \
    useradd --no-log-init -r -g $USER $USER

# TODO: Install python deps
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    python-virutalenv \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir $PROJECT_PATH
COPY . $PROJECT_PATH
RUN chown -R $USER: $PROJECT_PATH
ENV PATH /opt/app/bin:$PATH

EXPOSE 8080
USER $USER

ENTRYPOINT ["run.sh"]
