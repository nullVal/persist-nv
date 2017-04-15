function logMessage(message)
	print("LOG: " .. message)
end

AddEventHandler("pers:logMessage", logMessage)