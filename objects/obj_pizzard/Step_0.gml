switch state
{
    case (97 << 0):
        scr_enemy_idle()
        break
    case (99 << 0):
        scr_enemy_charge()
        break
    case (101 << 0):
        scr_enemy_turn()
        break
    case (105 << 0):
        scr_enemy_walk()
        break
    case (107 << 0):
        scr_enemy_land()
        break
    case (108 << 0):
        scr_enemy_hit()
        break
    case (109 << 0):
        scr_enemy_stun()
        break
    case (100 << 0):
        scr_pizzagoblin_throw()
        break
    case (113 << 0):
        scr_enemy_grabbed()
        break
}

if (state == (109 << 0) && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (109 << 0))
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != (113 << 0))
    depth = 0
if (state != (109 << 0))
    thrown = 0
scr_scareenemy()
if (bombreset > 0)
    bombreset--
if (x != obj_player1.x && obj_player1.state != (19 << 0) && obj_player1.state != (25 << 0) && state != (100 << 0) && bombreset == 0 && grounded)
{
    if (obj_player1.x > (x - 400) && obj_player1.x < (x + 400) && y <= (obj_player1.y + 20) && y >= (obj_player1.y - 20))
    {
        if (state == (105 << 0))
        {
            image_index = 0
            sprite_index = spr_pizzard_shoot
            image_xscale = (-(sign((x - obj_player1.x))))
            state = (100 << 0)
        }
    }
}
if instance_exists(obj_player2)
{
    if (x != obj_player2.x && obj_player2.state != (19 << 0) && obj_player2.state != (25 << 0) && state != (100 << 0) && bombreset == 0 && grounded)
    {
        if (obj_player2.x > (x - 400) && obj_player2.x < (x + 400) && y <= (obj_player2.y + 20) && y >= (obj_player2.y - 20))
        {
            if (state == (105 << 0))
            {
                image_index = 0
                sprite_index = spr_pizzard_shoot
                image_xscale = (-(sign((x - obj_player2.x))))
                state = (100 << 0)
            }
        }
    }
}
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
