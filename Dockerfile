FROM shadowsocks/shadowsocks-libev

ENV DNS_ADDRS    8.8.8.8,8.8.4.4

CMD exec ss-server \
      -s $SERVER_ADDR \
      -p $SERVER_PORT \
      -k ${PASSWORD:-$(hostname)} \
      -m $METHOD \
      -t $TIMEOUT \
      -d $DNS_ADDRS \
      -u \
      $ARGS
