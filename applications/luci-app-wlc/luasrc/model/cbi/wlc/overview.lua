
local NXFS = require "nixio.fs"
local CTRL = require "luci.controller.wlc"	-- this application's controller
local DISP = require "luci.dispatcher"
local HTTP = require "luci.http"
local SYS  = require "luci.sys"
local NET = require "luci.model.network"
m = Map("wlc", translate("Wireless Controller"))
NET.init(m.uci)

m.description = "Autoconfigure access points on the network<br/>To create a WPA/WPA2 ssid set a WPA PSK password<br/>To create an 802.1x ssid set a radius server address<br/>To create an open ssid leave the fields empty"

s = m:section( TypedSection, "defaultconfig", translate("Default Settings"), translate("These ssids will be pushed to all access points which don't have specific configuration"))

--s.template = "cbi/tblsection"
s.addremove = true
--s:tab("general", translate("General Settings"), "Settings to be applied to all access points")

s:option(Value,"ssid","SSID")
vlan = s:option(Value,"vlan","Vlan ID (2-14)","15 is reserved for management")
vlan.datatype = "range(2,14)"

wpakey = s:option(Value,"wpakey","WPA PSK")
wpakey.datatype = "wpakey"
wpakey.password = true 

radiusserver = s:option(Value,"radiusserver",translate("Radius server address"))
radiusserver.datatype = "ip4addr"



radiusport = s:option(Value,"radiusport",translate("Radius server port"))
radiusport.datatype = "port"
radiusport.placeholder = "1812"


radiussecret = s:option(Value,"radiussecret",translate("Radius shared secret"))
radiussecret.password = true


return m