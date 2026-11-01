#!/usr/bin/env bash
# warm-vessel-236 — Infra engineer · containers · currently building things · edge computing
# 拿来练手的小仓库
set -euo pipefail

file="${1:-data.txt}"
sort "$file" | uniq -c | sort -rn | awk '{{printf "%4d  %s\n", $1, substr($0, index($0,$2))}}'
echo "---"
echo "$(sort -u "$file" | wc -l) unique / $(wc -l < "$file") lines"
