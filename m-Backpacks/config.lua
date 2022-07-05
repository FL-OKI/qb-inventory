Config = {}

--------------------------
-- Utility
--------------------------
Config.Utility = {
    Framework = "NEW", -- "NEW" - New QBCore | "OLD" - Old QBCore
    CoreName = "qb-core", -- Your core name
    OpenInventory = "inventory:server:OpenInventory",
    SetStash = "inventory:client:SetCurrentStash",
    LoadOutfit = "qb-clothing:client:loadOutfit",
    StashID = true, -- NOTE 1*
    PutBackpack = {  -- NOTE 2*
        Enable = true,
        Men = {
            SmallBackpack = 1,    -- Id of bag on clothing
            MediumBackpack = 40,  -- Id of bag on clothing
            LargeBackpack = 45,   -- Id of bag on clothing
        },
        Woman = { 
            SmallBackpack = 1,    -- Id of bag on clothing
            MediumBackpack = 40,  -- Id of bag on clothing
            LargeBackpack = 45,   -- Id of bag on clothing
        },
    },
    NeedJob = false, -- Need job for opening the bag?
    JobName = "mechanic", -- Job
    NeedGang = false, -- Need gang for opening the bag?
    GangName = "ballas", -- Gang
    StashNames = {
        Small = "Small_Backpack",   -- Name of stash
        Medium = "Medium_Backpack", -- Name of stash
        Large = "Large_Backpack"    -- Name of stash
    },
    Weight = {
        Small = 500,    -- Weight of small backpack
        Medium = 1000,  -- Weight of medium backpack
        Large = 1500,   -- Weight of large backpack
    },
    Slots = {
        Small = 25,     -- Slots of small backpack
        Medium = 35,    -- Slots of medium backpack
        Large = 45,     -- Slots of large backpack
    },
}

Language = {
    NoJob = "You don't have the necessary work.",
    NoGang = "You don't have the necessary gang.",
    OpenSmall = "Opening the small backpack...",
    OpenMedium = "Opening the medium backpack...",
    OpenLarge = "Opening the large backpack...",
    Dead = "You cannot access the backpack while dead.",
    Water = "You cannot access the backpack in the water.",
}

function Notify(msg)
    QBCore.Functions.Notify(msg)
end

---------- NOTE 1*
-- If is true, when opening the backpack, it will generate a serial number, 
-- so if you give the same backpack to someone else, that person will be able to see the items. 
-- If it has false, it will always be visible only to the player himself.
-- If you are using with ID , you need to put the backpack's on shops because the ID only generate when someone buy with shop.

---------- NOTE 2*
-- If is true, a backpack will be added to the character.