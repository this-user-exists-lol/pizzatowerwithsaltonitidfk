function scr_player_faceplant()
{
	hsp = (xscale * movespeed)
	move = (key_right + key_left)
	if (movespeed < 12 && grounded)
	    movespeed += 0.5
	if (place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_slope))) && (!(place_meeting((x + hsp), y, obj_destructibles))))
	{
	    sprite_index = spr_hitwall
	    scr_soundeffect(sfx_groundpound)
	    scr_soundeffect(sfx_bumpwall)
	    with (obj_camera)
	    {
	        shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    hsp = 0
	    image_speed = 0.35
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, __view_get((0 << 0), 0), __view_get((1 << 0), 0), (__view_get((0 << 0), 0) + __view_get((2 << 0), 0)), (__view_get((1 << 0), 0) + __view_get((3 << 0), 0)))
	        {
	            stun = 1
	            alarm[0] = 200
	            ministun = 0
	            vsp = -5
	            hsp = 0
	        }
	    }
	    flash = 0
	    state = (74 << 0)
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	}
	if (floor(image_index) == (image_number - 1) && (!key_attack))
	    state = (0 << 0)
	else if (floor(image_index) == (image_number - 1) && key_attack)
	{
	    image_speed = 0.35
	    state = (72 << 0)
	    grav = 0.5
	}
	if ((!instance_exists(obj_dashcloud2)) && grounded && movespeed > 5)
	{
	    with (instance_create(x, y, obj_dashcloud2))
	        image_xscale = other.xscale
	}
}
