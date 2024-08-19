function scr_hurtplayer()
{
	with (argument0)
	{
	    if ((state == (25 << 0) || state == (26 << 0) || state == (19 << 0)) && cutscene == 0)
	    {
	    }
	    else if (state == (28 << 0) && hurted == 0)
	    {
	    }
	    else if (state == (15 << 0))
	    {
	    }
	    else if (state == (16 << 0))
	    {
	    }
	    else if (state == (2 << 0))
	    {
	    }
	    else if (state == (13 << 0) || state == (14 << 0))
	    {
	    }
	    else if (pizzashield == 1)
	    {
	        pizzashield = 0
	        with (instance_create(x, y, obj_sausageman_dead))
	            sprite_index = spr_pizzashield_collectible
	        hsp = ((-xscale) * 4)
	        vsp = -5
	        state = (74 << 0)
	        sprite_index = spr_bump
	        alarm[8] = 60
	        alarm[7] = 120
	        hurted = 1
	        scr_soundeffect(sfx_pephurt)
	    }
	    else if (state != (75 << 0) && state != (113 << 0) && hurted == 0 && cutscene == 0)
	    {
	        if (state == (113 << 0))
	        {
	            if (object_index == obj_player1)
	                y = obj_player2.y
	            else
	                y = obj_player1.y
	        }
	        scr_soundeffect(sfx_pephurt)
	        alarm[8] = 60
	        alarm[7] = 120
	        hurted = 1
	        if (xscale == other.image_xscale)
	            sprite_index = spr_hurtjump
	        else
	            sprite_index = spr_hurt
	        movespeed = 8
	        vsp = -5
	        timeuntilhpback = 300
	        if (instance_exists(obj_player2) && global.coop == 1)
	        {
	            if (object_index == obj_player2)
	            {
	                if (obj_player1.spotlight == 0)
	                {
	                    obj_camera.shoving = 1
	                    obj_camera.image_index = 0
	                    obj_player1.spotlight = 1
	                    scr_changetoppings()
	                    obj_player1.depth = -7
	                    obj_player2.depth = -6
	                }
	            }
	            if (object_index == obj_player1)
	            {
	                if (obj_player1.spotlight == 1)
	                {
	                    obj_camera.shoving = 1
	                    obj_camera.image_index = 0
	                    obj_player1.spotlight = 0
	                    scr_changetoppings()
	                    obj_player1.depth = -6
	                    obj_player2.depth = -7
	                }
	            }
	        }
	        instance_create(x, y, obj_spikehurteffect)
	        state = (75 << 0)
	        image_index = 0
	        flash = 1
	        if (shotgunAnim == 0)
	        {
	            global.hurtcounter += 1
	            if (global.timeattack == 0)
	            {
	                if (global.collect > 100)
	                    global.collect -= 100
	                else
	                    global.collect = 0
	                if (global.collect != 0)
	                {
	                    if (character == "P")
	                    {
	                        repeat (10)
	                        {
	                            with (instance_create(x, y, obj_pizzaloss))
	                                sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
	                        }
	                    }
	                    else
	                    {
	                        repeat (10)
	                            instance_create(x, y, obj_pizzaloss)
	                    }
	                }
	            }
	        }
	        else
	        {
	            with (instance_create(x, y, obj_sausageman_dead))
	            {
	                if (obj_player1.character == "P")
	                    sprite_index = spr_shotgunback
	                else if (obj_player1.character == "N")
	                    sprite_index = spr_minigunfall
	            }
	            if (backupweapon == 1)
	                backupweapon = 0
	            else
	                shotgunAnim = 0
	        }
	    }
	}
}
