#!/bin/bash

URL="https://web-cat-dancing-page-mbu6gsnrf9f78176.sel4.cloudtype.app/"

echo "🔍 배포 상태 확인 중..."

# HTTP 상태 확인
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS" = "200" ]; then
    echo "✅ 사이트 접속 성공 (HTTP $STATUS)"

    # 콘텐츠 확인
    if curl -s "$URL" | grep -q "댄싱 캣\|Dancing Cat"; then
        echo "🐱 댄싱 캣 콘텐츠 확인됨"
    else
        echo "⚠️ 콘텐츠 확인 실패"
    fi

    # 응답 시간 확인
    RESPONSE_TIME=$(curl -s -o /dev/null -w "%{time_total}" "$URL")
    echo "⏱️ 응답 시간: ${RESPONSE_TIME}초"

    echo ""
    echo "📊 상세 정보:"
    curl -I "$URL" 2>/dev/null | head -5

else
    echo "❌ 사이트 접속 실패 (HTTP $STATUS)"
fi