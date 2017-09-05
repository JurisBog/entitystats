timer.Create("DrawEntityStats",600,0,function()
  if not file.Exists("entitystats", "DATA") then
  	file.CreateDir("entitystats")
  end

  local t = 0
  local info = ""
  for k,v in pairs(ents.GetAll()) do
  	local class = v:GetClass()
  	local owner = v:GetOwner()
  	if IsValid(owner) then
  		owner = owner:GetName()
  	else
  		owner = "NULL"
  	end
  	info = info..class.." - "..owner.."\n"
  	t = t + 1
  end
  local out = t .. "\n" .. info
  -- print("entityStats/"..os.time()..".txt")
  file.Write("entitystats/"..os.time()..".txt", out)
end)
