if (instance_exists(baddieID) && baddieID.stun == 1 && (other.state == (23 << 0) || other.state == (49 << 0) || other.instakillmove == 1))
{
    with (other.id)
    {
        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
        image_index = 0
        state = (59 << 0)
        movespeed = 3
        vsp = -3
        instance_destroy(other.id)
    }
    scr_soundeffect(sfx_killenemy)
    scr_sleep(50)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_bangeffect)
    instance_destroy(baddieID)
    instance_destroy()
}
