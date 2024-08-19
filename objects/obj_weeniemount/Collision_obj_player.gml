with (other.id)
{
    if (state == (23 << 0) || state == (49 << 0))
    {
        state = (15 << 0)
        sprite_index = spr_rideweenie
        xscale = other.image_xscale
        vsp = -11
        jumpstop = 1
        movespeed = 0
        grounded = 0
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale
        instance_destroy(other.id)
    }
}
