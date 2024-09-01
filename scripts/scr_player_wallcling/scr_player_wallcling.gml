function scr_player_wallcling()
{
	    hsp = 0
        if (sprite_index == spr_playerN_wallclingstart && floor(image_index) == (image_number - 1))
            sprite_index = spr_playerN_wallcling
        if (sprite_index == spr_playerN_wallcling)
            vsp = 2
        else
            vsp = 0
        wallclingcooldown = 0
        if (floor(image_index) == (image_number - 1) || (!key_jump2))
        {
            vsp = -15
            state = (60 << 0)
            sprite_index = spr_playerN_jump
            image_index = 0
        }
        if key_jump
        {
            vsp = -15
            state = (60 << 0)
            sprite_index = spr_playerN_jump
            image_index = 0
        }
        image_speed = 0.35
}