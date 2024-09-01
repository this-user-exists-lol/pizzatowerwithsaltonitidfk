font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_color(c_white)
if (room != strongcold_endscreen)
    draw_sprite_ext(tvsprite, -1, 832, 100, 1, 1, 1, c_white, alpha)
draw_text(xi, yi, string_hash_to_newline(message))
if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo))
    draw_text(852, 100, string_hash_to_newline(global.combo))
if (tvsprite == spr_tvdefault && room != strongcold_endscreen && global.miniboss == 0)
{
    chose = 0
    if (global.coop == 0)
        draw_text(832, 88, string_hash_to_newline(global.collect))
    else
    {
        draw_text(832, 40, string_hash_to_newline(global.collect))
        draw_text(832, 80, string_hash_to_newline(global.collectN))
    }
}
else if (global.miniboss == 1)
    draw_text(832, 60, string_hash_to_newline(global.boxhp))
draw_text(832, 300, ((string(global.gotprank) + " ") + "P RANK"))
draw_text(832, 400, ((string(global.roomchanged) + " ") + "ROOM CHANGED"))
var barxx = -40
var baryy = -50
draw_sprite(spr_barpop, 0, (832 + barxx), (250 + baryy))
var sw = sprite_get_width(spr_barpop)
var sh = sprite_get_height(spr_barpop)
var b = (global.combotime / 55)
draw_sprite_part(spr_barpop, 1, 0, 0, (sw * b), sh, (832 + barxx), (250 + baryy))
