-- Load Extensions
local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local grid = require "mjolnir.bg.grid"


-- Set grid size
grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDWIDTH = 8
grid.GRIDHEIGHT = 8

HALFWIDTH = grid.GRIDWIDTH / 2
HALFHEIGHT = grid.GRIDHEIGHT / 2

-- a helper function that returns another function that resizes the current window
-- to a certain grid size.
local gridset = function(x, y, w, h)
    return function()
        cur_window = window.focusedwindow()
        grid.set(
            cur_window,
            {x=x, y=y, w=w, h=h},
            cur_window:screen()
        )
    end
end

local mash = {"ctrl", "shift"}

hotkey.bind(mash, 'q', gridset(0, 0, HALFWIDTH, grid.GRIDHEIGHT)) -- left half
hotkey.bind(mash, 's', grid.maximize_window) -- fullscreen
hotkey.bind(mash, 'z', gridset(1, 1, 6, 6)) -- center
hotkey.bind(mash, 'd', gridset(HALFWIDTH, 0, HALFWIDTH, grid.GRIDHEIGHT)) -- right half
hotkey.bind(mash, 'n', grid.pushwindow_nextscreen) -- move window to next screen