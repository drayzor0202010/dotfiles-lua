
local uname = io.popen("uname"):read("*l")

if uname == "Linux" then
    dofile("linux/aliases.lua")
    dofile("linux/funcs.lua")
elseif uname == "Android" then
    dofile("termux/aliases.lua")
    dofile("termux/funcs.lua")
end

print("Dotfiles Lua carregados com sucesso!")
