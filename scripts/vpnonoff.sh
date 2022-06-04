#!/bin/bash

if pgrep -x openvpn > /dev/null;then
	echo Conectado;
else
	echo Desconectado;
fi
