#!/bin/bash

TELEGRAM_BOT_TOKEN=""
CHAT_ID=""
MESSAGE="LV RYZEN KVM 1GB 有货了！"
URL="https://my.frantech.ca/cart.php?a=add&pid=1411"

HTML_SOURCE=$(curl -s $URL)
if grep -Fq "Out of Stock" <<< $HTML_SOURCE;
then
	exit 0
else
	curl -X POST \
        -H 'Content-Type: multipart/form-data' \
        -F chat_id=$CHAT_ID \
        -F text="$MESSAGE" \
        -F disable_notification=true \
        https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage > /dev/null 2>&1
	exit 0
fi
