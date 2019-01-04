#!/bin/bash
set -x

find . -iname "*.so" -exec md5sum {} + > md5sum.log
echo `md5sum main`  >> md5sum.log
echo `md5sum dwm-mod`  >> md5sum.log



