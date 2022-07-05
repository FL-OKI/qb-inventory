if Config.Utility.Framework == "NEW" then
    QBCore = exports[Config.Utility.CoreName]:GetCoreObject()
elseif Config.Utility.Framework == "OLD" then 
        local QBCore = nil
        Citizen.CreateThread(function()
        while QBCore == nil do 
            TriggerEvent(Config.Utility.CoreName, function(obj)QBCore = obj end) 
            Citizen.Wait(200) 
        end 
    end) 
else
    print("The Framework '", Config.Utility.Framework, "' is not support, please change in config.lua")
end

local citizenid = nil
RegisterNetEvent('m-Backpack:Client:Smallbackpack', function(smallbackpackid)
	local job = QBCore.Functions.GetPlayerData().job.name
	local gang = QBCore.Functions.GetPlayerData().gang.name
    local playerPed = PlayerPedId()
    if IsEntityDead(playerPed) then return Notify(Language.Dead, "error") end
    if IsPedSwimming(playerPed) then return Notify(Language.Water, "error") end
    if Config.Utility.NeedJob == true then
        if job ~= Config.Utility.JobName then
            Notify(Language.NoJob)
            return false
        end
    end
    if Config.Utility.NeedGang == true then
        if job ~= Config.Utility.GangName then
            Notify(Language.NoGang)
            return false
        end
    end
    if Config.Utility.PutBackpack.Enable == true then
        QBCore.Functions.Progressbar("Largebackpack", Language.OpenSmall, 2500, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,
        disableCombat = true}, {animDict = "clothingshirt",anim = "try_shirt_positive_d",flags = 49}, {}, {}, function() end)
        Wait(3000)
        Smallbackpack()
    end
    local citizenid = QBCore.Functions.GetPlayerData().citizenid
    if Config.Utility.StashID then
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Small..'_'..smallbackpackid, {maxweight = Config.Utility.Weight.Small, slots = Config.Utility.Weight.Small})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Small..'_'..smallbackpackid)
    else
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Small..'_'..citizenid, {maxweight = Config.Utility.Weight.Small, slots = Config.Utility.Weight.Small})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Small..'_'..citizenid)
    end
end)


RegisterNetEvent('m-Backpack:Client:Mediumbackpack', function(mediumbackpackid)
	local job = QBCore.Functions.GetPlayerData().job.name
	local gang = QBCore.Functions.GetPlayerData().gang.name
    local playerPed = PlayerPedId()
    if IsEntityDead(playerPed) then return Notify(Language.Dead, "error") end
    if IsPedSwimming(playerPed) then return Notify(Language.Water, "error") end
    if Config.Utility.NeedJob == true then
        if job ~= Config.Utility.JobName then
            Notify(Language.NoJob)
            return false
        end
    end
    if Config.Utility.NeedGang == true then
        if job ~= Config.Utility.GangName then
            Notify(Language.NoGang)
            return false
        end
    end
    if Config.Utility.PutBackpack.Enable == true then
        QBCore.Functions.Progressbar("Largebackpack", Language.OpenMedium, 2500, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,
        disableCombat = true}, {animDict = "clothingshirt",anim = "try_shirt_positive_d",flags = 49}, {}, {}, function() end)
        Wait(3000)
        Mediumbackpack()
    end
    local citizenid = QBCore.Functions.GetPlayerData().citizenid
    if Config.Utility.StashID then
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Medium..'_'..mediumbackpackid, {maxweight = Config.Utility.Weight.Medium, slots = Config.Utility.Weight.Medium})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Medium..'_'..mediumbackpackid)
    else
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Medium..'_'..citizenid, {maxweight = Config.Utility.Weight.Medium, slots = Config.Utility.Weight.Medium})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Medium..'_'..citizenid)
    end
end)
RegisterNetEvent('m-Backpack:Client:Largebackpack', function(largebackpackid)
	local job = QBCore.Functions.GetPlayerData().job.name
	local gang = QBCore.Functions.GetPlayerData().gang.name
    local playerPed = PlayerPedId()
    if IsEntityDead(playerPed) then return Notify(Language.Dead, "error") end
    if IsPedSwimming(playerPed) then return Notify(Language.Water, "error") end
    if Config.Utility.NeedJob == true then
        if job ~= Config.Utility.JobName then
            Notify(Language.NoJob)
            return false
        end
    end
    if Config.Utility.NeedGang == true then
        if job ~= Config.Utility.GangName then
            Notify(Language.NoGang)
            return false
        end
    end
    if Config.Utility.PutBackpack.Enable == true then
        QBCore.Functions.Progressbar("Largebackpack", Language.OpenLarge, 2500, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,
        disableCombat = true}, {animDict = "clothingshirt",anim = "try_shirt_positive_d",flags = 49}, {}, {}, function() end)
        Wait(3000)
        Largebackpack()
    end
    local citizenid = QBCore.Functions.GetPlayerData().citizenid
    if Config.Utility.StashID then
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Large..'_'..largebackpackid, {maxweight = Config.Utility.Weight.Large, slots = Config.Utility.Slots.Large})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Large..'_'..largebackpackid)
    else
        TriggerServerEvent(Config.Utility.OpenInventory, "stash", Config.Utility.StashNames.Large..'_'..citizenid, {maxweight = Config.Utility.Weight.Large, slots = Config.Utility.Slots.Large})
        TriggerEvent(Config.Utility.SetStash, Config.Utility.StashNames.Large..'_'..citizenid)
    end
end)

function Smallbackpack() -- Function to put small bag if you need trigger or something
    if GetEntityModel(PlayerPedId()) == `mp_m_freemode_01` then
        TriggerEvent(Config.Utility.LoadOutfit, {
            outfitData = {
                ["bag"] = { item = Config.Utility.PutBackpack.Men.SmallBackpack, texture = 0 }
            }
        })
    else
        TriggerEvent(Config.Utility.LoadOutfit, {
            outfitData = {
                ["bag"] = { item = Config.Utility.PutBackpack.Woman.SmallBackpack, texture = 0 }
            }
        })
    end
end

function Mediumbackpack() -- Function to put medium bag if you need trigger or something
    if GetEntityModel(PlayerPedId()) == `mp_m_freemode_01` then
        TriggerEvent(Config.Utility.LoadOutfit, {
            outfitData = {
                ["bag"] = { item = Config.Utility.PutBackpack.Men.MediumBackpack, texture = 0 }
            }
        })
    else
        TriggerEvent(Config.Utility.LoadOutfit, {
            outfitData = {
                ["bag"] = { item = Config.Utility.PutBackpack.Woman.MediumBackpack, texture = 0 }
            }
        })
    end
end

function Largebackpack() -- Function to put large bag if you need trigger or something
    if GetEntityModel(PlayerPedId()) == `mp_m_freemode_01` then
        TriggerEvent(Config.Utility.LoadOutfit, {
            outfitData = {
                ["bag"] = { item = Config.Utility.PutBackpack.Men.LargeBackpack, texture = 0 }
            }
        })
    else
        TriggerEvent(Config.Utility.LoadOutfit, {
            outfitData = {
                ["bag"] = { item = Config.Utility.PutBackpack.Woman.LargeBackpack, texture = 0 }
            }
        })
    end
end

function Original() -- Function to put original if you need trigger or something
    TriggerServerEvent('qb-clothes:loadPlayerSkin')
    Citizen.Wait(1000)
    ClearPedDecorations(PlayerPedId())
end