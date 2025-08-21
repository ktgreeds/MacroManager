_addon.name = 'MacroManager'
_addon.version = '1.0'
_addon.commands = {'mm'}
local MacroBook = nil
local MacroPage = nil


windower.register_event('addon command', function(...)
    local args = {...}
    if args[1]=="save" then
        MacroBook = args[2]
        MacroPage = args[3]
    elseif args[1]=="load" then
        if MacroBook and MacroPage then
        windower.send_command('input /macro book '..MacroBook..'; wait 0.1;input /macro set '..MacroPage)
        end
    end
end)
