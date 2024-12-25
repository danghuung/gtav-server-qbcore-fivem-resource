fx_version "adamant"

game "gta5"

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'config.lua',
    'client/main.lua'
}

server_scripts {
    'config.lua',
    'server/main.lua'
}

shared_scripts {
    '@qb-core/shared/locale.lua',
    'config.lua'
}