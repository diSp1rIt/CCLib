-- preparing screen
term.clear()
local width, height = term.getSize()
term.setCursorPos(1, 1)

term.write("/")
for i = 2, width do
    term.setCursorPos(i, 1)
    term.write("-")
end
term.setCursorPos(width, 1)
term.write("\\")

for i = 2, height do
    term.setCursorPos(1, i)
    term.write("|")
    term.setCursorPos(width, i)
    term.write("|")
end

term.setCursorPos(1, height)
term.write("\\")
for i = 2, width do
    term.setCursorPos(i, height)
    term.write("-")
end
term.setCursorPos(width, height)
term.write("/")

local options = {"Update CCGUI"}

-- local funtion render_main()
--     for i = 0, __len(options) do
        
--     end
-- end
