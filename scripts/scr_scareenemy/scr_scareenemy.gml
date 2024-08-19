function scr_scareenemy()
{
	var player = instance_nearest(x, y, obj_player)
	if (state != (113 << 0))
	{
	    if (player.x > (x - 400) && player.x < (x + 400) && y <= (player.y + 60) && y >= (player.y - 60))
	    {
	        if (state != (97 << 0) && (player.state == (93 << 0) || player.state == (15 << 0) || player.state == (10 << 0)))
	        {
	            state = (97 << 0)
	            sprite_index = scaredspr
	            if (x != player.x)
	                image_xscale = (-(sign((x - player.x))))
	            scaredbuffer = 100
	            vsp = -5
	        }
	    }
	}
}
