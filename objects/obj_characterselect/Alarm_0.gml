with (instance_create(x, y, obj_fadeout))
{
    obj_player1.targetRoom = tower_entrance
    obj_player1.state = (0 << 0)
	room_goto(tower_entrance)
    if (global.coop == 1)
        obj_player2.state = (0 << 0)
}
