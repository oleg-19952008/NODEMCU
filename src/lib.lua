lib={}
local a
function lib.echo_(a)
if a==nil then
a="NULL"
end
print(a.."\n");
end
function split(v)
words= {}    
if v==nil then 
v="null";
end
for y in string.gmatch(v,"(.-)|") do  
   -- print(y)
    table.insert(words, y) 
end
end