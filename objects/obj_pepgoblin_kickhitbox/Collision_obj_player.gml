with (other.id)
{
    var b = 1
    for (i = 0; i < (array_length_1d(transformation) - 1); i += 1)
    {
        if (state == transformation[i])
            b = 0
    }
    if (b == 1)
    {
        if (instance_exists(other.baddieID) && state != (2 << 0) && state != (25 << 0) && state != (19 << 0))
        {
            state = (2 << 0)
            xscale = other.baddieID.image_xscale
            movespeed = 14
            vsp = 0
            sprite_index = spr_tumble
        }
    }
}
