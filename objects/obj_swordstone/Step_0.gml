if (obj_player.state == (25 << 0) || obj_player.state == (26 << 0) || obj_player.state == (19 << 0))
    sprite_index = spr_swordstonetaken
else
    sprite_index = spr_swordstone
if (sprite_index == spr_swordstone && (!instance_exists(ID)))
{
    with (instance_create(x, (y - 20), obj_grabmarker))
        other.ID = id
}
else if (sprite_index == spr_swordstonetaken && instance_exists(ID))
    instance_destroy(ID)
