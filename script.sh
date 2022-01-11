#!/bin/bash

echo PID $$
ls -ld /proc/self/
ls -la /proc/$$/fd/
echo $$ stdout > /proc/$$/fd/1
echo $$ stderr > /proc/$$/fd/2
