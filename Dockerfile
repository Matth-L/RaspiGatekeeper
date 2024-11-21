FROM debian:bookworm-slim

RUN apt update && \
    apt install -y --no-install-recommends openssh-server git vim \
    ansible systemctl && \

RUN mkdir /var/run/sshd
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
