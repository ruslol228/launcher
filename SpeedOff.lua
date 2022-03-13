---@diagnostic disable: different-requires
script_name('SpeedOff') -- �������� �������
script_author('Black Water by Alessandro Medici') -- ����� �������
script_description('Command') -- �������� �������

local sampev = require 'samp.events'


function main()
 if not isSampLoaded() or not isSampfuncsLoaded() then return end
 while not isSampAvailable() do wait(100) end

 while true do 
  wait(0)
 end
 

end


local tbl = {93, 94, 95, 96, 97, 98, 2055, 2054, 2056, 2057, 2058, 2059, 2060, 2061 }

function sampev.onShowTextDraw(id, data)
	for i = 1, #tbl do
		if id == tbl[i] and isCharInAnyCar(PLAYER_PED) then
		data.color = -1
		data.zoom = 0.0
		data.letterWidth = 0.0
		data.letterHeight = 0.0
		data.lineWidth = 0.0
		data.lineHeight = 0.0
		return {id, data}
		end
		
	end
end
