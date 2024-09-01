function scr_player_parry()
{
    if (image_index > (image_number - 1))
	{
        state = (0 << 0)
	}
    if (!audio_is_playing(sfx_parry))
	{
		with instance_create(x, y, obj_balloonpop)
			sprite_index = spr_parryeffect
        scr_soundeffect(sfx_parry)
	}
    hsp = ((-xscale) * movespeed)
    image_speed = 0.35
    if (movespeed > 0)
        movespeed -= 0.5
}