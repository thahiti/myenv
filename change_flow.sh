#!/bin/bash

# Default Output Device: Yes를 포함한 섹션의 시작점 찾기
current_device=$(system_profiler SPAudioDataType | python3 -c "
import sys
lines = sys.stdin.readlines()
for i, line in enumerate(lines):
    if 'Default Output Device: Yes' in line:
        # 역순으로 찾아서 섹션 헤더 찾기
        for j in range(i-1, -1, -1):
            if lines[j].strip().endswith(':') and not lines[j].strip().startswith(' '):
                print(lines[j].strip().rstrip(':'))
                break
        break
")

echo "Current output device: '$current_device'"

# 장치에 따라 단축어 실행
if [[ "$current_device" == "Moon Boots" ]]; then
    echo "Moon Boots detected - Running start-flow shortcut"
    shortcuts run "start-flow"
else
    echo "Other device detected - Running stop-flow shortcut"
    shortcuts run "stop-flow"
fi

