local repository = "https://raw.githubusercontent.com/diSp1rIt/CCLib/main/"

local function check()
    term.setCursorPos(1, 1)
    local nescessary_libs = {"update.lua", "install.lua", "remove.lua"}

    shell.run("mkdir commands")

    for _, lib  in pairs(nescessary_libs) do
        local file, err = io.open("commands/" .. lib, "r")
        if not file then
            print("[-] Missing " .. lib)
            print("[ ] Starting download")
            local file, err = io.open("commands/".. lib, "w")
            if err then
                print("Couldn't open file")
            else
                local res = http.get(repository .. "commands/" .. lib) 
                file:write(res.readAll())
                io.close(file)
                print("[+] Command downloaded successfully")
            end
        else
            io.close(file)
            print("[+] " .. lib .. " exists")
        end
    end
    print("Continue in 5 sec...")
    sleep(5)
end

term.clear()
check()

