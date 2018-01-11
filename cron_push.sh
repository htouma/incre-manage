#!/bin/bash

cd $1

# 日付ブランチでないなら作成して切り替え
git branch |grep -q $(date +%Y%m%d) || git checkout -b $(date +%Y%m%d)


commit_push(){
  git add -A
  git commit -m "$(date +%H:%M)"
  git push origin $(date +%Y%m%d)
}

# statusでwarking clean(変更なし)でなければ関数commit_pushを実行
git status | grep -q 'working directory clean' || commit_push
