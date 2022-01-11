#!/bin/bash

echo PID $$
whoami
ls -la /proc/$$/fd/
echo $$ stdout > /proc/$$/fd/1
echo $$ stderr > /proc/$$/fd/2
