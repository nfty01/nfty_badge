fx_version 'adamant'

game 'gta5'

lua54 'yes'

version '1.0.2'

legacyversion '1.9.1'

ui_page 'html/index.html'

server_script {
	'@es_extended/locale.lua',
	'locales/hu.lua',
	'locales/en.lua',
	'locales/de.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/ro.lua',
	'locales/pl.lua',
	'locales/sk.lua',
	'locales/fi.lua',
	'locales/nl.lua',
	'locales/sr.lua',
	'config.lua',
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
}

client_script {
	'@es_extended/locale.lua',
	'locales/hu.lua',
	'locales/en.lua',
	'locales/de.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/ro.lua',
	'locales/pl.lua',
	'locales/sk.lua',
	'locales/fi.lua',
	'locales/nl.lua',
	'locales/sr.lua',
	'config.lua',
	'client.lua'
}

files {
	'html/index.html',
	'html/assets/css/*.css',
	'html/assets/js/*.js',
	'html/assets/fonts/roboto/*.woff',
	'html/assets/fonts/roboto/*.woff2',
	'html/assets/fonts/justsignature/JustSignature.woff',
	'html/assets/images/*.png'
}
