with (obj_player1)
{
    if (key_up && place_meeting(x, y, other.id) && ladderbuffer == 0 && (state == (0 << 0) || state == (32 << 0) || state == (72 << 0) || state == (93 << 0) || state == (71 << 0) || state == (31 << 0) || state == (60 << 0) || state == (34 << 0)) && state != (75 << 0) && state != (73 << 0) && state != (76 << 0) && state != (79 << 0))
    {
        mach2 = 0
        state = (61 << 0)
        x = (other.x + 16)
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
if instance_exists(obj_player2)
{
    with (obj_player2)
    {
        if (key_up && place_meeting(x, y, other.id) && ladderbuffer == 0 && (state == (0 << 0) || state == (32 << 0) || state == (72 << 0) || state == (93 << 0) || state == (71 << 0) || state == (31 << 0) || state == (60 << 0) || state == (34 << 0)) && state != (75 << 0) && state != (73 << 0) && state != (76 << 0) && state != (79 << 0))
        {
            mach2 = 0
            state = (61 << 0)
            x = (other.x + 16)
            y = floor(y)
            if ((y % 2) == 1)
                y -= 1
        }
    }
}
