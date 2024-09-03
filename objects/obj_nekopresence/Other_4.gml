roomname = room_get_name(room)

if (room == characterselect)
	global.currentlevel = "The Character Select"
if (string_letters(roomname) == "Realtitlescreen" || string_letters(roomname) == "Realtitlescreen")
	global.currentlevel = "The Menus"
if (string_letters(roomname) == "tower" || string_letters(roomname) == "Titlescreen" || string_letters(roomname) == "tower_entrance")
	global.currentlevel = "The Hub"
if (string_letters(roomname) == "PProom" || string_letters(roomname) == "PProom")
	global.currentlevel = "The Tutorial"
if (string_letters(roomname) == "entrance")
	global.currentlevel = "John Gutter"
if (string_letters(roomname) == "medieval")
	global.currentlevel = "Pizzascape"
if (string_letters(roomname) == "dungeon")
	global.currentlevel = "Bloodsauce Dungeon"
if (string_letters(roomname) == "ruin")
	global.currentlevel = "Ancient Cheese"
if (string_letters(roomname) == "chateau")
	global.currentlevel = "Pizzascare"
if (string_letters(roomname) == "strongcold")
	global.currentlevel = "Strongcold"
if (string_letters(roomname) == "dragonlair")
	global.currentlevel = "The Dragon's Lair"