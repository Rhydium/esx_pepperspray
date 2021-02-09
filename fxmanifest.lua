fx_version 'bodacious'
game 'gta5'

author '@RichMilly (GitHub)'
description 'FiveM-Pepper-Spray but edited so that only cops can use it'
version '1.0.0'

client_scripts {
    'config.lua',
    'client/main.lua'
}

server_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'locales/nl.lua',

    'config.lua',
    'server/main.lua'
}