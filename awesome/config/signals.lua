-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:activate { context = "mouse_enter", raise = false }
end)

client.connect_signal("request::manage", function(c)
    -- do something
    c:to_secondary_section()
end)

tag.connect_signal("property::selected", function (t)
    local selected = tostring(t.selected) == "true"
    if selected then
        local mouseX = mouse.coords().x
        local mouseY = mouse.coords().y
        for k,v in pairs(t.screen.all_clients) do
            if v.first_tag.index==t.index and mouseX>=v.x and mouseX<=(v.x+v.width) and mouseY>=v.y and mouseY<=(v.y+v.height) then
                client.focus = v
                v:raise()
            end
        end
    end
end)

client.connect_signal("unmanage", function() focus_on_last_in_history(mouse.screen) end)

function focus_on_last_in_history( screen )
    local c = awful.client.focus.history.get(screen, 0)
    if not (c == nil) then
        client.focus = c
        c:raise()
    end
end
