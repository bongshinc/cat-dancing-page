#!/bin/bash

echo "🧪 자동화 테스트 시작..."

# 1. 테스트 커밋 생성
TEST_MESSAGE="Auto deploy test $(date +%Y%m%d-%H%M%S)"
echo "console.log('$TEST_MESSAGE');" >> src/App.jsx

# 2. 커밋 및 푸시
git add .
git commit -m "Test: $TEST_MESSAGE"
git push origin main

echo "✅ 테스트 커밋 푸시 완료"
echo "📋 다음 단계:"
echo "1. GitHub Actions 확인: https://github.com/bongshinc/cat-dancing-page/actions"
echo "2. cloudtype.io 배포 확인: https://app.cloudtype.io/@waymaker/bzprojects:main/cat-dancing-page"
echo "3. 사이트 접속 확인: https://web-cat-dancing-page-mbu6gsnrf9f78176.sel4.cloudtype.app/"
echo ""
echo "⏳ 3-5분 후 결과 확인 가능"