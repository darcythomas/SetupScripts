#!/usr/bin/env bash

echo apt-getting

apt-get update 

apt-get -y upgrade

apt-get -y install ubuntu-desktop

apt-get -y install vnc4server