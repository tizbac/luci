module("luci.controller.wlc", package.seeall)
local NX   = require "nixio"
local NXFS = require "nixio.fs"
local DISP = require "luci.dispatcher"
local HTTP = require "luci.http"
local UCI  = require "luci.model.uci"
local SYS  = require "luci.sys"
local UTIL = require "luci.util"

function index()
    entry( {"admin", "services", "wlc"}, cbi("wlc/overview"), _("Wireless controller"), 30).dependent=false
end