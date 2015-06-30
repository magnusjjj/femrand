hook.Add("PlayerInitialSpawn", "femrand_spawn", function (ply)
	if (SERVER) then
		if not ply:IsBot() then
			print("new user")
			name = "femrand/" .. string.gsub(ply:SteamID(), ':', '-') .. ".txt"
			print(name)
			file.CreateDir( "femrand" )
			if not file.Exists(name, "DATA") then
				file.Write( name, "hello" )
				print "should create new file"
				models = {"female1","female2","female3","female4","female5","female6","kleiner","male1","male2","male3","male4","male5"}
				
				modelname = models[ math.random( 2 ) ]
				print(modelname)
				ply:PS_GiveItem(modelname)
				ply:PS_EquipItem(modelname)
				--Frame = vgui.Create( "DFrame" )
				--Frame:SetPos( 5, 5 )
				--Frame:SetSize( 300, 150 )
				--Frame:SetTitle( "Name window" )
				--Frame:SetVisible( true )
				--Frame:SetDraggable( false )
				--Frame:ShowCloseButton( true )
				--Frame:MakePopup()
			else
				
			end
		end
	end
end)