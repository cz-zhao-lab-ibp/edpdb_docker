FROM centos:6

LABEL version="v13a"
LABEL maintainer="Yiwei Gao, gaoyw@ibp.ac.cn"
LABEL description="EdPDB Docker Image"

COPY ./edpdb /edpdb
COPY ./entrypoint.sh /

RUN yum update -y \
    && yum install -y compat-readline5-devel.i686 compat-readline5-devel.x86_64 compat-readline5.i686 compat-readline5.x86_64 compat-libf2c-34.i686 compat-libf2c-34.x86_64 more grep \
    && yum clean all \
    && mkdir /edpdb_wd \
    && ln -sf /edpdb/edpdb_v13a /bin/edpdb \
    && ln -sf /edpdb/edpdb_v13a_fat /bin/edpdb_fat

ENTRYPOINT ["sh", "./entrypoint.sh"]
