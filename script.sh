#!/bin/bash

echo The script PID is $$
echo It is run by $(whoami)
ls -la /proc/$$/fd/
echo $$ stdout > /proc/$$/fd/1
echo $$ stderr > /proc/$$/fd/2
echo self stdout > /proc/self/fd/1
echo self stderr > /proc/self/fd/2
