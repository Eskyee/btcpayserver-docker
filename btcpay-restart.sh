#!/bin/bash

. /etc/profile.d/btcpay-env.sh

cd "`dirname $BTCPAY_ENV_FILE`" 
docker-compose -f $BTCPAY_DOCKER_COMPOSE restart -t "${COMPOSE_HTTP_TIMEOUT:-180}"
