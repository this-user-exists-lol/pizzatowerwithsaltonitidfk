function scr_player_climbwall()
{
	{
	        if (windingAnim < 200)
	            windingAnim++
	        move = (key_left + key_right)
	        suplexmove = 0
	        vsp = (-wallspeed)
	        if (wallspeed < 24 && move == xscale)
	            wallspeed += 0.15
	        crouchslideAnim = 1
	        sprite_index = spr_machclimbwall
	        if (!key_attack)
	        {
	            state = (0 << 0)
	            movespeed = 0
	        }
	        if (scr_solid(x, (y - 1)) && (!(place_meeting(x, (y - 1), obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x - sign(hsp)), y, obj_slope))))
	        {
	            sprite_index = spr_superjumpland
	            scr_soundeffect(sfx_groundpound)
	            image_index = 0
	            state = (95 << 0)
	            machhitAnim = 0
	        }
	        if (!(scr_solid((x + xscale), y)))
	        {
	            instance_create(x, y, obj_jumpdust)
	            vsp = 0
	            if (movespeed >= 8)
	                state = (72 << 0)
	            if (movespeed >= 12 && global.coop == 0)
	            {
	                state = (93 << 0)
					if character == "P"
						sprite_index = spr_mach4
					else
						sprite_index = spr_playerN_jetpackboost
	            }
	        }
	        if key_jump
	        {
	            movespeed = 9
	            state = (72 << 0)
	            image_index = 0
	            sprite_index = spr_walljumpstart
	            if (character == "P")
	                vsp = -11
	            else
	                vsp = -13
	            xscale *= -1
	            jumpstop = 0
	        }
	        if ((grounded && wallspeed <= 0) || wallspeed <= 0)
	        {
	            state = (60 << 0)
	            sprite_index = spr_fall
	        }
	        image_speed = 0.6
	        if (!instance_exists(obj_cloudeffect))
	            instance_create(x, (y + 43), obj_cloudeffect)
	}
	
}
