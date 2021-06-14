detector = peripheral.find("playerDetector")
monitor = peripheral.find("monitor")
detectRange = 2000

monitor.setBackgroundColor(colors.black)
monitor.setTextColor(colors.white)
monitor.setCursorBlink(false)

while detector.isPlayersInRange(detectRange) do
    local players = detector.getPlayersInRange(detectRange)
    local h = 1
    monitor.clear()
    for k,v in pairs(players) do
        local pos = detector.getPlayerPos(v)
        monitor.setCursorPos(1, h)
        h = h + 1
        monitor.write(v .." - x" .. pos.x .. " y" .. pos.y .. " z" .. pos.z)
    end
    sleep(1)
end
