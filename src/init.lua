function r(v)
require(v);
print("Loaded "..v)
end
r("lib");
local l = lib;
--r("wifi_");
wifi.setmode(wifi.STATION)
name_wifi = "Zzx";
wifi.sta.config(name_wifi, "789512345")
l.echo_("Connect to wifi "..name_wifi)
wifi.sta.connect()
function res()
node.restart()
end
l.echo_("Loading libs.....\nDone")
l.echo_("esp8266\n\rInit.lua v0.2.1")
l.echo_("Memory free - "..node.heap() / 1024 .." KB");
dofile("sck.lua");
