var hall = id
global.roomchanged = 1
with (other)
{
    if (!other.savedposition)
    {
        other.savedposition = 1
        other.savedx = x
        other.savedy = y
    }
    x = other.savedx
    y = other.savedy
    if (!instance_exists(obj_fadeout))
    {
        var _x = x - other.x
        var _percentage = _x / other.sprite_width
        obj_player1.vertical_x = _percentage
        obj_player1.verticalhall_vsp = vsp
        obj_player1.verticalhallway = 1
        obj_player1.vhallwaydirection = sign(other.image_yscale)
        obj_player1.hallway = 0
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        if instance_exists(obj_player2)
        {
            if (object_index == obj_player2)
            {
                obj_player1.x = obj_player2.x
                obj_player1.y = obj_player2.y
                obj_player1.state = (0 << 0)
            }
            if (object_index == obj_player1)
            {
                obj_player2.x = obj_player1.x
                obj_player2.y = obj_player1.y
                obj_player2.state = (0 << 0)
            }
            obj_player2.vertical_x = _percentage
            obj_player2.verticalhall_vsp = vsp
            obj_player2.verticalhallway = 1
            obj_player2.vhallwaydirection = sign(other.image_yscale)
            obj_player2.hallway = 0
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
        }
        other.visited = 1
        image_index = 0
        scr_soundeffect(sfx_door)
        if (state == (0 << 18))
        {
            verticalbuffer = 10
            verticalstate = (0 << 18)
            var i = 0
            x = floor(x)
            while (!(scr_solid((x + xscale), y)))
            {
                x += xscale
                i++
                if (i > room_width)
                    break
            }
        }
        instance_create(x, y, obj_fadeout)
    }
}
