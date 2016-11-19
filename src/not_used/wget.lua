function wget(domain)
socket= nil;
socket= net.createConnection(net.TCP,0);

socket:connect(80,domain);
socket:on("connection",function(socket,payload)
--socket:send("GET "..domain
  -- .." HTTP/1.1\r\n" 
      -- .."Host: "..domain.."\r\n" 
	   -- .."Connection: close\r\n"
      -- .."Accept: */*\r\n"   
	 
      -- .."User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36" 
      -- .."\r\n")
  packet= "GET  "..domain.." HTTP/1.1\r\nHost: "..domain.."\r\nConnection: keep-alive\r\nAccept: */*\r\n\r\n";
  print("sent data ---"..packet);
  socket:send(packet);
end)
socket:on("receive",function(socket,payload)
print("data - "..payload);
end) 
-- socket:on("disconnection", function(socket, payload) 
      -- print('\nDisconnected') 
      
-- end)

end
