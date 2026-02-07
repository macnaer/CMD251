TOKEN="8542028271:AAHcsjxi95Pyn66tyW57ftdKQ5JdgteX3bs"
CHAT_ID="-1003855363681"

STATE="$1"
MESSAGE="$2"

# Вибір емоджі за станом
case "$STATE" in
    OK)
        EMOJI="🟢"
        ;;
    WARNING)
        EMOJI="🟡"
        ;;
    UNKNOWN)
        EMOJI="⚪"
        ;;
    CRITICAL)
        EMOJI="🔴"
        ;;
    *)
        EMOJI="⚙️"
        ;;
esac

FINAL_MSG="[$EMOJI Nagios] $MESSAGE"

curl -s -X POST "https://api.telegram.org/bot${TOKEN}/sendMessage" \
    -d chat_id="${CHAT_ID}" \
    -d parse_mode="Markdown" \
    -d text="$FINAL_MSG" > /dev/null 2>&1