local ESX = nil

ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent("kicsiafaszod")
AddEventHandler("kicsiafaszod", function()
	player = ESX.GetPlayerFromId(source)
	local playerJob = player.job.name
if playerJob == "police" or playerJob == "swat" or playerJob == "sheriff"  then
--if playerJob == "police"  then     --      If only police can use it
TriggerClientEvent("pd:OpenMenu", source)
else
	TriggerClientEvent('esx:showNotification', source, _U('no_police'))
end
end)

RegisterServerEvent('ntfy_badge:open')
AddEventHandler('ntfy_badge:open', function(ID, targetID, type)
	local identifier = ESX.GetPlayerFromId(ID).identifier
	local _source 	 = ESX.GetPlayerFromId(targetID).source
	local show       = false
	local _PED_ID = PED_ID

	MySQL.Async.fetchAll('SELECT firstname, lastname, job, dateofbirth, sex FROM users WHERE identifier = @identifier', {['@identifier'] = identifier},
	function (user)
		if (user[1] ~= nil) then
			MySQL.Async.fetchAll('SELECT type FROM user_licenses WHERE owner = @identifier', {['@identifier'] = identifier},
			function (licenses)
				if type ~= nil then
					for i=1, #licenses, 1 do
						if type == 'driver' then
							if licenses[i].type == 'drive' then
								show = true
							end
						end
					end
				else
					show = true
				end

				if show then
					local array = {
						user = user,
						licenses = licenses
					}
					TriggerClientEvent('ntfy_badge:open', _source, array, type)
					TriggerClientEvent( 'ntfy_badge:shot', _source, source )
				end
			end)
		end
	end)
end)
