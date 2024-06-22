local function check()
    term.setCursorPos(1, 1)
    local nescessary_libs = {"update.lua"}
    local err = 0

    shell.run("mkdir commands")

    for _, lib  in pairs(nescessary_libs) do
        local file, err = io.open("commands/" .. lib)
        if not file then
            print("[-] Missing update command")
            err = 1
        else
            io.close(file)
            print("[+] Update exists")
        end
    end

    if not err then
        term.clear()
    end
end

term.clear()
check()

-- local options = {"Update CCGUI" = "update.lua"}

-- local funtion render_main()
--     for i = 0, __len(options) do
        
--     end
-- end
