instance_create((x + (obj_player1.xscale * 40)), y, obj_punchdust)
with (obj_player)
{
    image_index = 0
    sprite_index = spr_player_haulingstart
    if (other.heavy == 1)
        heavy = 1
    else
        heavy = 0
    state = (48 << 0)
}
state = (113 << 0)
instance_destroy(other.id)
