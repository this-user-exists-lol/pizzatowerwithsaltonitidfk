x = playerid.x
y = playerid.y
with (playerid)
{
    if (state != (48 << 0))
        instance_destroy(other.id)
}
