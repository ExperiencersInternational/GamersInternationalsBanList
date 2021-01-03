local module = {}
-- GamersInternational's Ban List

-- Kicks known exploiters, trollers and scammers as soon as they join your game
-- Users are unable to appeal once they are banned.
-- The banlist will be updated automatically however we recommend refreshing old servers after a day of uptime

-- Other admin systems are recommend for users to use alongside this

local banList = {
	2,
	3,
	'LYWj5ESTy8Ko',
	'2sKPjwhjMVrM',
}

game.Players.PlayerAdded:Connect(function(player)
	if table.find(banList, player.Name) then
		player:Kick('You have been banned from this game for either: exploiting, scamming or trolling. ' ..
			'Any alternate accounts will be banned as well. ' ..
			"Powered by GamersInternational's Ban List")
	end
end)
return module
