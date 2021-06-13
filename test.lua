detector = peripheral.wrap("left")
monitor = peripheral.wrap("top")
detectRange = 750


while true do
    local foundPlayers = detector.getPlayersInRange(detectRange)
    for k,v in pairs(foundPlayers) do
        local pos = detector.getPlayerPos(v)
        local w, h = monitor.getSize()
        monitor.setCursorPos(w, h)
        monitor.write(v .." - x" .. pos.x .. " y" .. pos.y .. " z" .. pos.z)
    end
    sleep(1)
    monitor.clear()
end
