if (playerid.visible == false)
{
    with (obj_player1)
    {
        scr_soundeffect(sfx_taxi1)
        state = (0 << 0)
        cutscene = 0
    }
    if (global.coop == 1)
    {
        with (obj_player2)
        {
            state = (0 << 0)
            cutscene = 0
        }
    }
    obj_player1.visible = true
    obj_player2.visible = true
}
