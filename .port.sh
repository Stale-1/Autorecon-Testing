#!/bin/bash
fuser -k base/tcp && /etc/init.d/dropbear restart
