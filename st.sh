#!/bin/bash
/usr/local/bin/v2ray -config /etc/v2ray/c.json &
/usr/local/bin/cf tunnel --url tcp://localhost:10000 --sni 5g.vietteltelecom.vn
