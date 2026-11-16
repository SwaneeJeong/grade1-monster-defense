#!/bin/sh
# 저장소 SwaneeJeong/grade1-monster-defense 가 만들어진 뒤에 실행하세요.
# (Pickle의 GitHub 앱에는 저장소 생성 권한이 없어서, 저장소는 사용자가 직접 만들어야 합니다.)
set -eu
cd "$(dirname "$0")"

git init -q -b main 2>/dev/null || true
git add -A
git -c user.name="SwaneeJeong" \
    -c user.email="SwaneeJeong@users.noreply.github.com" \
    commit -q -m "초1 수학·낱말 디펜스 게임 (single-file HTML5)" || true

git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/SwaneeJeong/grade1-monster-defense.git
git push -u origin main

echo ""
echo "푸시 완료."
echo "이제 저장소 Settings > Pages > Source: Deploy from a branch / main / (root) 를 켜면"
echo "https://swaneejeong.github.io/grade1-monster-defense/ 에서 열립니다."
