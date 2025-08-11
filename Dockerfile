FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget unzip curl
RUN wget -O /usr/local/bin/cf https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 && chmod +x /usr/local/bin/cf
RUN curl -L -o /tmp/v.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && unzip /tmp/v.zip -d /usr/local/bin/ && chmod +x /usr/local/bin/v2ray /usr/local/bin/v2ctl
COPY c.json /etc/v2ray/c.json
COPY st.sh /st.sh
RUN chmod +x /st.sh
CMD ["/st.sh"]
