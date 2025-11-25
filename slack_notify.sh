cat > slack_notify.sh << 'EOF'
#!/usr/bin/env bash
set -euo pipefail

: "${SLACK_WEBHOOK_URL:?SLACK_WEBHOOK_URL environment variable must be set}"

app_name="$1"
environment="$2"      # sandbox or prod
status="$3"           # success or failed
summary="$4"
release_notes="$5"

status_emoji="❌ Failed"
if [[ "$status" == "success" ]]; then
  status_emoji="✅ Success"
fi

date_str=$(date -u +"%Y-%m-%d %H:%M UTC")

message="🚀 *Publish Event Detected*\n\n"
message+="*SDK:* ${app_name}\n"
message+="*Environment:* ${environment}\n"
message+="*Status:* ${status_emoji}\n"
message+="*Date:* ${date_str}\n\n"
message+="*Summary:*\n${summary}\n\n"
message+="*Release Notes:*\n${release_notes}"

curl -X POST \
  -H "Content-Type: application/json" \
  --data "{\"text\":\"$(echo "$message" | sed 's/\"/\\\"/g')\"}" \
  "$SLACK_WEBHOOK_URL"
EOF

chmod +x slack_notify.sh
