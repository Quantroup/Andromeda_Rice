-- Popup clock-menu thingy --
--< By quantrop (or quantroup) >--

-- Needed dependencies ------------------
local gears 	= require("gears")
local awful 	= require("awful")
local beautiful = require("beautiful") -- watch out for spelling
local wibox     = require("wibox")
local naughty	= require("naughty")
-- --------------------------------------
-- beautiful variables init -----------------
beautiful.init("~/.config/awesome/theme.lua")
-- Available vars: (these are just the potencially used ones)
-- beautiful.bg_normal
-- beautiful.fg_normal
-- beautiful.border_focus (we use this as an attention color)
-- beautiful.border_width
-- ------------------------------------------

local popclock = {} -- To avoid nil errors

-- Widget vars --
local cal = wibox.widget.calendar.month(os.date('*t'))

local grtxt = wibox.widget{
text   = '==Pop-up menu==',
valign = "center",
align  = "center",
widget = wibox.widget.textbox,
}


-- The grid that puts all the widgets together
local popgrid = wibox.widget {
    homogeneous   = true,
    spacing       = 1,
    min_cols_size = 20,
    min_rows_size = 20,
    layout        = wibox.layout.grid,
}
--                    widget row column row_span col_span
popgrid:add_widget_at(grtxt ,1  ,1     ,1       , 1)
popgrid:add_widget_at(cal   ,2  ,1     ,10      , 1)

-- popup mechanism
local popup = awful.popup {
      ontop   = true,
      visible = false, 
      shape   = gears.shape.rectangle,
      offset = { y = 5, },
      border_width = beautiful.border_width,
      border_color = beautiful.border_focus,
      widget = popgrid,
      }


function popclock.turn_on()
        if popup.visible then
        	popup.visible = not popup.visible
else
        
                        awful.placement.top(popup, { margins = { top = 30 }, parent = awful.screen.focused() })
                        popup.visible = true
                end
        end

-- This converts popclock into a callable function (i think)
return setmetatable(popclock, { __call = function(_, ...)
end })
