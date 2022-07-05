fx_version 'cerulean'
author 'marcinhu#0001'
Description 'Backpacks'
game 'gta5'

shared_scripts { 
    "config.lua",
}

server_script { 
    "server/**.lua",
}

client_script {
    "client/**.lua",
}

escrow_ignore {
    "images/**",
    "client/**",
    "server/**",
    "config.lua",
    "README.lua",
}

lua54 'yes'
dependency '/assetpacks'