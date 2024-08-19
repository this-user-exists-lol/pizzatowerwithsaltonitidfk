if (other.cutscene == 0)
{
    if (hurted == 0 && other.hurted == 0 && fightballadvantage == 1 && (state == (23 << 0) || state == (49 << 0)) && (other.state == (23 << 0) || other.state == (49 << 0)))
    {
        if (object_index == obj_player1)
        {
            obj_player1.state = (93 << 0)
            obj_player2.state = (113 << 0)
            obj_player2.xscale = xscale
            if (obj_player1.spotlight == 0)
            {
                obj_camera.shoving = 1
                obj_camera.image_index = 0
            }
            obj_player1.spotlight = 1
            scr_changetoppings()
            obj_player1.depth = -7
            obj_player2.depth = -6
        }
        if (object_index == obj_player2)
        {
            obj_player2.state = (93 << 0)
            obj_player1.state = (113 << 0)
            obj_player1.xscale = xscale
            if (obj_player1.spotlight == 1)
            {
                obj_camera.shoving = 1
                obj_camera.image_index = 0
            }
            obj_player1.spotlight = 0
            scr_changetoppings()
            obj_player1.depth = -6
            obj_player2.depth = -7
        }
        obj_player1.image_index = 0
        obj_player2.image_index = 0
        obj_player1.sprite_index = obj_player1.spr_fightball
        obj_player2.sprite_index = obj_player2.spr_fightball
        obj_player1.fightball = 1
        obj_player2.fightball = 1
    }
    with (obj_player2)
    {
        if (state == (23 << 0) && other.hurted == 0 && other.state != (75 << 0) && other.state != (19 << 0) && other.state != (25 << 0) && other.state != (2 << 0) && other.state != (6 << 0) && other.state != (28 << 0) && other.cutscene == 0 && other.hurted == 0 && hurted == 0 && (!((other.state == (23 << 0) || other.state == (49 << 0)))))
        {
            if (obj_player1.spotlight == 1)
            {
                obj_camera.shoving = 1
                obj_camera.image_index = 0
            }
            obj_player1.spotlight = 0
            scr_changetoppings()
            movespeed = 0
            image_index = 0
            sprite_index = spr_haulingstart
            baddiegrabbedID = other.id
            state = (48 << 0)
            other.state = (113 << 0)
            obj_player1.depth = -6
            obj_player2.depth = -7
        }
        if (state == (76 << 0) && other.hurted == 0 && other.state != (33 << 0) && other.state != (75 << 0) && hurted == 0)
        {
            if (obj_player1.spotlight == 1)
            {
                obj_camera.shoving = 1
                obj_camera.image_index = 0
            }
            obj_player1.spotlight = 0
            scr_changetoppings()
            obj_player1.depth = -6
            obj_player2.depth = -7
            obj_player1.state = (33 << 0)
            obj_player1.sprite_index = obj_player1.spr_squished
            obj_player1.image_index = 0
        }
        if (other.state == (49 << 0) && hurted == 0 && other.hurted == 0 && (!((state == (23 << 0) || state == (49 << 0)))))
        {
            xscale = (-other.xscale)
            with (other.id)
            {
                sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
                image_index = 0
                state = (59 << 0)
                movespeed = 3
                vsp = -3
            }
            if (obj_player1.spotlight == 0)
            {
                obj_camera.shoving = 1
                obj_camera.image_index = 0
            }
            obj_player1.spotlight = 1
            scr_changetoppings()
            obj_player1.depth = -7
            obj_player2.depth = -6
            thrown = 1
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_baddiegibs)
            instance_create(x, y, obj_baddiegibs)
            instance_create(x, y, obj_baddiegibs)
            with (obj_camera)
            {
                shake_mag = 3
                shake_mag_acc = (3 / room_speed)
            }
            state = (75 << 0)
            x = obj_player1.x
            y = obj_player1.y
            alarm[8] = 60
            alarm[7] = 120
            movespeed = 15
            vsp = -6
            sprite_index = spr_hurt
        }
    }
}
