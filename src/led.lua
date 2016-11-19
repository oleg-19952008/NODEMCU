--this is led module
-- bright range 0..1023
 led={}
 require("lib")
function set_led(pin,bright,pin2,bright2,pin3,bright3)
-- print(pin);
pin = tonumber (pin);
bright = tonumber (bright);
pin2 = tonumber (pin2);
bright2 = tonumber (bright2);
pin3 = tonumber (pin3);
bright3 = tonumber (bright3);
--print(""..pin.."|"..bright.."|"..pin2.."|".."|"..bright2.."|"..pin3.."|"..bright3)
if pin == nil then 
pin = 1;
end
if pin2 == nil then 
pin2 = 1;
end
if pin3 == nil then 
pin3 = 1;
end
if bright == nil then 
bright = 1;
end
if bright2 == nil then 
bright2 = 1;
end
if bright3 == nil then 
bright3 = 1;
end
pwm.setup(pin, 255, bright)
pwm.setup(pin2, 255, bright2)
pwm.setup(pin3, 255, bright3)
pwm.start(pin)
pwm.start(pin2)
pwm.start(pin3) 
end
function led.test(packet)
split(packet); 
set_led(words[1],words[2] ,words[3],words[4],words[5],words[6])
for_sent= "ok";
end
