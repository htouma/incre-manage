#!/bin/bash

cd $1

# リモート日付ブランチ内容をローカルmasterへ
git pull origin $(date +%Y%m%d):master

find ./ -user root |xargs chown apache
