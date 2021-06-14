detector = peripheral.wrap("left")
monitor = peripheral.wrap("top")
detectRange = 750


while true do
    local foundPlayers = detector.getPlayersInRange(detectRange)
    local h = 1
    monitor.clear()
    monitor.setTextColor(colors.white)
    monitor.setBackgroundColor(colors.black)
    for k,v in pairs(foundPlayers) do
        local pos = detector.getPlayerPos(v)
        monitor.setCursorPos(1, h)
        h = h + 1
        monitor.write(v .." - x" .. pos.x .. " y" .. pos.y .. " z" .. pos.z)
    end
    sleep(1)
end
