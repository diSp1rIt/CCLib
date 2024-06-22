local repository = "https://raw.githubusercontent.com/diSp1rIt/CCLib/main/"

local function check()
    term.setCursorPos(1, 1)
    local nescessary_libs = {"update.lua"}

    shell.run("mkdir commands")

    for _, lib  in pairs(nescessary_libs) do
        local file, err = io.open("commands/" .. lib, "r")
        if not file then
            print("[-] Missing update command")
            print("[ ] Starting download")
            local file, err = io.open("command/".. lib, "w")
            if err then
                print("Couldn't open file")
            else
                local res = http.get(repository .. "command/update.lua") 
                file.write(res.readAll())
                io.close(file)
                print("[+] Update command downloaded successfully")
            end
        else
            io.close(file)
            print("[+] Update exists")
        end
    end
end

term.clear()
check()

-- local options = {"Update CCGUI" = "update.lua"}

-- local funtion render_main()
--     for i = 0, __len(options) do
        
--     end
-- end
