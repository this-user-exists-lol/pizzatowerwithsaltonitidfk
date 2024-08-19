if (!(place_meeting(x, y, obj_doorblocked)))
{
    with (other.id)
    {
        if (key_up && other.sprite_index == spr_doorvisited && grounded && (state == (0 << 0) || state == (71 << 0) || state == (72 << 0) || state == (32 << 0) || state == (93 << 0) || state == (67 << 0)) && y == (other.y + 50) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != (80 << 0) && state != (63 << 0) && ((obj_player1.spotlight == 1 && object_index == obj_player1) || (obj_player1.spotlight == 0 && object_index == obj_player2)))
        {
            obj_player1.lastroom = room
            obj_player2.lastroom = room
            scr_soundeffect(sfx_door)
            obj_camera.chargecamera = 0
            ds_list_add(global.saveroom, id)
            if (object_index == obj_player1)
                obj_player1.sprite_index = obj_player1.spr_lookdoor
            if (object_index == obj_player2)
                obj_player2.sprite_index = obj_player2.spr_lookdoor
            obj_player1.targetDoor = other.targetDoor
            obj_player1.targetRoom = other.targetRoom
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
            obj_player.image_index = 0
            obj_player.state = (80 << 0)
            obj_player.mach2 = 0
            if (instance_exists(obj_player2) && global.coop == 1)
            {
                if (object_index == obj_player2)
                {
                    obj_player1.x = obj_player2.x
                    obj_player1.y = obj_player2.y
                }
                if (object_index == obj_player1)
                {
                    obj_player2.x = obj_player1.x
                    obj_player2.y = obj_player1.y
                }
            }
            other.visited = 1
            instance_create(x, y, obj_fadeout)
        }
    }
}
