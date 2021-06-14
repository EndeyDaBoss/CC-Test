detector = peripheral.wrap("left")
monitor = peripheral.wrap("top")
detectRange = 750


while true do
    local foundPlayers = detector.getPlayersInRange(detectRange)
    local h = 0
    for k,v in pairs(foundPlayers) do
        local pos = detector.getPlayerPos(v)
        monitor.setCursorPos(0, h)
        h = h + 1
        monitor.write(v .." - x" .. pos.x .. " y" .. pos.y .. " z" .. pos.z)
    end
    sleep(1)
    monitor.clear()
end
