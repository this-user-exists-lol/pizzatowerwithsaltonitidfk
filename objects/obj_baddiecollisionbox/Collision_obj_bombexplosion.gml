if instance_exists(baddieID)
{
    if (baddieID.state != (113 << 0))
    {
        with (baddieID)
        {
            state = (109 << 0)
            stunned = 100
            vsp = -5
        }
    }
}
