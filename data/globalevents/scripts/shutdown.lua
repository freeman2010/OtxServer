function onTime(interval)
	return prepareShutdown(5)
end

function prepareShutdown(minutes)
	if(minutes <= 0) then
		addEvent(close, 1*1000)
		return false
	end

	if(minutes == 1) then
		doBroadcastMessage("Server Save will take place in " .. minutes .. " minutes, please disconnect!")
		for _, pid in pairs (getPlayersOnline()) do
			doPlayerSave(pid, true)
		end
	elseif(minutes <= 3) then
		--doSaveServer()
		doBroadcastMessage("[Saving]: Server Save will take place in " .. minutes .. " minutes, please disconnect!")
	else
		doBroadcastMessage("Server Save will take place in " .. minutes .. " minutes.")
	end

	shutdownEvent = addEvent(prepareShutdown, 60000, minutes - 1)
	return true
end


function close()
	doSaveServer()
	addEvent(function()
		doSetGameState(GAMESTATE_CLOSED)
		addEvent(global, 15*1000)
	end, 5*1000)
end

function global()
	doSaveServer()
	doSetGameState(GAMESTATE_SHUTDOWN)
end
