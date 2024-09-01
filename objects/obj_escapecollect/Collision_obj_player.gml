if global.panic = 1
{
	image_alpha = 0
	if audio_is_playing(sfx_collecttopping)
	    audio_stop_sound(sfx_collecttopping)
	scr_soundeffect(sfx_collecttopping)
	if global.combo > 0
		global.combotime += 9
	if (other.object_index == obj_player1)
	    global.collect += 10
	else
	    global.collectN += 10
	with (instance_create((x + 16), y, obj_smallnumber))
	    number = "10"
	instance_destroy()
}
else
	image_alpha = 50