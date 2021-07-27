ARG BASE_IMAGE="fishtownanalytics/dbt:0.19.2"

FROM $BASE_IMAGE

COPY .devcontainer/profiles.yml /root/.dbt/profiles.yml
COPY .devcontainer/requirements.txt ./
COPY .devcontainer/set-up-creds.sh /root/.dbt/

RUN pip install --requirement requirements.txt
RUN apt-get update \
	&& apt-get install -y sudo curl git \
	&& curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash \
	&& sudo apt-get install git-lfs \
	&& apt-get clean

COPY .deployment/SimbaSparkODBC/simbaspark_2.6.16.1019-2_amd64.deb ./
RUN apt-get install libsasl2-modules
RUN apt-get install libsasl2-modules-gssapi-mit
RUN dpkg -i simbaspark_2.6.16.1019-2_amd64.deb 

# RUN  apt-get install libsasl2-dev
# RUN pip install cryptography
# RUN apt-get install g++
RUN apt-get install unixodbc-dev -y 
RUN pip install "dbt-spark[ODBC]"

ENTRYPOINT ["/bin/bash", "-c"]