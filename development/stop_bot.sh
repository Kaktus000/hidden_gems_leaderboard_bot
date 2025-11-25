#!/bin/bash

: '
Usage:

1. Make executable (only once):
    chmod +x development/stop_bot.sh

2. Stop the bot:
    ./development/stop_bot.sh
'

# ----------------------
# Config
# ----------------------
REPO_DIR="/home/ks/hosted-services/Hidden-Gems-Leaderboard-Bot/repo"
BOT_SCRIPT="$REPO_DIR/hidden_gems_leaderboard_bot.py"

# ----------------------
# Stop bot
# ----------------------
PID=$(pgrep -f "$BOT_SCRIPT")

if [ -n "$PID" ]; then
    echo "Stopping bot (PID $PID)..."
    kill -TERM "$PID"
    sleep 2
    echo "Bot stopped."
else
    echo "No bot process found."
fi
