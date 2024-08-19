if (place_meeting(x, (y - 1), obj_player1) && obj_player1.state != (57 << 0) && obj_player1.state != (15 << 0))
{
    obj_player1.state = (6 << 0)
    obj_player1.image_index = 0
    obj_player1.vsp = -25
    obj_player1.sprite_index = obj_player1.spr_fireass
    if (!audio_is_playing(sfx_scream5))
        scr_soundeffect(sfx_scream5)
}
if (place_meeting(x, (y - 1), obj_player2) && obj_player2.state != (57 << 0) && obj_player2.state != (15 << 0))
{
    obj_player2.state = (6 << 0)
    obj_player2.image_index = 0
    obj_player2.vsp = -25
    obj_player2.sprite_index = obj_player2.spr_fireass
    if (!audio_is_playing(sfx_scream5))
        scr_soundeffect(sfx_scream5)
}
