with (obj_player)
{
    if (grounded && (state == (71 << 0) || state == (72 << 0)))
    {
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = (93 << 0)
        flash = 1
        sprite_index = spr_player_mach4
        instance_create(x, y, obj_jumpdust)
        movespeed = 14
    }
    if (grounded && state == (93 << 0))
    {
        flash = 1
        if (movespeed < 14)
            movespeed = 14
        instance_create(x, y, obj_jumpdust)
    }
}
