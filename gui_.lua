-- preparing screen
term.clear()
width, height = term.getSize()
term.setCursorPos(1, 1)

term.write("/")
for i = 2, width do
    term.setCursorPos(i, 1)
    term.write("-")
end
term.setCursorPos(width, 1)
term.write("\\")

