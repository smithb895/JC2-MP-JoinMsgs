-- Shows a message in-game when a player joins the server
-- Author: Anzu

function joinMsg(args)
	Chat:Broadcast(args.player:GetName().." joined the server", Color(153, 255, 255))
	
end

function partMsg(args)
	Chat:Broadcast(args.player:GetName().." left the server", Color(74, 74, 74))
	
end

Events:Subscribe("PlayerJoin", joinMsg)
Events:Subscribe("PlayerQuit", partMsg)