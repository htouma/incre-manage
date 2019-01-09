#!/bin/bash

cd $1

# 今月のブランチでないなら作成して切り替え
git branch |grep -q $(date +%Y%m) || git checkout -b $(date +%Y%m)


commit_push(){
  git add -A
  git commit -m "$(date +%d_%H:%M)"
  git push origin $(date +%Y%m%d)
  git push origin $(date +%Y%m) 2>&1 >> /var/log/git-push.log
}

# statusでwarking clean(変更なし)でなければ関数commit_pushを実行
git status | grep -q 'working directory clean' || commit_push
