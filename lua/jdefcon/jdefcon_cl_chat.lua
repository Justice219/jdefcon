jdefcon.client = jdefcon.client or {}
jdefcon.client.net = jdefcon.client.net or {}

function jdefcon.client.net.ChatHandler(tbl)
    local color1 = tbl.color1
    local head = tbl.head
    local color2 = tbl.color2
    local msg = tbl.msg
    chat.AddText(color1, head, " ", color2, msg)
end
