FROM ubuntu

ADD loopy.sh /root/

ENTRYPOINT /root/loopy.sh
