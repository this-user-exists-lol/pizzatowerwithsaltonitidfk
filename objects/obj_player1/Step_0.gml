scr_getinput()
switch state
{
    case (0 << 0):
        scr_player_normal()
        break
    case (113 << 0):
        scr_player_grabbed()
        break
    case (3 << 0):
        scr_player_finishingblow()
        break
    case (2 << 0):
        scr_player_tumble()
        break
    case (8 << 0):
        scr_player_titlescreen()
        break
    case (4 << 0):
        scr_player_ejected()
        break
    case (7 << 0):
        scr_player_firemouth()
        break
    case (6 << 0):
        scr_player_fireass()
        break
    case (5 << 0):
        scr_player_transitioncutscene()
        break
    case (9 << 0):
        scr_playerN_hookshot()
        break
    case (12 << 0):
        scr_player_slap()
        break
    case (10 << 0):
        scr_player_tacklecharge()
        break
    case (13 << 0):
        scr_player_cheesepep()
        break
    case (11 << 0):
        scr_player_cheeseball()
        break
    case (14 << 0):
        scr_player_cheesepepstick()
        break
    case (16 << 0):
        scr_player_boxxedpep()
        break
    case (17 << 0):
        scr_player_pistolaim()
        break
    case (18 << 0):
        scr_player_climbwall()
        break
    case (19 << 0):
        scr_player_knightpepslopes()
        break
    case (20 << 0):
        scr_player_portal()
        break
    case (21 << 0):
        scr_player_secondjump()
        break
    case (22 << 0):
        scr_player_chainsawbump()
        break
    case (23 << 0):
        scr_player_handstandjump()
        break
    case (24 << 0):
        scr_player_gottreasure()
        break
    case (25 << 0):
        scr_player_knightpep()
        break
    case (26 << 0):
        scr_player_knightpepattack()
        break
    case (27 << 0):
        scr_player_meteorpep()
        break
    case (28 << 0):
        scr_player_bombpep()
        break
    case (29 << 0):
        scr_player_grabbing()
        break
    case (30 << 0):
        scr_player_chainsawpogo()
        break
    case (31 << 0):
        scr_player_shotgunjump()
        break
    case (33 << 0):
        scr_player_stunned()
        break
    case (34 << 0):
        scr_player_highjump()
        break
    case (35 << 0):
        scr_player_chainsaw()
        break
    case (36 << 0):
        scr_player_facestomp()
        break
    case (38 << 0):
        scr_player_timesup()
        break
    case (39 << 0):
        scr_player_machroll()
        break
    case (41 << 0):
        scr_player_pistol()
        break
    case (40 << 0):
        scr_player_shotgun()
        break
    case (42 << 0):
        scr_player_machfreefall()
        break
    case (43 << 0):
        scr_player_throw()
        break
    case (45 << 0):
        scr_player_superslam()
        break
    case (44 << 0):
        scr_player_slam()
        break
    case (46 << 0):
        scr_player_skateboard()
        break
    case (47 << 0):
        scr_player_grind()
        break
    case (48 << 0):
        scr_player_grab()
        break
    case (49 << 0):
        scr_player_punch()
        break
    case (50 << 0):
        scr_player_backkick()
        break
    case (51 << 0):
        scr_player_uppunch()
        break
    case (52 << 0):
        scr_player_shoulder()
        break
    case (53 << 0):
        scr_player_backbreaker()
        break
    case (54 << 0):
        scr_player_bossdefeat()
        break
    case (56 << 0):
        scr_player_bossintro()
        break
    case (64 << 0):
        scr_player_smirk()
        break
    case (55 << 0):
        scr_player_pizzathrow()
        break
    case (57 << 0):
        scr_player_gameover()
        break
    case (95 << 0):
        scr_player_Sjumpland()
        break
    case (94 << 0):
        scr_player_freefallprep()
        break
    case (92 << 0):
        scr_player_runonball()
        break
    case (90 << 0):
        scr_player_boulder()
        break
    case (58 << 0):
        scr_player_keyget()
        break
    case (59 << 0):
        scr_player_tackle()
        break
    case (62 << 0):
        scr_player_slipnslide()
        break
    case (61 << 0):
        scr_player_ladder()
        break
    case (60 << 0):
        scr_player_jump()
        break
    case (66 << 0):
        scr_player_victory()
        break
    case (63 << 0):
        scr_player_comingoutdoor()
        break
    case (65 << 0):
        scr_player_Sjump()
        break
    case (67 << 0):
        scr_player_Sjumpprep()
        break
    case (68 << 0):
        scr_player_crouch()
        break
    case (69 << 0):
        scr_player_crouchjump()
        break
    case (70 << 0):
        scr_player_crouchslide()
        break
    case (71 << 0):
        scr_player_mach1()
        break
    case (72 << 0):
        scr_player_mach2()
        break
    case (93 << 0):
        scr_player_mach3()
        break
    case (73 << 0):
        scr_player_machslide()
        break
    case (74 << 0):
        scr_player_bump()
        break
    case (75 << 0):
        scr_player_hurt()
        break
    case (76 << 0):
        scr_player_freefall()
        break
    case (79 << 0):
        scr_player_freefallland()
        break
    case (77 << 0):
        scr_player_hang()
        break
    case (80 << 0):
        scr_player_door()
        break
    case (86 << 0):
        scr_player_barrelnormal()
        break
    case (85 << 0):
        scr_player_barrelfall()
        break
    case (84 << 0):
        scr_player_barrelmach1()
        break
    case (83 << 0):
        scr_player_barrelmach2()
        break
    case (82 << 0):
        scr_player_barrelfloat()
        break
    case (81 << 0):
        scr_player_barrelcrouch()
        break
    case (87 << 0):
        scr_player_barrelslipnslide()
        break
    case (88 << 0):
        scr_player_barrelroll()
        break
    case (89 << 0):
        scr_player_current()
        break
    case (91 << 0):
        scr_player_taxi()
        break
    case (32 << 0):
        scr_player_pogo()
        break
    case (15 << 0):
        scr_player_rideweenie()
        break
    case (96 << 0):
        scr_player_faceplant()
		break
    case (97 << 0):
        scr_player_parry()
        break
}

if (room == Realtitlescreen)
    state = (8 << 0)
if (wallclingcooldown < 10)
    wallclingcooldown++
if (global.combo >= 3 && state != (53 << 0))
    supercharged = 1
with obj_parryhitbox
{
	if parrying == 1
	{
		obj_player1.movespeed = 7
		obj_player1.state = (97 <<0)
		obj_player1.sprite_index = spr_player_parry1
		obj_player1.image_index = 0
	}
}
if ((!instance_exists(superchargedeffectid)) && supercharged == 1)
{
    with (instance_create(x, y, obj_superchargeeffect))
    {
        playerid = other.object_index
        other.superchargedeffectid = id
    }
}
if ((!instance_exists(pizzashieldid)) && pizzashield == 1)
{
    with (instance_create(x, y, obj_pizzashield))
    {
        playerid = other.object_index
        other.pizzashieldid = id
    }
}
if (visible == false && state == (63 << 0))
{
    coopdelay++
    image_index = 0
    if (coopdelay == 50)
    {
        visible = true
        coopdelay = 0
    }
}
if (global.coop == 1)
{
    if ((state == (49 << 0) || state == (23 << 0)) && (!((obj_player2.state == (49 << 0) || obj_player2.state == (23 << 0)))))
        fightballadvantage = 1
    else if (!((obj_player2.state == (49 << 0) || obj_player2.state == (23 << 0))))
        fightballadvantage = 0
}
if (state != (32 << 0) && state != (53 << 0))
{
    pogospeed = 6
    pogospeedprev = 0
}
scr_playersounds()
if grounded
    doublejump = 0
if (pogochargeactive == 1)
{
    if (flashflicker == 0)
    {
        if (pogochargeactive == 1 && sprite_index == spr_playerN_pogofall)
            sprite_index = spr_playerN_pogofallmach
        if (pogochargeactive == 1 && sprite_index == spr_playerN_pogobounce)
            sprite_index = spr_playerN_pogobouncemach
    }
    flashflicker = 1
    pogocharge--
}
else
    flashflicker = 0
if (state != (43 << 0))
    kickbomb = 0
if (pogocharge == 0)
{
    pogochargeactive = 0
    pogocharge = 100
}
if (flashflicker == 1)
{
    flashflickertime++
    if (flashflickertime == 20)
    {
        flash = 1
        flashflickertime = 0
    }
}
if (global.coop == 0)
    fightball = 0
if (state != (93 << 0) && state != (113 << 0))
    fightball = 0
if (state != (113 << 0) && state != (75 << 0))
    thrown = 0
if (grounded && state != (23 << 0))
    suplexmove = 0
if (state != (76 << 0))
    freefallsmash = 0
if (global.playerhealth <= 0 && state != (57 << 0))
{
    image_index = 0
    sprite_index = spr_deathstart
    state = (57 << 0)
}
if (state == (57 << 0) && y > (room_height * 2))
{
    scr_playerreset()
    targetDoor = "A"
    room = hub_room1
    if (global.coop == 1)
    {
        with (obj_player2)
        {
            targetDoor = "A"
            scr_playerreset()
        }
    }
}
if (baddiegrabbedID == 149 && (state == (48 << 0) || state == (45 << 0) || state == (10 << 0)))
    state = (0 << 0)
if (!((state == (48 << 0) || state == (45 << 0) || state == (72 << 0))))
{
    baddiegrabbedID = 149
    heavy = 0
}
if grinding
    state = (47 << 0)
if (anger == 0)
    angry = 0
if (anger > 0)
{
    angry = 1
    anger -= 1
}
if (sprite_index == spr_winding && state != (0 << 0))
    windingAnim = 0
if (state != (48 << 0))
    swingdingbuffer = 0
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create((x + random_range(-5, obj_pause)), (y + 46), obj_vomit)
if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create((x + random_range(-5, obj_pause)), (y + 46), obj_vomit))
        sprite_index = spr_vomit2
}
if (global.playerhealth == 1 && (!instance_exists(obj_sweat)) && obj_player.state == (0 << 0))
    instance_create(x, y, obj_sweat)
if (angry == 1 && (!instance_exists(angryeffectid)) && state == (0 << 0))
{
    with (instance_create(x, y, obj_angrycloud))
    {
        playerid = other.object_index
        other.angryeffectid = id
    }
}
if ((global.combotime > 0) && (global.combopause == 0))
    global.combotime -= 0.15
if (global.combotime > 50)
	global.combotime = 50
if (global.combotime <= 1 && global.combo != 0)
{
    if (global.combo >= 5)
        scr_soundeffect(sfx_thatsprettygood)
	global.combotime = 0
    global.combo = 0
}
if (input_buffer_jump < 8)
    input_buffer_jump++
if (input_buffer_secondjump < 8)
    input_buffer_secondjump++
if (input_buffer_highjump < 8)
    input_buffer_highjump++
if (key_particles == 1)
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
if (inv_frames == 0 && hurted == 0)
    image_alpha = 1
if (state == (70 << 0) || state == (49 << 0) || state == (72 << 0) || (state == (60 << 0) && sprite_index == spr_playerN_noisebombspinjump) || state == (10 << 0) || state == (46 << 0) || state == (25 << 0) || state == (16 << 0) || state == (13 << 0) || state == (19 << 0) || state == (26 << 0) || state == (28 << 0) || state == (36 << 0) || state == (42 << 0) || state == (36 << 0) || state == (39 << 0) || state == (93 << 0) || state == (76 << 0) || state == (65 << 0))
    attacking = 1
else
    attacking = 0
if (state == (43 << 0) || state == (49 << 0) || state == (50 << 0) || state == (52 << 0) || state == (51 << 0))
    grabbing = 1
else
    grabbing = 0
if (state == (70 << 0) || state == (96 << 0) || state == (15 << 0) || state == (93 << 0) || (state == (60 << 0) && sprite_index == spr_playerN_noisebombspinjump) || state == (62 << 0) || (state == (75 << 0) && thrown == 1) || state == (72 << 0) || state == (18 << 0) || state == (76 << 0) || state == (2 << 0) || state == (6 << 0) || state == (7 << 0) || state == (9 << 0) || state == (46 << 0) || state == (37 << 0) || state == (65 << 0) || state == (39 << 0) || state == (42 << 0) || state == (10 << 0) || (state == (45 << 0) && sprite_index == spr_piledriver) || state == (25 << 0) || state == (26 << 0) || state == (19 << 0) || state == (16 << 0) || state == (13 << 0) || state == (11 << 0))
    instakillmove = 1
else
    instakillmove = 0
if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed)
if (state != (93 << 0) && state != (73 << 0))
    autodash = 0
if ((state != (60 << 0) && state != (69 << 0) && state != (12 << 0)) || vsp < 0)
    fallinganimation = 0
if (state != (79 << 0) && state != (0 << 0) && state != (73 << 0))
    facehurt = 0
if (state != (0 << 0) && state != (73 << 0))
    machslideAnim = 0
if (state != (0 << 0))
{
    idle = 0
    dashdust = 0
}
if (state != (71 << 0) && state != (60 << 0) && state != (9 << 0) && state != (23 << 0) && state != (0 << 0) && state != (72 << 0) && state != (93 << 0) && state != (94 << 0) && state != (25 << 0) && state != (40 << 0) && state != (19 << 0))
    momemtum = 0
if (state != (65 << 0) && state != (67 << 0))
    a = 0
if (state != (36 << 0))
    facestompAnim = 0
if (state != (76 << 0) && state != (36 << 0) && state != (45 << 0) && state != (79 << 0))
    superslam = 0
if (state != (72 << 0))
    machpunchAnim = 0
if (state != (60 << 0))
    ladderbuffer = 0
if (state != (60 << 0))
    stompAnim = 0
if ((state == (93 << 0) || (state == (113 << 0) && instance_exists(obj_player2) && obj_player2.state == (93 << 0)) || state == (70 << 0) || pizzapepper > 0 || state == (15 << 0) || state == (49 << 0) || state == (72 << 0) || (state == (60 << 0) && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == (18 << 0) || state == (9 << 0) || state == (39 << 0) || state == (10 << 0) || state == (23 << 0) || state == (73 << 0)) && macheffect == 0)
{
    macheffect = 1
    toomuchalarm1 = 6
    with (instance_create(x, y, obj_mach3effect))
    {
        playerid = other.object_index
        image_index = (other.image_index - 1)
        image_xscale = other.xscale
        sprite_index = other.sprite_index
    }
}
if (!((state == (93 << 0) || (state == (113 << 0) && instance_exists(obj_player2) && obj_player2.state == (93 << 0)) || state == (70 << 0) || pizzapepper > 0 || state == (15 << 0) || state == (49 << 0) || state == (72 << 0) || (state == (60 << 0) && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == (18 << 0) || state == (9 << 0) || state == (39 << 0) || state == (10 << 0) || state == (23 << 0) || state == (73 << 0))))
    macheffect = 0
if (toomuchalarm1 > 0)
{
    toomuchalarm1 -= 1
    if (toomuchalarm1 <= 0 && (state == (93 << 0) || (state == (113 << 0) && instance_exists(obj_player2) && obj_player2.state == (93 << 0)) || state == (70 << 0) || pizzapepper > 0 || state == (15 << 0) || state == (49 << 0) || state == (18 << 0) || (state == (60 << 0) && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == (9 << 0) || state == (72 << 0) || state == (10 << 0) || state == (73 << 0) || state == (39 << 0) || state == (23 << 0) || (state == (35 << 0) && mach2 >= 100)))
    {
        with (instance_create(x, y, obj_mach3effect))
        {
            playerid = other.object_index
            image_index = (other.image_index - 1)
            image_xscale = other.xscale
            sprite_index = other.sprite_index
        }
        toomuchalarm1 = 6
    }
}
if (y < -800)
{
    x = roomstartx
    y = -500
    state = (76 << 0)
    vsp = 10
}
if (character == "S")
{
    if (state == (69 << 0) || state == (68 << 0))
        state = (0 << 0)
}
if (!(place_meeting(x, y, obj_solid)))
{
    if (state != (74 << 0) && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != (2 << 0) && state != (33 << 0) && state != (6 << 0) && state != (68 << 0) && state != (16 << 0) && state != (41 << 0) && sprite_index != spr_player_crouchshoot && state != (67 << 0) && state != (35 << 0) && state != (39 << 0) && state != (75 << 0) && state != (70 << 0) && state != (69 << 0))
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
}
else if place_meeting(x, y, obj_solid)
    mask_index = spr_crouchmask
if (character == "S" && state == (28 << 0))
    mask_index = spr_player_mask
else if (character == "S")
    mask_index = spr_crouchmask
if (state == (24 << 0) || sprite_index == spr_knightpepstart || sprite_index == spr_knightpepthunder || state == (58 << 0) || state == (80 << 0) || state == (4 << 0) || state == (66 << 0) || state == (63 << 0) || state == (57 << 0))
    cutscene = 1
else
    cutscene = 0
if (((place_meeting(x, y, obj_door) && (!(place_meeting(x, y, obj_doorblocked)))) || place_meeting(x, y, obj_dresser) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == (0 << 0) && obj_player1.spotlight == 1)
{
    with (instance_create(x, y, obj_uparrow))
        playerid = other.object_index
}
if (state == (72 << 0) && (!instance_exists(speedlineseffectid)))
{
    with (instance_create(x, y, obj_speedlines))
    {
        playerid = other.object_index
        other.speedlineseffectid = id
    }
}
scr_collide_destructibles()
if (state != (8 << 0) && state != (113 << 0) && state != (80 << 0) && state != (65 << 0) && state != (4 << 0) && state != (63 << 0) && state != (90 << 0) && state != (58 << 0) && state != (66 << 0) && state != (20 << 0) && state != (38 << 0) && state != (24 << 0) && state != (57 << 0))
    scr_collide_player()
if (state == (90 << 0))
    scr_collide_player()
