jdefcon = jdefcon or {}
jdefcon.server = jdefcon.server or {}
jdefcon.server.net = jdefcon.server.net or {}
jdefcon.server.data = jdefcon.server.data or {}
jdefcon.server.defcon = jdefcon.server.defcon or {}

hook.Add("PlayerSay", "JDefconChat", function(ply, text)
    local args = string.Explode(" ", text)
    if !args[1] == "!defcon" then return end
    args[1] = nil
    if !args[2] then return end
    
    local defcon = tonumber(args[2])
    if !defcon then 
        jdefcon.server.net.PlyMessage(ply, {
            color1 = Color(255, 0, 0),
            head = "[Defcon]",
            color2 = Color(255, 255, 255),
            msg = "Invalid defcon level."
        })
    return end

    jdefcon.server.defcon.Change(defcon, ply)
    jdefcon.server.net.ServMessage({
        color1 = Color(255, 0, 0),
        head = "[Defcon]",
        color2 = Color(255, 255, 255),
        msg = "Defcon has been changed to " .. defcon .. "."
    })
end)