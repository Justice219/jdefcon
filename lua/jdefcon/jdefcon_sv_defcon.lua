jdefcon = jdefcon or {}
jdefcon.server = jdefcon.server or {}
jdefcon.server.net = jdefcon.server.net or {}
jdefcon.server.data = jdefcon.server.data or {}
jdefcon.server.defcon = jdefcon.server.defcon or {}

function jdefcon.server.defcon.Change(val, ply)
    // TODO: Check if the player is allowed to change the defcon
    check = jdefcon.server.Auth(ply)
    if !check then return end

    // TODO: Check if the val is valid
    if !tonumber(val) then return end
    if val < 0 or val > 5 then return end

    jdefcon.server.data.defcon = val
    jdefcon.server.defcon.Sync()
end

// Make a function to send the defcon to the client
function jdefcon.server.defcon.Sync(ply)
    if ply then
        net.Start("JDefcon:Net:Sync")
        net.WriteInt(jdefcon.server.data.defcon, 32)
        net.Send(ply)
    return end

    net.Start("JDefcon:Net:Sync")
    net.WriteInt(jdefcon.server.data.defcon, 32)
    net.Broadcast()
end

function jdefcon.server.defcon.Get()
    return jdefcon.server.data.defcon
end

// CONSOLE COMMANDS
concommand.Add("jdefcon_set", function(ply, cmd, args)
    if !jdefcon.server.Auth(ply) then return end
    if !args[1] then return end
    
    jdefcon.server.defcon.Change(args[1], ply)
end)
concommand.Add("jdefcon_get", function(ply, cmd, args)
    if !jdefcon.server.Auth(ply) then return end
    print(jdefcon.server.defcon.Get())
end)