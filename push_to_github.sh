#!/usr/bin/env bash
set -e

# 切換到本腳本所在目錄
cd "$(dirname "$0")"

echo "=========================================="
echo "🚀 準備推送專案至 GitHub"
echo "目標倉儲: https://github.com/franzhuang/events_management"
echo "=========================================="

# 1. 若尚未初始化 Git，進行初始化
if [ ! -d ".git" ]; then
  echo "📦 初始化本地 Git 倉儲..."
  git init
  git branch -M main
fi

# 2. 設定遠端 GitHub 倉儲位址（若已存在則更新）
REMOTE_URL="https://github.com/franzhuang/events_management.git"
if git remote | grep -q "^origin$"; then
  echo "🔗 更新遠端 origin 位址..."
  git remote set-url origin "$REMOTE_URL"
else
  echo "🔗 加入遠端 origin 位址..."
  git remote add origin "$REMOTE_URL"
fi

# 3. 確保目前分支為 main
git branch -M main

# 4. 加入檔案至暫存區
echo "📄 正在加入檔案 (git add .)..."
git add .

# 5. 若有變更則建立 commit
if git status --porcelain | grep -q .; then
  COMMIT_MSG="feat: 職場霸凌申訴程序時限管理系統更新 ($(date '+%Y-%m-%d %H:%M:%S'))"
  echo "📝 建立提交: $COMMIT_MSG"
  git commit -m "$COMMIT_MSG"
else
  echo "ℹ️  目前沒有新的檔案變更需要提交。"
fi

# 6. 推送至 GitHub（因遠端先前曾在網頁上傳過 index.html，初次推送覆蓋以本地為準）
echo "📤 正在推送至 GitHub main 分支..."
git push -u origin main --force

echo ""
echo "=========================================="
echo "🎉 推送完成！"
echo "🌐 專案網址: https://github.com/franzhuang/events_management"
echo "=========================================="
