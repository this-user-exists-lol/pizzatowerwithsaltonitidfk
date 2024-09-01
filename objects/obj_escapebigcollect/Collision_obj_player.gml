if global.panic = 1
{
	image_alpha = 0
	with (instance_create(x, y, obj_smallnumber))
	    number = "100"
	if global.combo > 0
		global.combotime = 50
	if (other.object_index == obj_player1)
	    global.collect += 100
	else
	    global.collectN += 100
	scr_soundeffect(sfx_collectpizza)
	obj_camera.bigcollectcount = 100
	var voiceline = random_range(1, 100)
	if (voiceline >= 50)
	{
		scr_soundeffect(choose (sfx_peppositive1, sfx_peppositive2))
	}
	instance_destroy()
}
else
	image_alpha = 50
