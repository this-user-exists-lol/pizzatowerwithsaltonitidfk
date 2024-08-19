if (other.state == (23 << 0) || other.state == (49 << 0))
{
    instance_create((x + (obj_player1.xscale * 40)), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = 1
        baddiegrabbedID = other.id
        state = (48 << 0)
    }
    playerid = other.object_index
    grabbed = 1
}
