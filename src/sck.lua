 require("led"); 
for_sent= "null";
print("Socket activated !!!")
socket = net.createServer(net.TCP,28800)
socket:listen(2511,function (c)
c:on("receive",function(c,pl) 
--print("data recived - "..pl);
led.test(pl);
end)
c:send(for_sent);
end)

 