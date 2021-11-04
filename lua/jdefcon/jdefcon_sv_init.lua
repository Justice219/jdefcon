jdefcon = jdefcon or {}
jdefcon.server = jdefcon.server or {}
jdefcon.server.net = jdefcon.server.net or {}
jdefcon.server.data = jdefcon.server.data or {}
jdefcon.server.defcon = jdefcon.server.defcon or {}

// Locals 
jdefcon.server.data.CurrentDefcon = 0 // 1-6 Defcons

function jdefcon.server.Auth(ply)
    if ply:IsSuperAdmin() then
        return true
    else
        return false
    end
end
