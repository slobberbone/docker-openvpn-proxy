#!/bin/bash

while true
do
  dig @ns1.google.com -t txt o-o.myaddr.l.google.com +short
done
