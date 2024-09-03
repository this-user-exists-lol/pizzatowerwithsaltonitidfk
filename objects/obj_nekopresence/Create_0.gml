/// @description Initialize Discord.
#macro DISCORD_APP_ID "1279743897752571977"
ready = false;
userid = 0
index = 0
alarm[0] = room_speed * 5;
image_speed = 0.35
depth = -200
global.currentcharacter = "???"
global.currentcharactericon = "salticon"
global.currentlevel = "???"
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}