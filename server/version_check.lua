local label = 
[[
  //
  ||       ____                                            ____  ___           
  ||      / __ \____ _______________  ____  ____  _____   / __ )/ (_)___  _____
  ||     / /_/ / __ `/ ___/ ___/ __ \/ __ \/ __ \/ ___/  / __  / / / __ \/ ___/
  ||    / _, _/ /_/ / /__/ /__/ /_/ / /_/ / / / (__  )  / /_/ / / / /_/ (__  ) 
  ||   /_/ |_|\__,_/\___/\___/\____/\____/_/ /_/____/  /_____/_/_/ .___/____/  
  ||                                                            /_/            																													
  ||       				Created by TheRaccoon#0001
  ||]]  
Citizen.CreateThread(function()
	local CurrentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)
	if not CurrentVersion then
		print('^1Raccoons-Blips Version Check Failed!^7')
	end

	function VersionCheckHTTPRequest()
		PerformHttpRequest('https://raw.githubusercontent.com/PeEcEeChIP/version-history/version/raccoons-blips.json', VersionCheck, 'GET')
	end

	function VersionCheck(err, response, headers)
		Citizen.Wait(3000)
		if err == 200 then
			local Data = json.decode(response)
			if CurrentVersion ~= Data.NewestVersion then
				print( label )			
				print('  ||    \n  ||    Raccoons-Blips is outdated!')
				print('  ||    Current version: ^2' .. Data.NewestVersion .. '^7')
				print('  ||    Your version: ^1' .. CurrentVersion .. '^7')
				print('  ||    Please download the lastest version from ^5' .. Data.DownloadLocation .. '^7')
				if Data.Changes ~= '' then
					print('  ||    \n  ||    ^5Changes: ^7' .. Data.Changes .. "\n^0  \\\\\n")
				end
			else
				print( label )			
				print('  ||    ^2Raccoons-Blips is up to date!\n^0  ||\n  \\\\\n')
			end
		else
			print( label )			
			print('  ||    ^1There was an error getting the latest version information, if the issue persists contact TheRaccoon#0001 on Discord.\n^0  ||\n  \\\\\n')
		end
		
		SetTimeout(60000000, VersionCheckHTTPRequest)
	end

	VersionCheckHTTPRequest()
end)
