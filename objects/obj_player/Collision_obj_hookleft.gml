if ((state == (60 << 0) || state == (65 << 0) || state == (72 << 0)) && other.drop == 0)
{
    state = (77 << 0)
    image_xscale = -1
    other.hooked = 1
    if (mach2 >= 35)
        other.hspeed = -10
    if (other.hspeed == -10)
        sprite_index = spr_player_hangslide
    if (other.hspeed == 0)
        sprite_index = spr_player_hang
}
