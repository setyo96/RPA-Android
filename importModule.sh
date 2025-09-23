#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "📂 Mulai proses import/restore..."

# 1. Import module package Termux (usr)
echo "📦 Restore package module Termux..."
cd ~
cp ~/storage/downloads/termux-full-backup.tar.gz ~/
cd /data/data/com.termux/files/
tar -xzvf ~/termux-full-backup.tar.gz -C /data/data/com.termux/files/

# 2. Import environment variable (bashrc)
echo "⚙️ Restore environment (.bashrc)..."
cd ~
cp ~/storage/downloads/bashrc-backup ~/.bashrc
source ~/.bashrc || true

# 3. Import Android SDK
echo "📦 Restore Android SDK..."
cd ~
tar -xzvf ~/storage/downloads/android-sdk-backup.tar.gz -C ~/

echo "✅ Proses restore selesai!"
