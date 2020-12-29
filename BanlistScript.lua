-- GamersInternational's Ban List

-- Kicks known exploiters, trollers and scammers as soon as they join your game
-- Users are unable to appeal once they are banned.
-- The banlist is often updated every week so check for updates every week.

-- The install script does not currently work

local banList = {
	"John Doe",
	"Player",
}

game.Players.PlayerAdded:Connect(function(player)
	print('Player joined')
	for i, v in pairs(banList) do
		if player.Name == v then
			player:Kick('You have been banned from this game for either: exploiting, scamming or trolling. ' ..
				'Any alternate accounts will be banned as well. ' ..
				"Powered by GamersInternational's Ban List")
		end
	end
end)