jdefcon = jdefcon or {}
jdefcon.server = jdefcon.server or {}
jdefcon.server.net = jdefcon.server.net or {}

util.AddNetworkString("JDefcon:Net:Sync")
util.AddNetworkString("JDefcon:Net:Message:Player")
util.AddNetworkString("JDefcon:Net:Message:Global")

function jdefcon.server.net.PlyMessage(ply, tbl)
    net.Start("JDefcon:Net:Message:Player")
    net.WriteTable(tbl)
    net.Send(ply)
end

function jdefcon.server.net.ServMessage(tbl)
    net.Start("JDefcon:Net:Message:Player")
    net.WriteTable(tbl)
    net.Broadcast()
end