local appid = '595259120882417664'
local asset = 'lion'

function SetRP()
    local name = GetPlayerName(PlayerId())
    local id = GetPlayerServerId(PlayerId())

    SetDiscordAppId(appid)
    SetDiscordRichPresenceAsset(asset)
    SetDiscordRichPresenceAssetText('HeavenRP')
    SetRichPresence('(' .. GetNumberOfPlayers() .. ' / 32)')
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10)
    SetRP()
  end
end)
