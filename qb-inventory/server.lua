--- old

RegisterNetEvent('mt-farm:server:venderTudo', function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    
    local xItem = Player.Functions.GetItemsByName(ItemList)
    if xItem ~= nil then
        for k, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[k] ~= nil then
                if ItemList[Player.PlayerData.items[k].name] ~= nil then
                    price = price + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)

        Player.Functions.AddMoney("cash", price, "sold-aliments")
            TriggerClientEvent('QBCore:Notify', src, "You sell some aliments for $"..price)
                end
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You dont/'t have anything to sell..")
    end
end)


---fix

RegisterNetEvent('mt-farm:server:venderTudo', function()
    local src = source
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then
        for k, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[k] ~= nil then
                if ItemList[Player.PlayerData.items[k].name] ~= nil then
                    price = price + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Player.PlayerData.items[k].name], "remove")
                end
            end
        end
        Player.Functions.AddMoney("cash", price)
        TriggerClientEvent('QBCore:Notify', src, "You sell some aliments for $"..price)
    else 
		TriggerClientEvent('QBCore:Notify', src, "You dont/'t have anything to sell..")
	end
end)



["ESC"] = 322,
["F1"] = 288,
["F2"] = 289,
["F3"] = 170,
["F5"] = 166,
["F6"] = 167,
["F7"] = 168,
["F8"] = 169,
["F9"] = 56,
["F10"] = 57,
["~"] = 243,
["1"] = 157,
["2"] = 158,
["3"] = 160,
["4"] = 164,
["5"] = 165,
["6"] = 159,
["7"] = 161,
["8"] = 162,
["9"] = 163,
["-"] = 84,
["="] = 83,
["BACKSPACE"] = 177,
["TAB"] = 37,
["Q"] = 44,
["W"] = 32,
["E"] = 38,
["R"] = 45,
["T"] = 245,
["Y"] = 246,
["U"] = 303,
["P"] = 199,
["["] = 39,
["]"] = 40,
["ENTER"] = 18,
["CAPS"] = 137,
["A"] = 34,
["S"] = 8,
["D"] = 9,
["F"] = 23,
["G"] = 47,
["H"] = 74,
["K"] = 311,
["L"] = 182,
["LEFTSHIFT"] = 21,
["Z"] = 20,
["X"] = 73,
["C"] = 26,
["V"] = 0,
["B"] = 29,
["N"] = 249,
["M"] = 244,
[","] = 82,
["."] = 81,
["LEFTCTRL"] = 36,
["LEFTALT"] = 19,
["SPACE"] = 22,
["RIGHTCTRL"] = 70,
["HOME"] = 213,
["PAGEUP"] = 10,
["PAGEDOWN"] = 11,
["DELETE"] = 178,
["LEFT"] = 174,
["RIGHT"] = 175,
["TOP"] = 27,
["DOWN"] = 173,
["NENTER"] = 201,
["N4"] = 108,
["N5"] = 60,
["N6"] = 107,
["N+"] = 96,
["N-"] = 97,
["N7"] = 117,
["N8"] = 61,
["N9"] = 118




