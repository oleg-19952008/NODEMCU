 function a()
 print("123 ");
 srv = net.createConnection(net.TCP, 0)
srv:on("receive", function(sck, c) print(c) end)
srv:connect(80,"1.1.1.1")
srv:on("connection", function(sck, c)
  -- Wait for connection before sending.
  packet= "GET  http://1.1.1.1/login_security.html HTTP/1.1\r\nHost: 1.1.1.1\r\nConnection: keep-alive\r\nAccept: */*\r\n\r\n";
  print("sent data ---"..packet);
  sck:send(packet);
end)
srv:on("receive",function(srv,payload)
print("data - "..payload);
end)
end