if instance_exists(obj_pausefadeout)
    instance_destroy(obj_pausefadeout)
if (fadealpha > 1)
{
    fadein = 1
    if instance_exists(obj_player)
    {
        with (obj_player)
        {
            if place_meeting(x, y, obj_goldendoor)
                game_restart()
        }
        if (room != obj_player1.targetRoom)
            room_goto(obj_player1.targetRoom)
        if (global.coop == 1)
        {
            if (room != obj_player2.targetRoom)
                room_goto(obj_player2.targetRoom)
        }
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if instance_exists(obj_player)
{
    with (obj_player1)
    {
        if (other.fadein == 1 && (obj_player1.state == (80 << 0) || obj_player1.state == (66 << 0)) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_startgate)))
        {
            state = (63 << 0)
            image_index = 0
            if (global.coop == 1)
            {
                obj_player2.state = (63 << 0)
                obj_player2.image_index = 0
            }
        }
        if (other.fadein == 1 && obj_player1.state == (80 << 0) && (obj_player1.sprite_index == spr_downpizzabox || obj_player1.sprite_index == spr_uppizzabox))
        {
            state = (69 << 0)
            if (global.coop == 1)
                obj_player2.state = (69 << 0)
        }
    }
    if instance_exists(obj_player2)
    {
        with (obj_player2)
        {
            if (other.fadein == 1 && (obj_player2.state == (80 << 0) || obj_player2.state == (66 << 0)) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_startgate)))
            {
                state = (63 << 0)
                image_index = 0
                if (global.coop == 1)
                {
                    obj_player1.state = (63 << 0)
                    obj_player1.image_index = 0
                }
            }
            if (other.fadein == 1 && obj_player2.state == (80 << 0) && (obj_player2.sprite_index == spr_downpizzabox || obj_player2.sprite_index == spr_uppizzabox))
            {
                state = (69 << 0)
                if (global.coop == 1)
                    obj_player1.state = (69 << 0)
            }
        }
    }
}
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
