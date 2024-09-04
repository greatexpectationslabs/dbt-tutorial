FROM apache/airflow:2.3.0
USER root
RUN apt-get update \
&& apt-get install -y --no-install-recommends \
build-essential libopenmpi-dev \
&& apt-get autoremove -yqq --purge \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
USER airflow
RUN pip install airflow-provider-great-expectations