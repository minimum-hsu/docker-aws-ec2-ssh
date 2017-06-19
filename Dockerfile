FROM minimum/awscli:centos

LABEL maintainer s5550055.minimum@gmail.com

RUN useradd user

USER user

WORKDIR /home/user

COPY entrypoint.sh /home/user/

ENTRYPOINT ["/bin/bash", "/home/user/entrypoint.sh"]

