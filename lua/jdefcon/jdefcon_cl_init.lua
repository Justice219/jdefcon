jdefcon.client = jdefcon.client or {}
jdefcon.client.net = jdefcon.client.net or {}
jdefcon.client.data = jdefcon.client.data or {}

net.Receive("JDefcon:Net:Sync", function()
    jdefcon.client.data.defcon = net.ReadInt(32)
end)
net.Receive("JDefcon:Net:Message:Player", function()
    jdefcon.client.net.ChatHandler(net.ReadTable())
end)
net.Receive("JDefcon:Net:Message:Global", function()
    jdefcon.client.net.ChatHandler(net.ReadTable())
end)
print("ran")