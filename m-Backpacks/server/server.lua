if Config.Utility.Framework == "NEW" then
    QBCore = exports[Config.Utility.CoreName]:GetCoreObject()
elseif Config.Utility.Framework == "OLD" then 
    QBCore = nil
    TriggerEvent(Config.Utility.CoreName, function(obj) QBCore = obj end) 
else
    print("The Framework '", Config.Utility.Framework, "' is not support, please change in config.lua")
end

QBCore.Functions.CreateUseableItem("smallbackpack", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('m-Backpack:Client:Smallbackpack', source, item.info.smallbackpackid)
end)
QBCore.Functions.CreateUseableItem("mediumbackpack", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('m-Backpack:Client:Mediumbackpack', source, item.info.mediumbackpackid)
end)
QBCore.Functions.CreateUseableItem("largebackpack", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('m-Backpack:Client:Largebackpack', source, item.info.largebackpackid)
end)