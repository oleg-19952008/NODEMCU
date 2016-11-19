require("lib"); 
w_={}
 l = lib;
function w_.wifi_()
l.echo_("wi-fi activate....");
wifi.setmode(wifi.SOFTAP)
wifi.ap.config("test___","12345678") ---for wifi point
--wifi.sta.config("test___","12345678")
l.echo_("Set config wi-fi");
cfg_wifi = {}  
  cfg_wifi.ip="192.168.2.1";
   cfg_wifi.netmask="255.255.255.0"
   cfg_wifi.gateway="192.168.2.1" 
wifi.ap.setip(cfg_wifi);
end
