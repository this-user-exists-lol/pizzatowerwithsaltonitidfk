scr_sound(sound_slaphit)
instance_create((x + (obj_player.xscale * 40)), y, obj_punchdust)
state = (113 << 0)
obj_player.state = (48 << 0)
instance_destroy(other.id)
obj_player.suplexhavetomash = 5
obj_player.sprite_index = spr_player_grab
