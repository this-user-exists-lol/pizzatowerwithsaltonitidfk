if place_meeting(x, (y - 1), obj_player1)
{
    with (obj_player1)
    {
        if (place_meeting(x, (y + 1), obj_ladder) && key_down && (state == (68 << 0) || (character == "S" && (state == (0 << 0) || state == (71 << 0)))) && place_meeting(x, (y + 1), obj_platform))
        {
            y += 5
            state = (61 << 0)
            x = (other.x + 16)
            y = floor(y)
            if ((y % 2) == 1)
                y -= 1
        }
    }
}
if instance_exists(obj_player2)
{
    if place_meeting(x, (y - 1), obj_player2)
    {
        with (obj_player2)
        {
            if (place_meeting(x, (y + 1), obj_ladder) && key_down && (state == (68 << 0) || (character == "S" && (state == (0 << 0) || state == (71 << 0)))) && place_meeting(x, (y + 1), obj_platform))
            {
                y += 5
                state = (61 << 0)
                x = (other.x + 16)
                y = floor(y)
                if ((y % 2) == 1)
                    y -= 1
            }
        }
    }
}
