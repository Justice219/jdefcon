jdefcon = jdefcon or {}

if SERVER then
    include("jdefcon/jdefcon_sv_init.lua")
    include("jdefcon/jdefcon_sv_net.lua")
    include("jdefcon/jdefcon_sv_defcon.lua")
    include("jdefcon/jdefcon_sv_chat.lua")

    AddCSLuaFile("jdefcon/jdefcon_cl_init.lua")
    AddCSLuaFile("jdefcon/jdefcon_cl_chat.lua")
end
if CLIENT then
    include("jdefcon/jdefcon_cl_init.lua")
    include("jdefcon/jdefcon_cl_chat.lua")

end