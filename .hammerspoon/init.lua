-- 오디오 장치 변경 감지 및 스크립트 실행
local function audioDeviceCallback(event)
    if event == "dOut" then  -- Default Output 장치 변경됨
        -- 2초 지연 후 스크립트 실행 (시스템이 완전히 전환될 때까지)
        hs.timer.doAfter(2, function()
            hs.execute("~/myenv/change_flow.sh")
        end)
    end
end

-- 오디오 장치 watcher 시작
hs.audiodevice.watcher.setCallback(audioDeviceCallback)
hs.audiodevice.watcher.start()

-- 설정 리로드 알림
hs.alert.show("Hammerspoon Config Loaded - Audio Watcher Active")
