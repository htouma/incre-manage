#!/bin/bash

cd $1

# リモート日付ブランチ内容をローカルmasterへ
git pull origin $(date +%Y%m):master

find ./ -user root |xargs chown apache
