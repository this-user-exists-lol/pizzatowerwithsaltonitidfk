x = playerid.x
y = playerid.y
image_xscale = playerid.xscale
if (playerid.movespeed <= 7)
    instance_destroy()
with (playerid)
{
    if (state != (72 << 0))
        instance_destroy(other.id)
}
