-- Server
AddEventHandler('onResourceStart', function(resource)
	if resource == 'persist-nv' then
		logMessage("Persist-nv loaded.")
	end
end)