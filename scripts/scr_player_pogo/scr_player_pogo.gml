function scr_player_pogo()
{
	move = (key_left + key_right)
	if (move == 0 && hsp != 0)
	    hsp = (xscale * movespeed)
	else
	    hsp = (move * movespeed)
	if (move != 0 && (!(scr_solid(x, (y + 1)))))
	{
	    if (movespeed < 6)
	        movespeed += 0.5
	}
	if (move != xscale || move == 0 || place_meeting((x + xscale), y, obj_solid))
	{
	    movespeed = 0
	    pogospeed = 6
	}
	if (sign(hsp) != 0)
	    xscale = sign(hsp)
	else if (move != 0)
	    xscale = move
	if (move != xscale)
	    pogospeed = 6
	if (grounded && (!key_slap2) && sprite_index != spr_playerN_pogobounce && sprite_index != spr_playerN_pogobouncemach)
	{
	    scr_soundeffect(sfx_Npogo3)
	    pogospeedprev = 0
	    image_index = 0
	    if key_jump2
	        vsp = -12
	    else if key_down
	        vsp = -3
	    else
	        vsp = -6
	    if (pogochargeactive == 1)
	        sprite_index = spr_playerN_pogobouncemach
	    else
	        sprite_index = spr_playerN_pogobounce
	    instance_create(x, y, obj_landcloud)
	}
	if (floor(image_index) == 3 && pogospeedprev == 0 && (sprite_index == spr_playerN_pogobounce || sprite_index == spr_playerN_pogobouncemach))
	{
	    if (move == xscale && movespeed < 12)
	        pogospeed += 4
	    if (move == (-xscale) && movespeed > 0)
	        pogospeed = 6
	    movespeed = pogospeed
	    pogospeedprev = 1
	}
	if (floor(image_index) == (image_number - 1) && (sprite_index == spr_playerN_pogobounce || sprite_index == spr_playerN_pogofallmach || sprite_index == spr_playerN_pogobouncemach || sprite_index == spr_playerN_pogostart))
	{
	    if (pogochargeactive == 1)
	        sprite_index = spr_playerN_pogofallmach
	    else
	        sprite_index = spr_playerN_pogofall
	}
	if (pogospeed > 12 && pogochargeactive == 0)
	{
	    pogochargeactive = 1
	    pogocharge = 100
	    flash = 1
	}
	if (movespeed > 12)
	    pogocharge = 100
	if (!key_attack)
	    state = (0 << 0)
	if (!grounded && key_down)
	{
	    if (shotgunAnim == 0)
	    {
	        image_index = 0
	        state = (94 << 0)
	        sprite_index = spr_bodyslamstart
	        if (character == "P")
	            vsp = -5
	        else
	            vsp = -7
	    }
	    else
	    {
	        scr_soundeffect(sfx_killingblow)
	        image_index = 0
	        state = (94 << 0)
	        sprite_index = spr_shotgunjump1
	        vsp = -5
	        if (character == "P")
	        {
	            with (instance_create((x + (xscale * 30)), (y + 60), obj_shotgunbullet))
	            {
	                sprite_index = sprite10391
	                spdh = -10
	                spd = 0
	            }
	            with (instance_create((x + (xscale * 30)), (y + 60), obj_shotgunbullet))
	            {
	                sprite_index = sprite10391
	                spdh = -10
	                spd = 5
	            }
	            with (instance_create((x + (xscale * 30)), (y + 60), obj_shotgunbullet))
	            {
	                sprite_index = sprite10391
	                spdh = -10
	                spd = -5
	            }
	        }
	    }
	}
	if (key_slap2 && character == "N")
	{
	    state = (49 << 0)
	    sprite_index = spr_playerN_spin
	    image_index = 0
	    movespeed = 15
	}
	image_speed = 0.35
	if (key_taunt2 && sprite_index != spr_playerN_pogobounce && sprite_index != spr_playerN_pogobouncemach)
	{
	    scr_soundeffect(sfx_taunt)
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
	    state = (53 << 0)
	    if (supercharged == 1)
	    {
	        image_index = 0
	        sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3, spr_supertaunt4)
	    }
	    else
	    {
	        taunttimer = 20
	        image_index = random_range(0, 11)
	        sprite_index = spr_taunt
	    }
	    instance_create(x, y, obj_taunteffect)
	}
}
