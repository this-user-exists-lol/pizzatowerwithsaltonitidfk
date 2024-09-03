var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	global.discord_initialized = true;
	
	ready = true;
	show_debug_message("date: " + string(date_current_datetime()));
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	np_setpresence("Playing As " + global.currentcharacter, "In " + global.currentlevel, "salticon", global.currentcharactericon);
	userid = async_load[? "user_id"]
	drawgui = false
}