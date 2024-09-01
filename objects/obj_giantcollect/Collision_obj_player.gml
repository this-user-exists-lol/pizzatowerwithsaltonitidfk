with (instance_create(x, y, obj_smallnumber))
    number = "1000"
if global.combo > 0
	global.combotime = 50
if (other.object_index == obj_player1)
    global.collect += 1000
else
    global.collectN += 1000
scr_soundeffect(sfx_collectgiantpizza)
obj_camera.bigcollectcount = 100
var voiceline = random_range(1, 100)
if (voiceline >= 10)
{
	scr_soundeffect(choose (sfx_peppositive1, sfx_peppositive2))
}
instance_destroy()
