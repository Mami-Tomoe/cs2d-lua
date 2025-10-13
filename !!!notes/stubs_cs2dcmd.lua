--- @meta stubs_hc2

--- Select if you want to have automatic help or not.
--- Additional texts and instructions will appear if this is set to 1.
--- (0/1)
function hc.cs2d.ah(help) end

--- Buy AK47
function hc.cs2d.ak47() end

--- Create an alias. An alias can be used like a normal script command.
--- It executes one or more other commands (it's like a shortcut).
--- For example:
--- alias "test" "echo test!; echo 123"
--- This creates the new alias/command "test" which prints the lines "test!" and "123" in your console.
function hc.cs2d.alias(alias, script) end

--- Show a list of aliases in console
function hc.cs2d.aliases() end

--- Attack with your selected weapon.
function hc.cs2d.attack() end

--- Alternative attack. Is not available for most weapons.
--- Switches the weapon mode (zoom, silencer, burst, color etc.) for several weapons.
function hc.cs2d.attack2() end

--- Buy AUG
function hc.cs2d.aug() end

--- Automatically tries to purchase the best items which are available for your money.
function hc.cs2d.autobuy() end

--- Select if you want to make screenshots of the scoreboard automatically after each round.
--- Same as hud_takesshots!
--- (0/1)
function hc.cs2d.autoscreen(autoscreen) end

--- You will automatically switch to the weapon you collect if this is set to 1.
--- Otherwise you will just collect it without switching to it automatically.
--- (0/1)
function hc.cs2d.autoswitch(audioswitch) end

--- Buy AWP
function hc.cs2d.awp() end

--- Move player backward.
function hc.cs2d.back() end

--- Bans an IP address. Players with this IP will not be able to join anymore.
--- This command supports wildcards (*). The address does always have to have 3 dots even when using wildcards. Some examples:
--- 123.*.*.* = ban every ip starting with 123
--- *.*.*.123 = ban every ip ending with 123
--- *.123.234.* = ban every ip with 123.234 in the middle
--- The following ban addresses are NOT supported! Do NOT use comparable bans:
--- 123.* = not enough dots
--- *.123.234 = not enough dots
--- 12*.*.* = mixed digits and * (12*) are not supported
--- You can also specify a duration if you want the ban to be temporary only. Use -1 if you want to use the value of mp_tempbantime as duration or use a value >0 to specify the ban duration in minutes.
--0 means that the ban will be infinite (default).
--- Use reason to specify a ban reason. This will be displayed when affected players are removed from the server or when they try to join.
function hc.cs2d.banip(ip, duration, reason) end

--- Bans a name. Players with this name will not be able to join anymore.
--- You can also specify a duration if you want the ban to be temporary only. Use -1 if you want to use the value of mp_tempbantime as duration or use a value >0 to specify the ban duration in minutes.
--0 means that the ban will be infinite (default).
--- Use reason to specify a ban reason. This will be displayed when affected players are removed from the server or when they try to join.
function hc.cs2d.banname(name, duration, reason) end

--- Shows a list of all bans at your server (as server only).
--- Same as listbans.
function hc.cs2d.bans() end

--- Bans a Steam account. The player with this account will not be able to join if they're playing CS2D using this Steam account.
--- You can also specify a duration if you want the ban to be temporary only. Use -1 if you want to use the value of mp_tempbantime as duration or use a value >0 to specify the ban duration in minutes.
--- 0 means that the ban will be infinite (default).
--- Use reason to specify a ban reason. This will be displayed when affected players are removed from the server or when they try to join.
function hc.cs2d.bansteam(id, duration, reason) end

--- Bans an U.S.G.N. account. The player with this account will not be able to join if they're logged in.
--- You can also specify a duration if you want the ban to be temporary only. Use -1 if you want to use the value of mp_tempbantime as duration or use a value >0 to specify the ban duration in minutes.
--- 0 means that the ban will be infinite (default).
--- Use reason to specify a ban reason. This will be displayed when affected players are removed from the server or when they try to join.
function hc.cs2d.banusgn(id, duration, reason) end

--- Binds a command or script to a key. Afterwards you can execute the script by pressing that key.
--- For example:
--- bind "L" "say lol"
--- Afterwards you can say "lol" by pressing the "L"-button on your keyboard.
function hc.cs2d.bind(key, script) end

--- Open the bots menu.
function hc.cs2d.bot() end

--- Adds a bot to the team with less players.
function hc.cs2d.bot_add() end

--- Adds a counter-terrorist bot.
function hc.cs2d.bot_add_ct() end

--- Adds a terrorist bot.
function hc.cs2d.bot_add_t() end

--- Automatically fill the server with bots. bot_count will be ignored if you enable auto fill.
--- Bots will only join the team(s) you specify with bot_jointeam.
--- Moreover auto fill is affected by the setting bot_keepfreeslots.
--- All slots will be filled if bot_keepfreeslots is 0.
--- The server will try to keep 1-2 free slots to allow players to join if bot_keepfreeslots is 1.
--- (0/1)
function hc.cs2d.bot_autofill(auto_fill) end

--- Select how many bots will join the server after starting it.
--- It does not have any effect when you execute it after starting. Use bot_jointeam to control which team(s) the bots will join.
--- The value of bot_count will be ignored if you use auto fill (bot_autofill).
--- (0/32)
function hc.cs2d.bot_count(count) end

--- This setting allows you to freeze/unfreeze bots. When it is set to 1, all bots will be frozen.
--- This means that the AI Lua functions will not be invoked anymore.
--- This will result in bots which do not move anymore.
--- (0/1)
function hc.cs2d.bot_freeze(freeze_bots) end

--- Select which teams bots will join. This setting is only used if bot_count is set to a value > 0 or if bot_autofill is 1.
--- Possible settings:
--- 0 - bots will join both teams
--- 1 - bots will only join the terrorist forces only
--- 2 - bots will only join the counter-terrorist forces only
function hc.cs2d.bot_jointeam(team) end

--- This setting affects auto filling (bot_autofill). The server will try to keep 1-2 free slots to allow players to join if it is enabled.
--- It will automatically kick bots to achieve this.
--- bot_keepfreeslots kicks just one bot if the server is full but it also tries to keep the game balanced.
--- So if kicking one bot leads to an imbalanced game it may also kick another one to keep the team sizes equal.
--- This leads to the fact that this command may keep 1 or 2 player slots free.
--- (0/1)
function hc.cs2d.bot_keepfreeslots(keep_free_slots) end

--- Kill all bots.
function hc.cs2d.bot_kill() end

--- Sets a prefix for all bot names. This makes it easier to see which players are bots.
--- You have to change this setting BEFORE bots join. It does NOT affect bots who already joined.
--- Set it to "" if you don't want to use a prefix for bots.
--- The default bot prefix is "[b]".
function hc.cs2d.bot_prefix(prefix) end

--- Remove a random bot.
function hc.cs2d.bot_remove() end

--- Remove all bots on the server.
function hc.cs2d.bot_remove_all() end

--- Remove a counter-terrorist bot.
function hc.cs2d.bot_remove_ct() end

--- Remove a terrorist bot.
function hc.cs2d.bot_remove_t() end

--- Sets the skill level of all bots. This mainly affects reaction times and aiming speed.
--- low to high (1-4)
function hc.cs2d.bot_skill(skill) end

--- Defines which weapons bots will buy and use:
--- 0 - all weapons (default)
--- 1 - melee only
--- 2 - pistols only
--- 3 - shotguns only
--- 4 - smgs only
--- 5 - riles only
--- 6 - sniper rifles only
--- 7 - mgs only
function hc.cs2d.bot_weapons(weapons) end

--- Shooting creates bullets.
--- Disable this on slow systems!
--- (0/1)
function hc.cs2d.bullets(draw) end

--- Open the buy menu.
function hc.cs2d.buy() end

--- Buy ammunition for your primary weapon (slot1).
function hc.cs2d.buyammo1() end

--- Buy ammunition for your secondary weapon (slot2).
function hc.cs2d.buyammo2() end

--- Open the buy menu for equipment.
function hc.cs2d.buyequip() end

--- Changes the map on the server.
--- map must be the name of an existing map-file inside the "maps"-folder WITHOUT the ".map"-extension.
function hc.cs2d.changelevel(map) end

--- Changes the map on the server.
--- map must be the name of an existing map-file inside the "maps"-folder WITHOUT the ".map"-extension.
function hc.cs2d.changemap(map) end

--- Open the menu for team selection.
--- Same as team!
function hc.cs2d.chooseteam() end

--- Clears the console output.
function hc.cs2d.clear() end

--- This settings is recommended for experienced users only! It forces the game to use a specific UDP port in client mode.
--- It is recommended to use 0 (auto detection). In this case CS2D will find a free UDP port automatically.
--- (0-65535): local port, 0 = auto detect
function hc.cs2d.clientport(port) end

--- Close all open windows
function hc.cs2d.close() end

--- CMSG is short for console message.
--- It displays a console message in the console of a certain player or in the console of all players.
--- Omit the player parameter or insert 0 for it if you want to send the message to everyone.
function hc.cs2d.cmsg(message, player) end

--- Select the speed of your internet connection.
--- internect connect slow (0) - fast (2)
function hc.cs2d.connection(speed) end

--- Shows a list of active UDP connections in the console.
--- UDP is actually stateless but CS2D uses a lightweight stateful protocol on top of UDP to handle messages.
--- This protocol saves a state for each active UDP "connection".
--- Format:
--- IPORT - in #IN-ID (IN-COUNT), out #OUT-ID (OUT-COUNT) - BUFFERED-KB kb buffered (BUFFERED-B b)
--- IP: Remote IP Address
--- PORT: Remote Port
--- IN-ID: Expected ID for the next incoming reliable UDP packet
--- IN-COUNT: Number of buffered incoming UDP packets (buffered in case they did not arrive in the right order and CS2D has to wait for the right package to process the others)
--- OUT-ID: ID which will be assigned to the next outgoing packet
--- OUT-COUNT: Number of buffered outgoing UDP packets (for re-sending in case of packet loss)
--- BUFFERED-KB: kilobytes of data buffered (incoming + outgoing packets)
--- BUFFERED-B: same as above but in bytes (~ *1024)
function hc.cs2d.connections() end

--- Open or close the console.
function hc.cs2d.console() end

--- Copy the address of the server you are currently playing on to the clipboard.
function hc.cs2d.copyaddress() end

--- Simulate a kill with a custom weapon (as server only).
--This will also generate an appropriate death notice in the top right corner of the screen and give the killer an additional kill in the scoreboard.
--- Use killer 0 for suicides or "environment kills".
--- You can also specify a custom kill image in addition to the weapon name.
--- Both are in the weapon parameter and they have to be separated with a comma.
--- This image will only be displayed if the setting deathnoticeimg is set to 1! Otherwise the game will just display the text.
--- So the format for weapon can either be
--- "weapon name" or "weapon name,image path"
--- Note that you have to use quotes as soon as there are any spaces in the weapon name or in the weapon path! You don't have to use quotes around this parameter if there are no spaces.
--- Sample 1: Player 1 kills player 2 with a custom weapon (name only)
--- customkill 1 "Random Weapon Name" 2
--- Sample 2: Player 1 kills player 2 with a custom weapon and a custom kill image
--- customkill 1 "Random Weapon Name,gfx/gui_server.bmp" 2
--- Sample 3: Player 3 is killed by the environment (because killer is 0)
--- customkill 0 "Trap" 3
function hc.cs2d.customkill(killer, weapon, victim) end

--- Damages or repairs a certain object on the map.
--- Positive values lead to damage
--- Negative values lead to repair/healing
--- You can also specify a player who causes the damage/repair (all connected game rules will then be applied)
--- or use 0 as player ID if the damage/repair is not performed by a certain player.
function hc.cs2d.damageobject(id, damage, player) end

--- Causes damage to a specific tile. The damage only affects static objects on that tile (env_breakable entities and buildings).
--- Other objects (e.g. players or NPCs) are NOT affected.
--- Works as server only.
--- map x position (in tiles)
--- map y position (in tiles)
--- amount of damage
function hc.cs2d.damagetile(tx, ty, damage) end

--- Buy Desert Eagle
function hc.cs2d.deagle() end

--- Control if you want to see plain text (0) or little weapon icons (1) for death notices.
--- Death notices are the messages which are displayed in the top right corner of the screen whenever a player dies or is killed.
--- (0/1)
function hc.cs2d.deathnoticeimg(show_images) end

--- Slap a player to death (kill him).
function hc.cs2d.deathslap(player) end

--- Changes the debug mode. There are 3 different modes:
--- 0 - debug disabled: No debug info. Recommended for normal playing.
--- 1 - debug mode: Shows additional debug messages and the FPS (frames per second) in the top left corner
--- 2 - profile mode: Shows detailed performance information
function hc.cs2d.debug(debug) end

--- Show additional bot AI debug information or not
--- (0/1)
function hc.cs2d.debugai(debug_AI) end

--- Create debug logs (plain text files) with the whole console output (1, default) or not (0)?
function hc.cs2d.debuglog(create_logs) end

--- Enable or disable the Lua debug mode with additional console outputs about Lua scripts
--- (0/1)
function hc.cs2d.debuglua(debug_lua) end

--- Show stat system debug information
function hc.cs2d.debugstats() end

--- Buy defuse kit
function hc.cs2d.defuser() end

--- Leave the current game and go to the main menu
--- same as exit
function hc.cs2d.disconnect() end

--- Show the direction from where you get damage if it is activated. This helps to find enemies.
--- (0/1)
function hc.cs2d.dmgindicator(show) end

--- Controls which files the client accepts when the server is trying to send missing files (like sprites and sounds used by Lua scripts).
--- 0 - accept no files
--- 1 - accept all files (max. 16 mb)
--- 2 - accept all images (max. 16 mb)
--- 3 - accept all sounds (max. 16 mb)
--- 4 - accept all files with a size of less than 50 kb
--- 5 - accept all files with a size of less than 100 kb
--- 6 - accept all files with a size of less than 250 kb, default
--- 7 - accept all files with a size of less than 500 kb
--- 8 - accept all files with a size of less than 1 mb
--- 9 - accept all files with a size of less than 2 mb
--- 10 - accept all files with a size of less than 3 mb
function hc.cs2d.download(mode) end

--- Draw your radar or hide it.
--- (0/1): hide (0) or draw (1) radar
function hc.cs2d.drawradar(draw) end

--- Drop your current weapon.
function hc.cs2d.drop() end

--- Print a message to the console. Can be used for script debugging or information.
--- Example:
--- echo Hello World!
function hc.cs2d.echo(message) end

--- Creates particle effects on the map. The usage of the parameters depends on the type.
--- You can use r,g,b to define a color for some of the effects (use a colorpicker to get the values).
--- However this doesn't work for all effects! See list below for details.
--- The amount is limited to a maximum of 100 in most cases!
---
--- "fire"
--- fire particles (yellow/orange/red).
--- p1=amount (max 100), p2=radius
--- r,g,b=no influence!
---
--- "smoke"
--- smoke particles (gray).
--- p1=amount (max 100), p2=radius
--- r,g,b=no influence!
---
--- "blood"
--- blood effect (red).
--- p1=amount (max 35), p2=spray velocity (only affects about 1/3 of the particles)
--- r,g,b=no influence!
---
--- "flare"
--- flare particles in defined color.
--- p1=amount (max 100), p2=radius
--- r,g,b=color
---
--- "colorsmoke"
--- smoke particles in defined color.
--- p1=amount (max 100), p2=radius
--- r,g,b=color
---
--- "sparkles"
--- sparkle effect in defined color.
--- p1=amount (max 50), p2=no influence!
--- r,g,b=color
function hc.cs2d.effect(effect, x, y, p1, p2, r, g, b) end

--- Buy Elite
--- Same as elites
function hc.cs2d.elite() end

--- Buy Elite
--- Same as elite
function hc.cs2d.elites() end

--- Ends the current round.
--- There will be a radio message and a text message in the centre of the screen, saying that there's either a draw or a win for a specific team.
--- Moreover team scores will be changed (unless it's a draw). Additionally after a 5 second delay a new round will be started.
--- This includes spawning all players at spawn points, giving them money etc.
--- There are three different modes to end the round:
--- 0 - Draw (no changes in team scores)
--- 1 - Terrorists Win (team score +1 for Ts)
--- 2 - Counter-Terrorists Win (team score +1 for CTs)
--- (0/2)
function hc.cs2d.endround(mode) end

--- Give a weapon to a player (as server only). The weapon can be specified using its ID or its name.
--- The name can be the displayed name or a simplified version (lowercase without whitespaces/special characters, just letters and numbers)
--- Weapon and item IDs:
--- https://cs2d.com/img/ref_items.png
--- Usage examples (equipping to player 1 here, which is always you when using "New Game"):
--- equip 1 51 // ID
--- equip 1 "Molotov Cocktail" // full name
--- equip 1 ak47 // simplified name
--- equip 1 fiveseven // simplified name
function hc.cs2d.equip(player, weapon) end

--- Execute all scripts in a script (text) file.
--- Same as include!
function hc.cs2d.exec(file) end

--- Leave the current game and go to the main menu
--- same as disconnect
function hc.cs2d.exit() end

--- Create an explosion somewhere at the map (as server only).
--- You can specify a source player. This player will get the score etc. when the explosion kills someone.
--- However you don't have to. Just don't enter the last parameter or enter a 0 for it when your explosion is not caused by a player.
--- x position in pixels
--- y position in pixels
--- (0-X): size/range in pixels
--- (0-X): explosion damage
--- (0-32): source player id, 0 for no player as source
--- https://www.youtube.com/watch?v=-8rTfTm6JN0&t=6s
function hc.cs2d.explosion(x, y, size, damage, source_player) end

--- Buy Famas
function hc.cs2d.famas() end

--- Buy flare grenade
function hc.cs2d.flare() end

--- Buy Flashbang
function hc.cs2d.flash() end

--- Switch your flashlight on/off.
--- Only works if the server variable mp_flashlight is set to 1.
--- Flashlights only work properly in maps with env_room and enabled light system.
function hc.cs2d.flashlight() end

--- Flash one or all players.
--- (0-32): player who will be flashed (0 for all)
--- (0-100): flash intensity
function hc.cs2d.flashplayer(player, intensity) end

--- Flash all players who are close to the position + which have a direct line of sight to this position (without wall).
--- Pretty similar to the explosion of a flashbang.
function hc.cs2d.flashposition(x, y, intensity) end

--- Buy FN57
function hc.cs2d.fn57() end

--- Move player forward.
function hc.cs2d.forward() end

--- Set the opacity of the fog of war.
--- (0-100): invisible (0) - opaque/black (100)
function hc.cs2d.fowalpha(opacity) end

--- Select how detailed fog of war is.
--- High fog of war details can slow down the game on slow systems!
--- (0-1): details of fog
function hc.cs2d.fowdetails(details) end

--- Prints the current FPS value (frames per second) to the console.
--- CS2D's FPS are limited to 60.
function hc.cs2d.fps() end

--- Instantly frees a projectile with a certain ID by a certain player.
--- The projectile will not detonate anymore when it is removed this way.
--- (1-X): projectile id
--- (0-32): id of a player (0 if not spawned by player)
function hc.cs2d.freeprojectile(id, player) end

--- Buy G3SG1
function hc.cs2d.g3sg1() end

--- Buy Galil
function hc.cs2d.galil() end

--- Buy Glock
function hc.cs2d.glock() end

--- Select how much blood you want to see.
--- Warning: Much blood costs a lot of speed. Don't use a high value for gore on slow systems!
--- (0-4): level of blood and gore from 0 (nothing) to 4 (carnage!!!)
function hc.cs2d.gore(level_of_gore) end

--- Select the grenade throwing mode. 1 for a static distance like in old cs2d versions or 0 for a dynamic distance.
--- You select the distance with your crosshair if this setting is 0!
--- (0/1): use a static distance (1) or select distance with your crosshair (0)
function hc.cs2d.grenademode(static) end

--- Buy HE grenade
function hc.cs2d.hegren() end

--- Display or hide a text on the screen of EVERY player (as server only).
--- Just enter the first parameter (id) and leave out all other parameters in order to hide an existing text.
--- The position (x, y) is in pixels and defines the text position on the screen.
--- The horizontal alignment parameters mean:
--- 0 - left alignment (normal)
--- 1 - centre alignment
--- 2 - right alignment
--- The vertical alignment parameters mean:
--- 0 - top alignment (normal, text will be UNDER the y coordinate)
--- 1 - centre alignment
--- 2 - bottom alignment (text will be OVER the y coordinate)
--- You can also use color codes (use a colorpicker to get the values) at the beginning and in-line! Colors are encoded as RGB values.
--- Format: �RRRGGGBBB (with each part RRR, GGG and BB ranging from 000 to 255)
--- For example: "�255000000This is a red text" or "The following text is �000000255blue"
--- (0-199): internal text id
--- the text you want to display
--- (0-850): x position
--- (0-480): y position
--- (0,1,2)(optional): horizontal alignment
--- (0,1,2)(optional): vertical alignment
--- (10-100)(optional): font size/height in pixels, 13 by default
function hc.cs2d.hudtxt(id, text, x, y, align, valign, size) end

--- Display or hide a text on the screen of a certain player (as server only), specified via player.
--- Just enter the first two parameters (player, id) and leave out all other parameters in order to hide an existing text.
--- The position (x, y) is in pixels and defines the text position on the screen.
--- The horizontal alignment parameters mean:
--- 0 - left alignment (normal)
--- 1 - centre alignment
--- 2 - right alignment
--- The vertical alignment parameters mean:
--- 0 - top alignment (normal, text will be UNDER the y coordinate)
--- 1 - centre alignment
--- 2 - bottom alignment (text will be OVER the y coordinate)
--- You can also use color codes (use a colorpicker to get the values) at the beginning and in-line! Colors are encoded as RGB values.
--- Format: �RRRGGGBBB (with each part RRR, GGG and BB ranging from 000 to 255)
--- For example: "�255000000This is a red text" or "The following text is �000000255blue"
--- (1-32): id of a player
--- (0-199): internal text id
--- the text you want to display
--- (0-850): x position
--- (0-480): y position
--- (0,1,2)(optional): horizontal alignment
--- (0,1,2)(optional): vertical alignment
--- (10-100)(optional): font size/height in pixels, 13 by default
function hc.cs2d.hudtxt2(player, id, text, x, y, align, valign, size) end

--- Lets a HUD text (specified with id) change its alpha value. The transition will be smooth and will take the given time (duration).
--- You can let this effect be visible for all players (player=0) or to a certain player only (player=id of this player).
--- alpha must be a value between 0.0 (invisible) and 1.0 (fully opaque).
function hc.cs2d.hudtxtalphafade(player, id, duration, alpha) end

--- Clears all HUD texts created with hudtxt or hudtxt2.
--- Can either be executed for a specific player only (ID 1-32) or for all players by setting player to 0!
--- Clearing HUD texts is equal to setting all to empty strings.
--- They will become invisible instantly and it will also remove all applied effects (hudtxtmove/hudtxtalphafade/hudtxtcolorfade).
function hc.cs2d.hudtxtclear(player) end

--- Lets a HUD text (specified with id) change its color (use a colorpicker to get the values). The transition will be smooth and will take the given time (duration).
--- You can let this effect be visible for all players (player=0) or to a certain player only (player=id of this player).
--- The text needs to be set with hudtxt or hudtxt2 before you use this command.
--- (0-199): internal text id
--- (ms): color fade/transition effect in milliseconds
--- (0-255): new red color value
function hc.cs2d.hudtxtcolorfade(player, id, duration, red, green, blue) end

--- Lets a HUD text (specified with id) change its position. The transition will be smooth and will take the given time (duration).
--- You can let this effect be visible for all players (player=0) or to a certain player only (player=id of this player).
function hc.cs2d.hudtxtmove(player, id, duration, x, y) end

--- If you use your slot keys (numeric keys by default) you have to confirm your weapon selection with attack1 (mouse click).
--- Set fastswitch to 1 if you don't want to have this additional confirmation.
--- (0/1)
function hc.cs2d.hud_fastswitch(hud) end

--- Select if you want to make screenshots of the scoreboard automatically after each round.
--- Same as autoscreen!
--- (0/1)
function hc.cs2d.hud_takesshots(autoscreen) end

--- Execute all scripts in a script (text) file.
--- Same as exec!
function hc.cs2d.include(file) end

--- Select next weapon/item/slot.
function hc.cs2d.invnext() end

--- Select previous weapon/item/slot.
function hc.cs2d.invprev() end

--- Show item information in console (server only)
function hc.cs2d.items() end

--- Draw shadows under dropped items or hide these shadows.
--- (0/1)
function hc.cs2d.itemshadows(draw) end

--- Kick a certain player from the server. You can also state a short reason for the kick if you want to.
function hc.cs2d.kick(player, reason) end

--- Unfishen (become a cat)
function hc.cs2d.kill() end

--- Kill an object (as server only). Objects are buildings, mines, portals etc.
--- (1-X): ID of an object
function hc.cs2d.killobject(object_id) end

--- Kill a player (as server only).
function hc.cs2d.killplayer(player) end

--- Switch to the previously selected weapon/item.
function hc.cs2d.lastinv() end

--- Move player left.
function hc.cs2d.left() end

--- Select if players hold their weapons in their left or in their right hand.
--- (0/1)
function hc.cs2d.lefthand(lefthand) end

--- Shows a list of all bans at your server (as server only).
--- Same as bans.
function hc.cs2d.listbans() end

--- Display list of players on server in console. The list also contains all player IDs.
function hc.cs2d.listplayers() end

--- This settings is recommended for experienced users only! It forces the game to use a specific UDP port in client mode.
--- It is recommended to use 0 (auto detection). In this case CS2D will find a free UDP port automatically.
--- (0-65535): local port, 0 = auto detect
function hc.cs2d.localport(port) end

--- Send all console output to this address
--- (IP and Port): address of a server
function hc.cs2d.logaddress_add(address) end

--- Stop sending console output to this address
--- (IP and Port): address of a server
function hc.cs2d.logaddress_remove(address) end

--- Stop sending console output to any server
function hc.cs2d.logaddress_removeall() end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
--- Controls the logging behavior by batching multiple lines for writing. Writing data to a physical medium is expensive so CS2D allows to batch multiple lines and to write them together in order to decrease FPS drops caused by slow drive access.
--- CS2D can batch 1 to 300 lines. 1 means, that every logged line will be written to the underlying physical medium (HDD, SSD, ...) instantly.
--- A value >1 means, that CS2D will batch that many lines and will only write them once the given number is reached or once CS2D is closed. It may also write batched lines earlier in certain situations.
--- The default value is 50 (recommended under normal circumstances).
--- Attention: Batched log lines will get lost when CS2D crashes before writing them. Set this setting to 1 if you want to find the reason for a crash.
--- Attention: A low value may have a negative impact on the performance of your server and also the entire system it is running on.
--- A known attack used to crash CS2D servers is to cause as much logging output as possible in order to slow down the system.
--- Set this setting to a high value when you experience such problems.
--- (1-300): number of lines which will be batched for writing (default 50)
function hc.cs2d.logbatch(lines) end

--- High Security Relevance, this setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
--- Controls the MAXIMUM rate at which log lines can be written to the physical drive. Writing data to a physical medium is expensive so CS2D allows to control this behavior. The time is specified in milliseconds.
--- The default value is 1000 which means that log lines will be written to the drive max. once each second.
--- Keep in mind that this is only the maximum rate so they might also be written less frequently (depending on the logbatch setting).
--- Moreover the operating system can also enforce writing in certain situations (e.g. too many buffered lines and not enough RAM).
--- The minimum value for this setting is 0 which means that writing will not be limited in any way. The maximum value is 10000 which means max. 1 write operation will be triggered every 10 seconds.
--- (0-10000): Maximum flush rate in milliseconds (1000 ms = 1 sec, default 1000)
function hc.cs2d.logmaxflushrate(maxrate) end

--- Split debuglog files per day or not
--- (0/1) split files per day?
function hc.cs2d.logsplit(split) end

--- Control if you want to have timestamps in your debuglogs or not
--- (0/1) add debuglog timestamps?
function hc.cs2d.logstamp(add_stamps) end

--- Execute a line of Lua script (as server only)
--- (text)
function hc.cs2d.lua(script) end

--- Reset the whole Lua scriptengine and remove all loaded scripts/hooks/variables (as server only)
function hc.cs2d.luareset() end

--- Buy M249
function hc.cs2d.m249() end

--- Buy M3
function hc.cs2d.m3() end

--- Buy M4A1
function hc.cs2d.m4a1() end

--- Buy MAC10
function hc.cs2d.mac10() end

--- Make a player counter-terrorist.
--- (text): name or id of a player
function hc.cs2d.makect(player) end

--- Make a player spectator.
--- (text): name or id of a player
function hc.cs2d.makespec(player) end

--- Make a player terrorist.
--- (text): name or id of a player
function hc.cs2d.maket(player) end

--- Changes the map on the server. map must be the name of an existing map-file inside the "maps"-folder WITHOUT the ".map"-extension.
--- (text): name of a map
function hc.cs2d.map(map) end

--- Show map information and details in console
function hc.cs2d.mapinfo() end

--- Show a list of maps in console
function hc.cs2d.maps() end

--- Draw or hide map shadows. Disable map shadows on very slow systems!
--- (0/1): draw map shadows?
function hc.cs2d.mapshadows(draw) end

--- Use this setting to control if you want to hear sounds emitted by entities on the map.
--- (0/1): play map sounds?
function hc.cs2d.mapsounds(play) end

--- Mark your own player
--- (0/1): mark your own player (1) or not (0)
function hc.cs2d.markplayer(mark) end

--- Show memory information in console
function hc.cs2d.memory() end

--- Select the stated slot/menu. Works like the commands slot1, slot2, slot3 etc.
--- (a number between 0 and 10): number of slot/menu you want to select
--- slot/menu can be used in(    )
function hc.cs2d.menuselect(slot) end

--- Set the port which is scanned in the LAN serverlist in order to find servers in the local area network.
--- Only servers which are using the same port can be found.
--- (1-65535): UDP port to scan to find LAN servers
function hc.cs2d.menu_lanscanport(port) end

--- Buy MP5
function hc.cs2d.mp5() end

--- AntiClock is a basic protection against clock hackers.
--- It uses a number of different techniques to detect speedhackers.
--- It can be disabled or be enabled with one of 3 different detection options:
---
--- * 0 - Off
--- * 1 - Weak (default)
--- * 2 - Normal
--- * 3 - Strong
---
--- (0-3): use protection against clock hackers?
function hc.cs2d.mp_anticlock(anticlock_protection) end

--- AntiSpeeder is a basic protection against speedhackers.
--- It uses a number of different techniques to detect speedhackers.
--- It can be disabled or be enabled with one of 6 different punishments:
---
--- * 0 - Disabled
--- * 1 - Kick + Temp ban
--- * 2 - Kick
--- * 3 - Kill
--- * 4 - Slap with 10 damage
--- * 5 - Slap with 25 damage
--- * 6 - Slap with 50 damage
---
--- (0-6): use protection against speedhackers?
function hc.cs2d.mp_antispeeder(antispeeder_protection) end

--- When enabled (1) this function will automatically switch to the best game-mode when loading a map.
--- It simply checks the map prefix to find the best game-mode. "as_", "cs_" and "de_" will make it switch to the standard mode for example.
--- Game modes are:
--- 0 - Standard
--- 1 - Deathmatch
--- 2 - Team Deathmatch
--- 3 - Construction
--- 4 - Zombies
--- (0-1): automatically switch gamemode?
function hc.cs2d.mp_autogamemode(autogamemode) end

--- If this is set to 1, CS2D automatically tries to keep teams even by changing the team of players.
--- This happens as soon as one team has two players more than the other team.
function hc.cs2d.mp_autoteambalance(balance) end

--- Set the health for a building type. All buildings of that type will have this value has their new maximum health value.
--- Buildings (Class 1 only!): https://cs2d.com/img/ref_dynamicobjects
--- 1 - Barricade
--- 2 - Barbed Wire
--- 3 - Wall 1
--- 4 - Wall 2
--- 5 - Wall 3
--- 6 - Gate Field
--- 7 - Dispenser
--- 8 - Turrent
--- 9 - Supply
--- 10 - Build Place
--- 11 - Dual Turrent
--- 12 - Tripple Turrent
--- 13 - Teleporter Entrance
--- 14 - Teleporter Exit
--- 15 - Super Supply
function hc.cs2d.mp_building_health(building, health) end

--- Set the build limit for a building. Each player can only build the specified amount of that building.
--- The value can also be set to 0 to disallow building that building.
--- Buildings (Class 1 only!):
--- Set the build limit for a building. Each player can only build the specified amount of that building.
--- The value can also be set to 0 to disallow building that building.
---
--- Buildings (Class 1 only!):
--- https://cs2d.com/img/ref_dynamicobjects
---
--- Note: This will not affect buildings which are already built. e.g. if you already built 3 turrets, setting the limit to 0 will NOT destroy the turrets (but you won't be able to build more afterwards).
--- Attention: Make sure that you use the name exactly as the building is called in-game (see list above).
--- Attention: This does not affect upgrades. You can upgrade buildings always - even if you exceed the limit by doing that.
---
--- Examples:
--- mp_building_limit "Wall I" 5
function hc.cs2d.mp_building_limit(building, limit) end

--- Set the price for a building.
---
--- Buildings (Class 1 only!):
--- https://cs2d.com/img/ref_dynamicobjects
---
--- Attention: Make sure that you use the name exactly as the building is called in-game (see list above).
---
--- Examples:
--- mp_building_price "Wall II" 50
function hc.cs2d.mp_building_price(building, price) end

--- Changes the buy menu.
--- By default this setting is set to an empty string (""). The game will then use the standard buy menu.
---
--- You can specify a custom buy menu by entering a list of item IDs. You have to separate the IDs with , and |.
--- , (comma) separates the items in a group
---
--- | (pipe) separates the groups
---
---
--- The groups are the following:
--- handgun|shotgun|sub machine gun|rifle|machine gun|equipment
---
---
--- Each group can contain up to 9 comma-separated item IDs.
--- Groups with less items or even empty groups are possible as well.
---
--- Weapon and item IDs:
--- https://cs2d.com/img/ref_items.png
---
--- Sample:
--- mp_buymenu "1,2|11|20,22|30||51"
---
---
--- This sample will create a buy menu with the handguns USP (1) and Glock (2), the shotgun XM1014 (11), the sub machine guns MP5 (20) and P90 (22), the rifle AK-47 (30), no machine guns and a HE (51) as equipment.
---
--- Disabling the standard menu
--- Since CS2D 1.0.1.0 you can also use a minus ("-") as prefix.
--- Whenever the items start with "-" the standard buy menu won't be displayed.
--- The following options with "-" are possible:
--- "-": The buy menu will be disabled completely and you won't be able to buy anything
---
--- "-x": The buy menu will be disabled but you will be able to purchase all standard items (using corresponding commands)
---
--- "-..." (with ... being a custom buy menu definition): The buy menu will be disabled but you can purchase all items defined in ...
function hc.cs2d.mp_buymenu(items) end

--- Control how long players are allowed to buy equipment after roundstart.
--- Value in minutes! You can use floats!
--- Examples:
--- 0.25 = 0.25*60 Sec = 15 Sec
--- 0.5 = 0.5*60 Sec = 30 Sec
--- 2 = 2*60 = 120 Sec
function hc.cs2d.mp_buytime(time) end

--- Set the C4 (bomb) timer countdown in seconds. The bomb explodes after this time.
function hc.cs2d.mp_c4timer(time) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Controls how many concurrent UDP connections are allowed by the server.
---
--- UDP Connections are required for 3 things:
---
--- For players playing on the server (1 connection per player)
---
--- For players who load the serverlist and want to see the server (1 connection per player)
---
--- To be able to talk with the U.S.G.N. masterserver for serverlist entry and account verification (1 connection)
---
---
--- If the limit is reached, the server will not accept any new connections. This means, that nobody will be able to see the server in the serverlist anymore. Moreover Nobody will be able to join it anymore. This setting does not affect already established connections (e.g. players already playing on the server).
---
--- The MINIMUM value for this setting should always be max player count + 1. e.g. 17 if you have 16 players on your server. If you use this value however, nobody will be able to see your server in the serverlist anymore as all connections are in use and no new connection will be accepted. Therefore it's highly recommended to use a higher value.
---
--- The default value is 64. Going lower is not recommended unless you have problems with DDoS (distributed denial of service) attacks. Very high values are also not recommended as they can make your server more vulnerable to DDoS attacks.
---
--- Technical background:
--- UDP is a stateless protocol but CS2D works with a lightweight stateful protocol on top of UDP for reliable data transfer. To make that possible it establishes a virtual connection for each address it receives messages from or sends messages to. This virtual connection saves some state values like packet IDs, queues for reliable packets etc. Maintaining these virtual connections costs memory and CPU time. If attackers send many UDP messages from different sources (DDoS attacks), they can enforce the creation of many virtual connections which can slow down or even crash the server.
---
--- Note: You can use the connections command to get a list of all virtual UDP connections which are currently in memory.
--- Attention: Using a LOW connection limit might make your server inaccessible to new players, hide it from the serverlist or make U.S.G.N. verifications impossible!
--- Attention: Using a HIGH connection limit might make your server more vulnerable to DDoS attacks!
function hc.cs2d.mp_connectionlimit(limit) end

--- Explosions do not cause any damage through walls if this setting is set to 1.
--- Set it to 0 if you want explosions to cause damage through all walls.
function hc.cs2d.mp_curtailedexplosions(curtailed) end

--- The damage of weapons is multiplied with this factor. Change it to make players die faster or slower.
--- Examples:
--- 0.5 = half damage
--- 1 = normal damage
--- 2 = double damage
--- 0 = no damage
function hc.cs2d.mp_damagefactor(factor) end

--- Control what a player drops when they die or leave the game.
function hc.cs2d.mp_deathdrop(drop) end

--- Select how much health you get each second while standing close to a dispenser.
function hc.cs2d.mp_dispenser_health(health) end

--- Select how much money you get each second while standing close to a dispenser.
function hc.cs2d.mp_dispenser_money(money) end

--- Select how much money a player gets when respawning.
--- This setting affects game modes with respawn only (Deathmatch, Construction, ...).
--- It does not affect game modes where players spawn only once at the beginning of each round (like Standard mode).
function hc.cs2d.mp_dmspawnmoney(money) end

--- Select if the player is allowed to drop grenades (without activating them) or not.
function hc.cs2d.mp_dropgrenades(drop) end

--- Enable or disable flashlights on the server.
function hc.cs2d.mp_flashlight(flashlights) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Enable or disable the flood protection.
--- This is a general network protection against hackers who try to crash servers with massive amounts of messages.
---
--- Note: This is about net messages/packets with data - not about chat or radio messages!
--- Attention: Flood protection is an essential security module. Only disable if absolutely necessary!
function hc.cs2d.mp_floodprot(flood) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Controls how long IPs of people who try to attack the server with UDP message flooding will be ignored. The default duration is 600 seconds (10 minutes). The maximum possible duration is 86400 seconds (60*60*24 = 1 day).
---
--- Attention: This command has no effect if mp_floodprot is set to 0 (disabled)
function hc.cs2d.mp_floodprotignoretime(flood) end

--- Control the freezetime (for buying weapons). Players can't move or shoot during freezetime.
--- Set it to 0 if you do not want to have a freezetime!
function hc.cs2d.mp_freezetime(time) end

--- This settings controls if players are allowed to buy new grenades after throwing/dropping their old ones.
function hc.cs2d.mp_grenaderebuy(allowed) end

--- Kick player after X hostagekills.
--- Set this value to 0 if you don't want to kick players for hostages automatically.
function hc.cs2d.mp_hostagepenalty(kills) end

--- This server setting controls the visibility of certain texts which appear when you hover game objects in-game. The parameter must be the sum of the codes for all the texts which are supposed to be visible. Use 0 if you want to hide all texts or 31 to show all texts.
---
--- The codes are the following:
--- 1 - Player names
--- 2 - Player health
--- 4 - Hostages
--- 8 - Dynamic Objects (Buildings/NPCs/...)
--- 16 - Items
---
--- The default value for this setting is
--- 1+2+4+8+16 = 31, which means that all texts are visible
function hc.cs2d.mp_hovertext(Hover) end

--- This server setting controls the visibility of certain HUD elements. The parameter must be the sum of the codes for all the HUD elements which are supposed to be visible. Use 0 if you want to hide all HUD elements which are controlled by this setting.
---
--- The codes are the following:
--- 1 - Health
--- 2 - Armour
--- 4 - Time
--- 8 - Ammo
--- 16 - Money
--- 32 - Icons (like buyzone, rescuezone etc)
--- 64 - Kill Messages
---
--- The default value for this setting is
--- 1+2+4+8+16+32+64 = 127, which means that all HUD elements are visible
---
--- Example:
--- You just want to display health (1) and ammo (8) and hide everything else:
--- 1+8 = 9
---
--- Another Example:
--- Just make the time visible:
--- 4
---
--- Note: The radar is a HUD element as well but it has its own command: mp_radar.
--- Attention: Some of these HUD elements are not displayed in all game modes. Time for example. This command can not be used to display HUD elements which are not required in a game mode. You can hide them but you can not force to display them.
function hc.cs2d.mp_hud(HUD) end

--- Server setting to control how scripted HUD elements are scaled.
---
--- This setting affects: hudtxt, hudtxt2, Lua HUD images and also reqcld mode 0 (mouse position).
---
--- mp_hudscale has been implemented for backward compatibility with old CS2D versions. In CS2D 1.0.0.3 the standard game resolution has been changed to 850x480. In older versions it was 640x480. Therefore scripts drawing HUD elements need to be adjusted. This setting can be used with the value 2 or 3 if you want to simply scale or centre the graphics from old scripts without adjusting the script itself.
---
--- The following modes are supported:
--- 0 - no scaling, default
---
--- 1 - scale to fit screen if script is written for 850x480 resolution
---
--- 2 - scale to fit screen if script is written for 640x480 resolution (use this for old scripts)
---
--- 3 - no scaling but centre to fit screen if script is written for 640x480 resolution (use this for old scripts)
---
---
--- Note: Take a look at the Lua sample sys/lua/samples/hudimg.lua to get a better understanding of this setting!
--- Note: You can use player(id, "screenw") and player(id, "screenh") to get the actual game resolution of a player in your Lua scripts! This is especially useful for mode 0!
function hc.cs2d.mp_hudscale(Scale) end

--- Peform this action if mp_idlekick is 1 and if a player was idle too long (mp_idletime).
---
--- Possible actions are:
--- 0 - kick player (default)
---
--- 1 - switch the team of the player to spectator
---
--- 2 - slap the player
---
--- 3 - kill the player
---
--- 4 - show a message that the player is idle
function hc.cs2d.mp_idleaction(action) end

--- Set this to 1 if you want to perform an action on idle players (kick by default).
---
--- Also see mp_idletime and mp_idleaction!
function hc.cs2d.mp_idlekick(idle) end

--- Select how long players are allowed to be idle (no movement etc.). After this time the game will perform an action depending on mp_idleaction!
--- mp_idlekick has to be 1 to activate this function!
function hc.cs2d.mp_idletime(time) end

--- Make ammunition for all firearms (not grenades!) infinite (1) or finite (0).
--- It will replace the carried-ammo-display in your HUD with a infinity-symbol.
---
--- Please note that you still have to reload when infinite ammo is activated!
function hc.cs2d.mp_infammo(infinite) end

--- Controls how much damaged is absorbed by kevlar vests.
--- The internal calculation depends on this setting, the damage value and the armour points you have left.
---
--- Possible values range from 0.0 to 1.0 with:
--- 0.0 = no protection (0%)
--- 1.0 = best protection (100%)
---
--- the default value is 0.3 (30% protection)
---
--- The internal damage calculation works like described below in pseudo code.
---
--- // AP = armour points of the hit player
--- // HP = health points of the hit player
--- // DMG = damage the player receives
--- // MAX(X,Y) = returns the bigger of both values
--- // MIN(X,Y) = returns the smaller of both values (used here to keep value always >= 0)
---
--- // Calculate shielded damage
--- SHIELDED = MIN(DMG, AP)
---
--- // Reduce AP by shielded damage
--- AP = MAX(AP - SHIELDED, 0)
---
--- // Reduce HP by percentage of shielded damage (controlled by mp_kevlar)
--- HP = MAX(HP - (SHIELDED * (1.0 - mp_kevlar)), 0)
---
--- // Reduce HP by remaining unshielded damage (full damage)
--- DMG = DMG - SHIELDED
--- HP = MAX(HP - DMG, 0)
function hc.cs2d.mp_kevlar(percent) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Controls what percentage of all players has to kick-vote the same player in order to get that player kicked by the server.
--- Set this value to 0 to disable kick-voting completely.
--- e.g.: with 0.5, 50% or half of all players would have to vote for the same player in order to get that player kicked.
---
--- Attention: Make sure that the chosen value is high enough. Otherwise groups of trolls or fake clients might vote-kick innocent players!
--- Note: In earlier versions only the same team was counted for the percentage and you were only allowed to kick teammates. Now the whole player base is counted and everyone can vote to kick everyone!
function hc.cs2d.mp_kickpercent(percent) end

--- Select if players get money for killing buildings (construction mode).
function hc.cs2d.mp_killbuildingmoney(money) end

--- Select which buildings of a player will be killed (destroyed) when the player leaves the game.
---
--- Possible modes are:
--- 0: Kill all buildings when their builder leaves
---
--- 1: Kill all buildings except for walls
---
--- 2: Kill dispenser, turrets and supplies only, keep all other buildings
---
--- 3: Keep all buildings, kill nothing
function hc.cs2d.mp_killbuildings(kill) end

--- If this is set to 1 the server sends an information to every player who has been killed. It tells him who killed him and how much health and armour this player has left.
function hc.cs2d.mp_killinfo(info) end

--- Select if players are able to kill buildings of their teammates and if they get a penalty for this or not.
---
--- Players can always destroy their own buildings!
function hc.cs2d.mp_killteambuildings(mode) end

--- Compensate high pings of clients by using previous positions of players when checking for hits. Set this setting to 0 to completely disable lag compensation.
---
--- Since Beta 0.1.2.5 the default setting is 2 which means that pings up to 200 (0.2 seconds delay) will be compensated. Highest setting is 10 (1 second delay, a ping of 1000). The default setting in prior versions was 5.
---
--- Note: The lag compensation is limited to players. There is currently no compensation for other game objects (like NPCs).
--- Note: Using high values for this setting might lead to weird effects like still being hit (by compensated high ping player shots) after reaching safe cover. This however just looks weird. It does NOT give you a disadvantage.
function hc.cs2d.mp_lagcompensation(max) end

--- CS2D calculates the frame offset which is used for the lag compensation with the calculation frameOffset=Ceil(playerPing/mp_lagcompensationdivisor). A frame commonly takes 16.6 milliseconds(60 FPS, 1000/60) so 16 is the default value for this setting.
---
--- Note: This command has originally been implemented for fine tuning. CS2D's target FPS are 60 so it should not be necessary to change this value. It is however possible that you get better results by slightly increasing or decreasing the default value.
function hc.cs2d.mp_lagcompensationdivisor(divisor) end

--- You always see all console output of commands executed remotely (RCon) in the console/logs of your server when this setting is enabled (1, default).
--- Disable it (0) if you don't want to see this output on your server. Of course the client which performs the commands will receive all output anyway.
---
--- Attention: Disabling the local RCon output can be a security risk because it is hard to trace any remote control of your server without it!
function hc.cs2d.mp_localrconoutput(output) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Each map can have its own Lua script (also called "map script") which is saved as maps/MAPNAME.lua. A script for the map de_dust (maps/de_dust.map) would have to be saved as maps/de_dust.lua for example. By default (mp_luamap 0) CS2D does not load this script. You can enable automatic loading of map scripts by setting mp_luamap to 1.
---
--- Moreover this setting affects Lua scripts which are embedded in maps directly. This is currently only possible with the entity trigger_if which can have a boolean Lua expression. This expression will not be evaluated if mp_luamap is 0. In this case trigger_if will do nothing (it will neither run the Lua script nor run its triggers).
---
--- Note: Changes to this setting do NOT affect the currently loaded map. So if the map Lua script for the current map is (not) loaded, it won't be (un-)loaded by changing this setting. You have to load the map again AFTER changing this setting to (un-)load the map Lua script.
--- Attention: Setting mp_luamap to 1 is a security risk because CS2D can execute downloaded map scripts which may contain malicious scripts! This can only happen when you host your own server (dedicated or "New Game" option) with downloaded maps.
function hc.cs2d.mp_luamap(use) end

--- Name of the Lua script you want to load with your server. Use an empty string if you do not want to use Lua scripts.
function hc.cs2d.mp_luaserver(file) end

--- Select if players get additional score for map goals like bomb planting, defusing etc.
function hc.cs2d.mp_mapgoalscore(score) end

--- Select how much percent of all players have to vote the same map before the server changes to this map.
--- Set it to 0 in order to disable map-voting.
function hc.cs2d.mp_mapvoteratio(percent) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Set the maximum number of clients with the same IP which are allowed to be at the server simultaneously. This setting is a protection against attacks which work by joining with several clients (which are idle/fake) at the same time to fill a server and making it useless for real players that way (either by filling up all slots or by destroying game play with idle players or random/destructive player actions).
---
--- Attention: Set it to a low value (like 1) if you experience attacks with (fake) clients.
--- Attention: Set it to a high value (32) for LAN servers. Otherwise it may block people from your own LAN from joining your server.
function hc.cs2d.mp_maxclientsip(clients) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Limit for maximum rcon_password failures. Each failed attempt will be saved with IP address. CS2D ignores all rcon_password-attempts from this IP address as soon as the number exceeds the limit.
---
--- Set it to 0 to allow an infinite number of RCon login failures and to reset/delete the cache of failed logins.
---
--- Attention: It is highly recommended to use this setting with a low value higher than 0 in order to prevent RCon password bruteforcing. The default value is 5. You shouldn't set it higher unless it's really necessary.
function hc.cs2d.mp_maxrconfails(maxfails) end

--- Allow or disallow NAT hole punching. This technique makes use of the U.S.G.N. to increase the accessibility of servers behind NAT routers. It is enabled by default.
---
--- Set it to 0 to ignore NAT hole punching requests from the U.S.G.N.
function hc.cs2d.mp_natholepunching(allow) end

--- Use this setting to automatically kick all players who have a high ping.
--- Set it to 0 if you don't want to kick players because of their ping.
---
--- The ping is the time a UDP internet packet needs to be sent from the client to the server and back. Measured in milliseconds (1000 ms = 1 second). Pings around 100 and below are required for a good game experience. Otherwise everything will be delayed too much and you won't hit enemies properly.
---
--- Players with high pings are also harder to hit for players with good pings because they may "lag around" (movement isn't smooth). For that reason it can be a good idea to kick players with high pings. That's why this setting exists.
function hc.cs2d.mp_pinglimit(limit) end

--- Change the time (in seconds) in that players are allowed to spawn after the start of the round.
---
--- A "post-spawn" is only possible once after joining the server. So this is only for players who just joined the game and missed the last round start.
---
--- You can completely disable this feature by setting the value to 0. Then each new player will have to wait until the next round begins.
function hc.cs2d.mp_postspawn(time) end

--- This is a server setting which controls if players will see a radar in the top left corner of their screen (1, default) or not (0).
function hc.cs2d.mp_radar(radar) end

--- Make players spawn on random positions.
---
--- Random spawning is recommended for the deathmatch game mode!
function hc.cs2d.mp_randomspawn(random) end

--- Controls if the dynamic recoil system is enabled or disabled.
---
--- If dynamic recoil is disabled (mp_recoil 0, default), all weapons will just have a random precision. Firing long bursts or single shots makes no difference for the precision.
---
--- With dynamic recoil enabled (mp_recoil 1), weapons get less precise when you hold the trigger instead of firing single shots. Precision will increase again after a very short cool down.
--- The crosshair adjusts automatically depending on the precision.
function hc.cs2d.mp_recoil(dynamic) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Define which U.S.G.N. users are allowed to join the server always - even if it is already full. The server will then kick a player if necessary to make room for a player with reservation.
---
--- Example:
--- mp_reservations "" (no reservations)
--- mp_reservations "1,2,3" (reservations for the U.S.G.N. users 1, 2 and 3)
---
--- Note: It is recommended to add reservations for all users which have the RCon password or which are specified as RCon users with sv_rconusers!
--- Attention: Make sure that sv_checkusgnlogin is enabled (default) when using this setting. Disabling sv_checkusgnlogin while using mp_reservations is a security risk. People might use hacks to fake their U.S.G.N. IDs in order to kick players by simply joining full servers.
function hc.cs2d.mp_reservations(reservations) end

--- This sets a delay for respawning. You have to wait this long before you are allowed to respawn.
--- Of course this setting is only important for game modes whithout round system.
--- It does not affect the normal mode.
--- Set it to 0 if you want to allow instant respawning.
function hc.cs2d.mp_respawndelay(delay) end

--- With this setting your server changes the map automatically after playing X rounds.
--- Set it to 0 if you don't want your server to change the map automatically.
---
--- Note: Automatic map changes can be triggered by time (mp_timelimit), team wins (mp_winlimit) and the number of played rounds (mp_roundlimit).
--- Note: The game uses the file sys/mapcycle.cfg to select the map which will be loaded. You can edit this file to change the map cycle.
function hc.cs2d.mp_roundlimit(rounds) end

--- Control how long a round lasts (in minutes). This setting is only relevant for the "Standard" (0) and "Zombies!" (4) game modes. All other game modes have infinite round times and are not affected by this setting in any way.
--- You can use the value 100 for an infinite round time in the standard game mode. This only makes sense when using Lua scripts for respawning. Otherwise players will have no chance to respawn after their death.
--- @param time number time for a round in minutes (100=infinite)
function hc.cs2d.mp_roundtime(time) end

--- Controls how much the force/damage of shots is weakened when they hit a player/hostage/NPC or image hitzone.
---
--- The default value for this setting is 30 (=30% damage reduction per hit).
---
--- Sample scenario with 30%:
--- A player shoots into a row of other players with a weapon which causes 100 damage.
--- - The first player will suffer full 100 damage
--- - The second player will suffer 30% less (actual calculation is 100*(1.0-0.3)), hence 70 damage
--- - The third player will suffer another 30% damage less, which is 49
--- - etc.
---
--- Set this value to 0 if you don't want the shot to be weakened (this is how shots worked in CS2D Beta 0.1.2.1 and prior versions).
--- Set it to 100 if you want only the first target to suffer damage at all. Note that the visual effects of the shot will be displayed in full length anyway (it will not stop at the first target even though it doesn't cause any damage on all following targets).
---
--- Note: The damage received is rounded up (Ceil) for shot weakening. So if the calculation leads to something like 25.01 damage, the actual damage will be 26.
function hc.cs2d.mp_shotweakening(weakening) end

--- Make smoke grenades block the field of view (1) or not block it (0). This setting only matters when fog of war is enabled (sv_fow 1).
---
--- This setting is enabled by default since Beta 0.1.2.2! Prior versions did not support this feature.
function hc.cs2d.mp_smokeblock(smoke) end

--- Select how much money new players get after joining.
function hc.cs2d.mp_startmoney(money) end

--- Defines a list of items which are available in the supply building. you can specify up to 9 items either by entering their name or their ID.
---
--- Weapon and item names and IDs:
--- https://cs2d.com/img/ref_items.png
---
--- the items 1-6 will be available in the supply and the super supply.
---
--- the items 7-9 will only be available in the super supply
---
--- you can also use the value "default" to reset the itemlist to its default value.
---
--- sample usage:
--- mp_supply_items "Laser,M4A1,Aug,HE,Flashbang"
function hc.cs2d.mp_supply_items(itemlist) end

--- Kick player after X teamkills.
--- Set this value to 0 if you don't want to kick players for teamkills automatically.
function hc.cs2d.mp_teamkillpenalty(kills) end

--- Time in seconds a teleporter building needs to reload after each teleport (default: 5 sec).
---
--- Use 0 to disable reloading (the teleporter can then be used without delays)
function hc.cs2d.mp_teleportreload(reload) end

--- Define how long temporary bans are active. For example when someone has been vote-kicked.
---
--- The possible time for a temp ban ranges from 1 minute (1) to 1 day (1440).
function hc.cs2d.mp_tempbantime(time) end

--- With this setting your server changes the map automatically every X minutes.
--- Set it to 0 if you don't want your server to change the map automatically.
---
--- Note: Automatic map changes can be triggered by time (mp_timelimit), team wins (mp_winlimit) and the number of played rounds (mp_roundlimit).
--- Note: The game uses the file sys/mapcycle.cfg to select the map which will be loaded. You can edit this file to change the map cycle.
function hc.cs2d.mp_timelimit(time) end

--- Select if you want to punish teamkillers by killing them on the next round or not.
function hc.cs2d.mp_tkpunish(kill) end

--- The server traces all player movements when mp_trace is enabled. It will reset their positions when they move too fast or through walls (by using cheats/hacks).
---
--- * 0 = No tracing
--- * 1 = Very loose tracing
--- * 2 = Loose tracing
--- * 3 = Medium tracing
--- * 4 = Accurate tracing
--- * 5 = Very accurate tracing
--- * 6 = Most accurate tracing
---
--- Warning: mp_trace can lead to a bad gaming experience for players with high pings or high packet loss when activated!
function hc.cs2d.mp_trace(accuracy) end

--- Control the damage each turret hit inflicts.
function hc.cs2d.mp_turretdamage(damage) end

--- Select which buildings are not available for building.
function hc.cs2d.mp_unbuildable(buildings) end

--- Control which weapons are NOT buyable on your server.
---
--- Weapon and item names:
--- https://cs2d.com/img/ref_items.png
---
--- Examples:
--- "" = everything buyable
--- "Tactical Shield" = Tactical Shield is unbuyable
--- "AWP, P90" = AWP and P90 are unbuyable
function hc.cs2d.mp_unbuyable(unbuyable) end

--- Select if you want to have vulnerable (1) or invulnerable (0) hostages.
function hc.cs2d.mp_vulnerablehostages(vulnerable) end

--- Select how long it takes before dropped weapons disappear.
--- Weapons do only fade out in certain game modes (to avoid that the map is full of weapons after a short time).
--- Weapons do not fade out in the normal game mode for example.
function hc.cs2d.mp_weaponfadeout(time) end

--- With this setting your server changes the map automatically after one team won a certain number of rounds.
--- Set it to 0 if you don't want your server to change the map automatically.
---
--- Note: Automatic map changes can be triggered by time (mp_timelimit), team wins (mp_winlimit) and the number of played rounds (mp_roundlimit).
--- Note: The game uses the file sys/mapcycle.cfg to select the map which will be loaded. You can edit this file to change the map cycle.
function hc.cs2d.mp_winlimit(wins) end

--- Change the damage of a weapon.
---
--- Weapon and item names:
--- https://cs2d.com/img/ref_items.png
function hc.cs2d.mp_wpndmg(name, damage) end

--- Changes the "z1"-damage of a weapon. The "z1" damage is used for several different things:
---
--- Damage caused by weapons with scope/zoom in zoom/scope level 1
---
--- Damage caused by melee weapons with secondary attack
---
--- Damage caused by weapons in burst mode (burst means 3 shots at a time, so damage will be multiplied with up to 3! Default is mp_wpndmg * 0.65 if this is set to 0)
---
--- Damage caused by weapons in silenced mode (they cause mp_wpndmg by default / when set to 0)
---
---
---
--- Weapon and item names:
--- https://cs2d.com/img/ref_items.png
---
--- Note: Since Beta 0.1.2.6 this setting can also affect weapons with burst mode and silencer!
--- Note: This setting has no effect for weapons which have no alternative fire mode / secondary attack.
function hc.cs2d.mp_wpndmg_z1(name, damage) end

--- Change the damage of a weapon in zoom level 2.
---
--- Weapon and item names:
--- https://cs2d.com/img/ref_items.png
---
--- Only use this command for weapons with two zoom levels!
function hc.cs2d.mp_wpndmg_z2(name, damage) end

--- (0.0-1.0): percentage of damage which zombies take (0.0=no damage, 1.0=full damage)

--- The damage zombies will take when they are hit.

--1.0 means that they will suffer the normal original damage
--- 0.0 that they will take minimum damage (1 HP per hit)
---
--- The default value is 0.5 which means that zombies take half damage.
---
--- Note: This setting is NOT about the damage zombies deal! Use mp_wpndmg/mp_wpndmg_z1 to change the damage of the claw.
function hc.cs2d.mp_zombiedmg(percentofdamage) end

--- Give zombies (terrorists in Zombies!-mode) a weapon or item if they kill someone? Use 0 to give them nothing.
---
--- Default item is the gut bomb (id 86)!
---
--- Weapon and item IDs:
--- https://cs2d.com/img/ref_items.png
function hc.cs2d.mp_zombiekillequip(weapon) end

--- Score and frags you get as zombie for killing a survivor. The default value is +3 score/frags.
function hc.cs2d.mp_zombiekillscore(kill) end

--- Amount of health points recovered by zombies per second. The default value is 3.
function hc.cs2d.mp_zombierecover(recover) end

--- Make zombies faster (postive value) or slower (negative value). Zombies have the regular speed by default (0).
function hc.cs2d.mp_zombiespeedmod(speedmod) end

--- Send a message to everyone on your server.
--- Same as sv_msg!
---
--- Add an @C at the end of your text to display the message at the centre of the screen.
--- For example: "centreed text@C"
---
--- You can also use color codes (use a colorpicker to get the values) at the beginning and in-line! Colors are encoded as RGB values.
--- Format: �RRRGGGBBB (with each part RRR, GGG and BB ranging from 000 to 255)
--- For example: "�255000000This is a red text" or "The following text is �000000255blue"
---
--- Note: Each component, R, G and B always has to have 3 digits. Add leading zeros if necessary!
function hc.cs2d.msg(message) end

--- Change your ingame player name.
--- Same as nick!
function hc.cs2d.name(name) end

--- Show net information in console.
function hc.cs2d.netinfo() end

--- Change your ingame player name.
---
--- Same as [name](lua://hc.cs2d.name)!
---
--- @param text string a name for your player
---
--- @see hc.cs2d.name
function hc.cs2d.nick(text) end

--- Switch your night vision view on/off.
--- Only available if you bought night vision goggles!
function hc.cs2d.nightvision() end

--- Buy night vision goggles
function hc.cs2d.nvgs() end

--- Buy P228
function hc.cs2d.p228() end

--- Buy P90
function hc.cs2d.p90() end

--- Amount and details of particles.
--- Use low values on slow systems!
function hc.cs2d.particles(amount) end

--- Draw shadows under players or hide these shadows.
function hc.cs2d.playershadows(draw) end

--- Quit CS2D completely
---
--- Attention: CS2D will be closed immediately without any confirmation!
function hc.cs2d.quit() end

--- Open radio menu 1.
function hc.cs2d.radio1() end

--- Open radio menu 2.
function hc.cs2d.radio2() end

--- Open radio menu 3.
function hc.cs2d.radio3() end

--- Execute commands on a server. You have to use rcon_pw first.
--- ALL commands can be used with rcon!
---
--- WARNING: EVERYTHING behind rcon in the same line will be sent to server. No matter how many quotes or semicolons it contains.
---
--- for example:
--- rcon sv_fow 0; say "fog disabled"
--- this will send
--- sv_fow 0; say "fog disabled"
--- to the server and NOT just
--- sv_fow 0
---
--- RCon Usage
--- setup a server with an rcon password using sv_rcon mypw in its sys/server.cfg ("mypw" is used as rcon password in this example)
--- connect to this server
--- enter rcon_pw mypw in the console AFTER connecting
--- now you can enter rcon COMMANDS as many times as you want. COMMANDS can be one ore more CS2D commands. e.g. rcon sv_msg "Hi the admin is in the house!"
function hc.cs2d.rcon(commands) end

--- Specifies the RCON (remote control) password of the server you are currently connected to in order to unlock remote control options (e.g.: rcon command).
--- After using this command you will see a console output which tells you if the password was right.
---
--- Note: Same as rcon_pw!
--- Note: This command only has to be used ONE TIME after joining a server in order to log-in.
--- Note: Specifying the correct RCON password will also unlock the kick and bans menu which is accessible via the in-game menu (ESC key).
--- Attention: Using a wrong password (one or multiple times, depending on mp_maxrconfails) can block further login attemps
function hc.cs2d.rcon_password(password) end

--- Specifies the RCON (remote control) password of the server you are currently connected to in order to unlock remote control options (e.g.: rcon command).
--- After using this command you will see a console output which tells you if the password was right.
---
--- Note: Same as rcon_password!
--- Note: This command only has to be used ONE TIME after joining a server in order to log-in.
--- Note: Specifying the correct RCON password will also unlock the kick and bans menu which is accessible via the in-game menu (ESC key).
--- Attention: Using a wrong password (one or multiple times, depending on mp_maxrconfails) can block further login attemps
function hc.cs2d.rcon_pw(password) end

--- Try to buy the same items as you bought in the previous round.
function hc.cs2d.rebuy() end

--- Display a recoil animation or not?
function hc.cs2d.recoil(recoil) end

--- Change the movement system. The direction of your player (controlled with mouse) affects the movement direction if it is relative. In absolute mode the direction does not affect the movement.
function hc.cs2d.relativemovement(relative) end

--- Reload your current weapon.
function hc.cs2d.reload() end

--- Remove an item/weapon from the map (as server only).
function hc.cs2d.removeitem(item) end

--- Setting to enable/disable 3D rendering. 3D rendering makes tiles 3D (cubes instead of squares) and gives sprites a height level.
---
--- Note: The 3D rendering mode has been introduced with CS2D 1.0.0.3. All maps can be rendered in 3D but some might look weird. This depends on how they are designed. Especially older maps which have not been designed with the 3D mode in mind might not look right in 3D mode.
--- Note: 3D rendering can lead to disadvantages in gameplay because some players/items - which are visible in 2D - might be covered by 3D tiles depending on your relative position to them.
function hc.cs2d.render3d(render3d) end

--- Controls if map decals should be rendered (1, default) or not (0). This setting only affects decals which are placed in the editor via the Env_Decal entity. By default this setting is set to 1 so all decals are rendered.
---
--- Note: It is recommended to keep this at its default value (1). Disabling rendering is only recommended for slow systems with performance problems.
--- Note: Effect decals which are spawned during game play (e.g. footprints or grenade craters / soot stains) are not affected by this setting!
function hc.cs2d.renderdecals(render) end

--- Controls if map decoration images and sprites should be rendered (1, default) or not (0). This setting only affects Env_Image and Env_Sprite entities which have the "Is decoration"-checkbox checked. By default this setting is set to 1 so all sprites and images are rendered.
---
--- Note: It is recommended to keep this at its default value (1). Disabling rendering is only recommended for slow systems with performance problems.
function hc.cs2d.renderdecoration(render) end

--- Reroute a player to another server. The player will be removed from the current server and then they can decide if they wants to accept the forwarding.
---
--- The address can have following forms:
--- XXX.XXX.XXX.XXX (just an IP address, port 36963 will be used)
--- XXX.XXX.XXX.XXX:YYYYY (IP address with port)
--- www.myaddress.xyz (URL)
--- www.myaddress.xyz:YYYYY (URL with port)
---
--- (You could also enter a random text for the address but in that case forwarding will fail)
function hc.cs2d.reroute(player, address) end

--- Show details about external resources (images/sounds)
function hc.cs2d.resources() end

--- Restart the round/game in X seconds. This also resets the player stats (score/kills/deaths) and the team win scores. Moreover it resets the "time on map"-counter for mp_timelimit.
---
--- Same as sv_restart, sv_restartround and restartround!
---
--- Note: This command will trigger the endround- and startround-hooks with mode 5
function hc.cs2d.restart(delay) end

--- Restart the round/game in X seconds. This also resets the player stats (score/kills/deaths) and the team win scores. Moreover it resets the "time on map"-counter for mp_timelimit.
---
--- Same as sv_restart, restart and sv_restartround!
---
--- Note: This command will trigger the endround- and startround-hooks with mode 5
function hc.cs2d.restartround(delay) end

--- Move player right.
function hc.cs2d.right() end

--- Send a message to everyone.
--- Opens the chat input if you do not enter the message-parameter.
function hc.cs2d.say(message) end

--- Send a message to your teammates only.
--- Opens the chat input if you do not enter the message-parameter.
function hc.cs2d.sayteam(message) end

--- Buy Scout
function hc.cs2d.scout() end

--- Take a screenshots and save it to 'screens'.
--- Same as snapshot!
function hc.cs2d.screenshot() end

--- Show name + address of the server were you are connected in console
function hc.cs2d.server() end

--- Execute the custom server action 1. Custom server actions can be scripted with Lua.
---
--- Note: This command does not have any effect on servers which do not have a corresponding Lua script + hook.
function hc.cs2d.serveraction1() end

--- Execute the custom server action 2. Custom server actions can be scripted with Lua.
---
--- Note: This command does not have any effect on servers which do not have a corresponding Lua script + hook.
function hc.cs2d.serveraction2() end

--- Execute the custom server action 3. Custom server actions can be scripted with Lua.
---
--- Note: This command does not have any effect on servers which do not have a corresponding Lua script + hook.
function hc.cs2d.serveraction3() end

--- Open the server info. This info opens when you join a server (content of sys/serverinfo.txt).
---
--- Note: Not every server has a server info text! It's optional!
function hc.cs2d.serverinfo() end

--- This command changes the amount of ammunition for a weapon. It works for weapons which are dropped on the ground or which are currently carried by a player. In case you want to change the ammo of a weapon carried by a player you have to specify the player and the weapon type. In case you want to change the ammo of a dropped weapon you have to specify its ID and the second parameter must be 0.
--- You can set the ammo which will be loaded in the weapon and spare ammo which can be reloaded. You can use 1000 as value to keep the actual ammo value unchanged (in case you only want to change one of the values). The ammo is restricted by the weapon attributes and will be limited automatically if you use values which are too high.
---
--- Weapon and item IDs:
--- https://cs2d.com/img/ref_items.png
---
--- Note: You can use the value 1000 for ammoin and ammo to keep the current value unchanged.
--- Note: Maximum values are restricted by the weapon attributes. You can't use higher values.
--- Attention: The first parameter can be either a player ID or an item ID! This only depends on the second parameter which must be 0 if you want to specify a weapon ID!
function hc.cs2d.setammo(id, weapon, ammoin, ammo) end

--- Set the armour of a player (as server only).
---
--- There is regular armour (0 - 200, decreases when the player is hit).
--- And special armour (201-206, stays until removed via script / another armour type is assigned)
---
--- Special Armour Types:
--- 201 - Light Armour
---
--- 202 - Armour
---
--- 203 - Heavy Armour
---
--- 204 - Medic Armour
---
--- 205 - Super Armour
---
--- 206 - Stealth Suit
function hc.cs2d.setarmour(player, armour) end

--- Set the kill assists count (value displayed in the scoreboard) of a player (as server only).
--- @param player number player identifier
--- @param count number assist count
function hc.cs2d.setassists(player, count) end

--- Set the number of deaths of a player (as server only).
function hc.cs2d.setdeaths(player, deaths) end

--- Set health of a player (as server only).
---
--- Note: The maximum health is limited by setmaxhealth! The default maxhealth is 100, the maximum maxhealth is 250. Note that respawning will always reset your health to 100, no matter which maxhealth you specified.
function hc.cs2d.sethealth(player, health) end

--- Set the health and maximum health of a player (as server only).
---
--- Note: The maximum health is limited by setmaxhealth! The default maxhealth is 100, the maximum maxhealth is 250. Note that respawning will always reset your health to 100, no matter which maxhealth you specified.
function hc.cs2d.setmaxhealth(player, maxhealth) end

--- Set the money of a player to a certain value (as server only).
function hc.cs2d.setmoney(player, money) end

--- Set the MVP points of a player to a certain value (as server only).
function hc.cs2d.setmvp(player, mvp) end

--- Set the name of a player (as server only).
---
--- Note: Name changes are displayed in the console and in the chat area. You can hide the message in the chat area by using the hide parameter with the value 1. The console message will always be displayed and can not be hidden for security reasons.
function hc.cs2d.setname(player, name, hide) end

--- Set a player at a certain position (as server only).
---
--- Note: You have to define a position. This position is defined in pixels and not in tiles. Each tile has a size of 32x32 pixels!
function hc.cs2d.setpos(player, x, y) end

--- Set the score (value displayed in the scoreboard) of a player (as server only).
function hc.cs2d.setscore(player, score) end

--- Changes the team scores of the Terrorists/zombies and the Counter-Terrorists/survivors.
---
--- The team scores can be seen in the scoreboard next to the team names.
---
--- Note: The team score limit is 65535. Higher values are not possible. Negative values are also not possible.
function hc.cs2d.setteamscores(tscore, ctscore) end

--- Changes the specified tile on the map to the given tile frame. This affects the tile look and the tile behavior. Works as server only. All other players will see the changes. Players who join afterwards will see the changes on their map too.
---
--- Changed tiles will not be changed back automatically unless another or the same map is reloaded!
---
--- You can use the Lua command tile with the parameters "hascustomframe" or "originalframe" to check if this command has been used with a certain tile.
---
--- Note: Changes made with settile do not affect the minimap.
--- Attention: The behaviours/properties of tiles are only saved up to the highest tile frame which is actually used on the map. Tiles with higher tile frames which are not used on the map but set with this command will always have the default behavior (soundless floor).
--- Attention: This command does not perform any advanced checks. You can set walls on players/NPCs/entities/items with this command. This may lead to bugs under certain circumstances. It is up to you to perform proper checks to avoid such problems!
--- Attention: Using this command to change a lot of tiles at once can lead to performance issues and even network connection loss. If you want to change many tiles do so in small batches with small delays.
function hc.cs2d.settile(x, y, tile) end

--- Set the active weapon a certain player holds in their hand (as server only).
--- The name can be the displayed name or a simplified version (lowercase without whitespaces/special characters, just letters and numbers)
---
--- Weapon and item IDs:
--- https://cs2d.com/img/ref_items.png
---
--- Usage examples (setting weapon of player 1 here, which is always you when using "New Game"):
--- setweapon 1 51 // ID
---
---
--- setweapon 1 "Molotov Cocktail" // full name
---
---
--- setweapon 1 ak47 // simplified name
---
---
--- setweapon 1 fiveseven // simplified name
---
---
--- Note: The player has to own this weapon already! Use equip first if the player does not have the weapon!
--- Note: Don't confuse this command with the weapon command! The weapon command can only be used locally by a client to change the weapon of the own player!
function hc.cs2d.setweapon(player, weapon) end

--- Buy SG550
function hc.cs2d.SG550() end

--- Buy SG552
function hc.cs2d.sg552() end

--- Buy smoke grenade
function hc.cs2d.sgren() end

--- Select the opacity/intensity of shadows.
function hc.cs2d.shadows(opacity) end

--- Defines the size of the obstacle shade effect (when using advanced map shadows)
function hc.cs2d.shadowshade_obstacle(shade) end

--- Defines the size of the wall shade effect (when using advanced map shadows)
function hc.cs2d.shadowshade_wall(shade) end

--- Defines the height/length of obstacle shadows (when using advanced map shadows)
function hc.cs2d.shadowz_obstacles(height) end

--- Defines the height/length of wall shadows (when using advanced map shadows)
function hc.cs2d.shadowz_wall(height) end

--- Changes the angle of map shadows
function hc.cs2d.shadow_angle(angle) end

--- Changes the frame skipping. This can be used to reduce the update rate from the advanced light and shadow system.
---
--- lower value = more updates, costs more CPU & GPU power
--- higher value = less updates, costs less CPU & GPU power
function hc.cs2d.shadow_frameskipping(skipping) end

--- Shake a player (as server only). The maximum power/intensity is 30. However you can use higher values for a longer shake.
---
--- A power of 50 equals one second (100=2 sec, 150=3 sec, 200=4 sec, etc.)
function hc.cs2d.shake(player, power) end

--- Buy tactical shield
function hc.cs2d.shield() end

--- Displays the scoreboard. It shows players/spectators with name, team, score, deaths and network latency. In front of each player you can also see the internal player ID. You can hover a player in the scoreboard with your mouse to get additional info like the U.S.G.N. id (displayed at the bottom of the scoreboard).
---
--- Note: The server player itself (in case of a listen server) and bots always have 0 latency. Therefore the latency column will just show "Server" or "Bot" for them.
function hc.cs2d.showscores() end

--- Slap a player (remove some health).
function hc.cs2d.slap(player) end

--- Select slot (weapon or menu) 10.
--- Same as slot10!
function hc.cs2d.slot0() end

--- Select slot (weapon or menu) 1.
function hc.cs2d.slot1() end

--- Select slot (weapon or menu) 10.
--- Same as slot0!
function hc.cs2d.slot10() end

--- Select slot (weapon or menu) 2.
function hc.cs2d.slot2() end

--- Select slot (weapon or menu) 3.
function hc.cs2d.slot3() end

--- Select slot (weapon or menu) 4.
function hc.cs2d.slot4() end

--- Select slot (weapon or menu) 5.
function hc.cs2d.slot5() end

--- Select slot (weapon or menu) 6.
function hc.cs2d.slot6() end

--- Select slot (weapon or menu) 7.
function hc.cs2d.slot7() end

--- Select slot (weapon or menu) 8.
function hc.cs2d.slot8() end

--- Select slot (weapon or menu) 9.
function hc.cs2d.slot9() end

--- Take a screenshots and save it to 'screens'.
--- Same as screenshot!
function hc.cs2d.snapshot() end

--- Only change this setting if you have problems with the default sound driver!
---
--- On some systems you can have delays or other problems with sounds. Try other drivers if you have these problems.
function hc.cs2d.sounddriver(driver) end

--- Select mono or stereo sound.
function hc.cs2d.soundmode(mode) end

--- Spawn an item at a certain position (in tiles) of the map (as server only). The item can be specified using its ID or its name.
--- The name can be the displayed name or a simplified version (lowercase without whitespaces/special characters, just letters and numbers)
---
--- Weapon and item IDs:
--- https://cs2d.com/img/ref_items.png
---
--- You can optionally specify custom ammo values with the ammoin and ammo parameters. If you do not specify these parameters the weapon will be spawned with default ammo values (this means: fully loaded and max spare ammo for firearms).
---
--- Usage examples:
--- spawnitem 51 5 5 // ID
--- spawnitem "Molotov Cocktail" 6 5 // full name
--- spawnitem ak47 7 5 // simplified name
--- spawnitem fiveseven 8 5 // simplified name
--- spawnitem deagle 5 5 1 22 // spawn deagle with 1 bullet in magazine and 22 spare ammo
---
---
--- Note: The position is defined in tiles and not in pixels!
--- Note: CS2D allows you to spawn multiple items at the same tile!
function hc.cs2d.spawnitem(item, tx, ty, ammoin, ammo) end

--- Create an NPC (as server only).
---
--- NPC types:
--- 1 - zombie
--- 2 - headcrab
--- 3 - snark
--- 4 - vortigaunt
--- 5 - soldier
---
--- Note: NPCs are actually objects as well - with type 30. the type of the NPC is saved in the player attribute of the object. So you could also use spawnobject with proper parameters to create NPCs.
--- Attention: Huge numbers of NPCs can slow down the game and lead to lags!
function hc.cs2d.spawnnpc(type, x, y, rot) end

--- Create an object (as server only). Objects are buildings, mines, portals, NPCs etc.
---
--- Values depend on the type of the dynamic object.
---
--- Object types are:
--- https://cs2d.com/img/ref_dynamicobjects.png
---
--- When creating NPCs (type 30) the player value is used to set the NPC type:
--- https://cs2d.com/img/ref_npcs.png
---
--- Attention: Huge numbers of objects can slow down the game and lead to lags!
function hc.cs2d.spawnobject(type, x, y, rot, mode, team, player) end

--- Spawn a player at a certain position (as server only).
---
--- Note: You have to define a position. This position is defined in pixels and not in tiles. Each tile has a size of 32x32 pixels!
function hc.cs2d.spawnplayer(player, x, y) end

--- Spawns a projectile (as server only). Projectile type IDs are equal to the IDs of the corresponding weapons.
--- Use a flydist of 0 to spawn projectiles on the ground.
---
--- Weapon and item IDs (weapons with a special projectile are marked with a yellow P):
--- https://cs2d.com/img/ref_items.png
---
--- Note: CS2D will let a regular item fly if the selected item ID does not have a corresponding projectile (no yellow P in the list above). The item will then be collectible as soon as it has hit the ground and doesn't move anymore
--- Attention: Avoid spawning huge numbers of projectiles! They might cause lags and FPS drops!
--- Attention: Each player can only have a maximum of 255 projectiles at a time (including projectiles lying on the ground like smoke grenades). Trying to create more projectiles may result in problems (this is because a byte is used for the projectile ID)
function hc.cs2d.spawnprojectile(player, type, x, y, flydist, dir) end

--- Change your spectator mode (follow/free).
--- Only available when dead or spectator. Not every server allows all spectator modes.
function hc.cs2d.specmode() end

--- Change the player you follow as spectator.
function hc.cs2d.specplayer() end

--- Player walks silently but also slowly. Has to be combined with forward/back/left/right for actual movement.
function hc.cs2d.speed() end

--- Modify the speed of a player (as server only).
---
--- The speed modifier ranges from -100 to 100. -100 means no movement, 0 is regular speed and 100 is very fast movement.
---
--- Note: You have to use speedmod after each spawn because spawning resets the speedmod to 0!
function hc.cs2d.speedmod(player, speedmod) end

--- Spray your spraylogo on the floor. Please note that it takes several seconds before you can spray it again.
function hc.cs2d.spray() end

--- Select one of 8 colors for your spraylogo.
function hc.cs2d.spraycolor(color) end

--- The spraylogo you want to use.
--- You can't change this ingame!
function hc.cs2d.spraylogo(logofile) end

--- Remove a weapon from a player (as server only). The weapon can be specified using its ID or its name.
--- The name can be the displayed name or a simplified version (lowercase without whitespaces/special characters, just letters and numbers)
---
--- Weapon and item IDs:
--- https://cs2d.com/img/ref_items.png
---
--- Usage examples (stripping from player 1 here, which is always you when using "New Game"):
--- strip 1 51 // ID
--- strip 1 "Molotov Cocktail" // full name
--- strip 1 ak47 // simplified name
--- strip 1 fiveseven // simplified name
---
---
--- Note: When you try to strip any armour type (even one the player does not have) the armour is just set to 0 / any special armour is removed (equal to: setarmour ID 0)!
--- Attention: When you want to strip the knife (id 50), you should switch to another weapon first using setweapon. Otherwise stripping might fail!
--- Attention: You cannot remove all weapons! The player always has to have at least one weapon. The game will automatically equip the standard melee weapon (knife with id 50 in most game modes) if there is no weapon left! Do not try to strip all weapons. Its an invalid game state that might lead to problems!
function hc.cs2d.strip(player, weapon) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Control if you want the U.S.G.N. masterserver to check U.S.G.N. login IDs before a player joins (1, default) or not (0).
---
--- Note: This setting does not matter if sv_usgnonly is set to 1. In this case a check will always be performed before a player joins.
--- Attention: IF DISABLED: Disabling this check can be a security risk. The check will be performed nevertheless (delayed), but the player can be on the server with a wrong U.S.G.N. ID for several seconds (depending on how fast the masterserver is able to check the login). This can be used to hijack servers if there are Lua scripts which only rely on the U.S.G.N. ID to give special permissions.
--- Attention: IF ENABLED: Enabling this check (default) can slow down the join process because each player with U.S.G.N. login must be checked by the U.S.G.N. masterserver before they can join the game.
--- Consider to disable this setting if you are not using Lua scripts or server settings which rely on the correctness of U.S.G.N. IDs.
--- Also some players reported that they are sometimes stuck in the U.S.G.N. account verification screen - those players should restart the game and try again later.
function hc.cs2d.sv_checkusgnlogin(check) end

--- Changes the angle and the brightness of the day light time. Can be used to switch between day and night etc.
--- Use -1 to keep the default value which is defined by the map. Each maps has the day light angle 220 unless something different is specified in the map properties (map editor).
---
--- Value ranges and meaning:
---
--- -1: use the value defined by the map
---
--- 0 - 180: night, pitch-black
---
--- 180 - 210: dawn, getting brighter, shadow directing east to south-east
---
--- 210 - 330: day, full brightness, shadow directing south-east to south-west
---
--- 330 - 360: dusk, getting darker, shadow directing south-west to west
function hc.cs2d.sv_daylighttime(timeangle) end

--- Sets the "force light" server setting. Only clients which have the light engine enabled are allowed on servers with sv_forcelight 1.
---
--- The light setting of clients does not matter if this setting is set to 0.
function hc.cs2d.sv_forcelight(forcelight) end

--- Set the fog of war mode. Fog of war makes the game more realistic by hiding stuff which is out of the players view angle and behind walls.
---
--- There are several modes:
--- 0 - off, everything is visible
---
--- 1 - hide characters only (npcs, hostages and players in fog of war will be hidden)
---
--- 2 - hide characters and effects (hide characters and also all particle effects in fog of war)
---
--- 3 - hide everything (everything will be hidden, including items and flying projectiles. only the map itself and buildings will be visible)
---
---
---
--- Note: Smoke grenade smoke will always be visible in fog of war because it would otherwise hide itself, leading to strange effects.
--- Note: Buildings will also always be visible in fog of war.
function hc.cs2d.sv_fow(fow) end

--- Select if you want players to be able to hurt and even kill their teammates (1) or not (0, default). In game modes without teams this setting has no effect because you can kill everyone anyway. However there are some additional things which are affected by this setting:
---
--- It also controls the damage of your own weapons on yourself. You can hurt yourself with your own grenades for instance when friendly fire is enabled. You can't hurt yourself this way when friendly fire is disabled.
---
--- Turrets never hurt yourself or teammates. The only exception is deathmatch mode where your own turret can kill you when friendly fire is enabled (it won't aim at you but you can get hurt when you are standing in its line of fire).
function hc.cs2d.sv_friendlyfire(FF) end

--- Select the mode you want to play on your server. E.g. Standard CS2D, deathmatch, team deathmatch, construction...
--- Same as sv_gm!
---
--- Available modes:
--- https://cs2d.com/img/ref_gamemodes.png
function hc.cs2d.sv_gamemode(mode) end

--- Select the mode you want to play on your server. E.g. Standard CS2D, deathmatch, team deathmatch, construction...
--- Same as sv_gamemode!
---
--- Available modes:
--- https://cs2d.com/img/ref_gamemodes.png
function hc.cs2d.sv_gm(mode) end

--- Sets the UDP port which is used for hosting the server. Default port is 36963 (recommended).
--- In auto detect mode (port 0) CS2D will try to find and use a free UDP port.
---
--- Note: Port changes do not take effect immediately. A map change is required (map, sv_map, changemap, changelevel) to make this change take effect. Already connected players will lose their connection during the map change when the port is changed. They will have to manually reconnect.
--- Note: This setting only takes effect when hosting a server. As client localport / clientport defines the used UDP port!
--- Attention: sv_hostport will not work if the command line parameter -port is used
--- Attention: If you want to run multiple instances of CS2D servers on the same physical machine you have to manually define different ports. Otherwise CS2D will either fail to run the server(s) or it will try to automatically use a random port as a fallback. If you have problems with running CS2D with a specific port you should check if other programs are already using that port or if it is blocked by a firewall.
function hc.cs2d.sv_hostport(port) end

--- Set this setting to 1 if you want to play in a LAN only.
---
--- Your server will not be added to the U.S.G.N. serverlist if you set sv_lan to 1. Other players on the internet will not see and join it if they don't have your server ip.
---
--- Always set sv_lan to 0 if you want other players to join online! Otherwise they will not even see your server in the serverlist!
function hc.cs2d.sv_lan(lan) end

--- Changes the map on the server. map must be the name of an existing map-file inside the "maps"-folder WITHOUT the ".map"-extension.
---
--- Note: Same as map, changemap and changelevel!
--- Note: Changing the map will also restart the server. Connected clients will try to automatically reconnect.
function hc.cs2d.sv_map(map) end

--- Allow (1) or disallow (0) the server to send maps to clients/players who don't have these maps.
---
--- Note: This setting controls transfer of all files belonging to a map (map file itself, map briefing, map Lua script, tileset, sprites and sounds used in the map).
--- Attention: Enabled map transfer can cause additional traffic and higher pings while the server is sending maps!
--- Attention: With disabled map transfer people not having the right map won't be able to join the server!
function hc.cs2d.sv_maptransfer(transfer) end

--- Set the maximum of players allowed on your server. CS2D does not allow more than 32 players.
---
--- Don't set this limit too high. Servers with many players need a very good internet connection and they cause a lot of traffic!
---
--- Recommended limits:
--- Modem: 2
--- ISDN: 4
--- (A)DSL: 6-8
--- (V)DSL: 8-16
--- LAN (fast ethernet): 32
function hc.cs2d.sv_maxplayers(players) end

--- Send a message to everyone on your server.
--- Same as msg!
---
--- Add an @C at the end of your text to display the message at the centre of the screen.
--- For example: "centreed text@C"
---
--- You can also use color codes (use a colorpicker to get the values) at the beginning and in-line! Colors are encoded as RGB values.
--- Format: �RRRGGGBBB (with each part RRR, GGG and BB ranging from 000 to 255)
--- For example: "�255000000This is a red text" or "The following text is �000000255blue"
---
--- Note: Each component, R, G and B always has to have 3 digits. Add leading zeros if necessary!
function hc.cs2d.sv_msg(message) end

--- Send a message to a certain player on your server.
--- Use msg or sv_msg instead if you want to show a message to all players.
---
--- Add an @C at the end of your text to display the message at the centre of the screen.
--- For example: "centreed text@C"
---
--- You can also use color codes (use a colorpicker to get the values) at the beginning and in-line! Colors are encoded as RGB values.
--- Format: �RRRGGGBBB (with each part RRR, GGG and BB ranging from 000 to 255)
--- For example: "�255000000This is a red text" or "The following text is �000000255blue"
---
--- Note: Each component, R, G and B always has to have 3 digits. Add leading zeros if necessary!
function hc.cs2d.sv_msg2(player, message) end

--- Set the name of your server.
function hc.cs2d.sv_name(name) end

--- Controls if shooting at players/hostages/npcs/objects which are outside the screen causes damage (1, default) or not (0).
---
--- By default this setting is enabled which means you can shoot at stuff you don't see on your screen and you will still cause damage. This is also the more realistic and recommended setting.
---
--- Set this setting to 0 if you want players (and turrets/NPCs) only to cause damage on objects which are in their visible screen area. This can lead to more fair game play.
---
--- Note: A target is considered "off-screen" if its distance to the attacker is bigger than (850/2)+32 on the X-axis or bigger than (480/2)+32 on the y-axis. So the check is actually based on distance only.
--- Note: Fog of war has no impact on this setting. People hidden in fog of war can always be damaged.
--- Note: Related Lua hooks and effects will not be triggered when someone or something is hit off-screen when this setting is set to 0!
--- Note: This setting only affects gun shots & lasers. Explosives like rockets, mines, grenades etc. are NOT affected by this setting. They can always deal off-screen damage.
function hc.cs2d.sv_offscreendamage(offscreen) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Set a server password. Everyone who wants to join has to enter this password.
--- Set an empty password to remove the password.
function hc.cs2d.sv_password(password) end

--- Enables or disables physics on the server.
--- Requires server reload.
function hc.cs2d.sv_physics(physics) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Set an rcon (remote control) password to allow remote control. People who want to remote control your server have to enter this password.
--- Set an empty password to remove it and disallow remote control (default).
---
--- Only servers which set an rcon password can be remotely controlled (unless other methods like Lua scripts are used)!
---
--- Note: You should only set an rcon password if you actually want to use CS2D's remote control features!
--- Note: It is highly recommended to use this setting only in combination with sv_rconusers to increase security!
--- Attention: Your server can also be controlled externally (without joining it) if you just set an RCon password without using sv_rconusers to restrict access even more.
function hc.cs2d.sv_rcon(rcon) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Defines which U.S.G.N. and Steam users are allowed to use RCon (remote control). All other users or players without U.S.G.N. or Steam login are not able to use RCon when this setting is used.
--- It also disables external RCon completely (as external users' Steam or U.S.G.N. ID can't be verified properly).
---
--- The U.S.G.N. and Steam IDs are specified as a comma-separated list. IDs can have prefixes to tell the game if it's a Steam or U.S.G.N. ID.
--- No prefix, just a number = Auto-detect based on length (lower numbers U.S.G.N., high numbers Steam)
---
--- u Prefix = U.S.G.N. ID
---
--- s Prefix = Steam ID
---
---
--- Steam IDs must be specified in the Steam ID 64 format, which is a long number (~17 digits).
---
--- Examples:
--- sv_rconusers "" (everyone with the right password can use RCon, NOT recommended)
---
--- sv_rconusers "1,2,3" (only the U.S.G.N. users 1,2 and 3 can use RCon)
---
--- sv_rconusers "u1,u2,u3" (only the U.S.G.N. users 1,2 and 3 can use RCon, same as above)
---
--- sv_rconusers "76561197960345412" (only the Steam user with ID 76561197960345412 can use Rcon)
--- sv_rconusers "s4,s5" (only Steam users 4 and 5 can use Rcon; example only, 4 and 5 are no valid Steam User IDs)
---
--- sv_rconusers "u1,u2,u3,s4,s5" (U.S.G.N. users 1,2 and 3 and Steam users 4 and 5 can use Rcon; example only, 4 and 5 are no valid Steam User IDs)
---
---
---
--- Note: You always have to enter the RCon password to use RCon. Even if this setting is enabled.
--- Note: It is highly recommended to use this settings. This way you have a 2 stage protection. The U.S.G.N./Steam login and the RCon password.
--- Attention: This setting completely disables external RCon. You have to join the server with valid U.S.G.N./Steam login to use RCon when you use this setting!
--- Attention: Steam ID check only works with CS2D version 1.0.0.5 p2 and newer and if clients are using the Steam version of the game!
function hc.cs2d.sv_rconusers(users) end

--- Restart the round/game in X seconds. This also resets the player stats (score/kills/deaths) and the team win scores. Moreover it resets the "time on map"-counter for mp_timelimit.
---
--- Same as restart, sv_restartround and restartround!
---
--- Note: This command will trigger the endround- and startround-hooks with mode 5
function hc.cs2d.sv_restart(delay) end

--- Restart the round/game in X seconds. This also resets the player stats (score/kills/deaths) and the team win scores. Moreover it resets the "time on map"-counter for mp_timelimit.
---
--- Same as sv_restart, restart and restartround!
---
--- Note: This command will trigger the endround- and startround-hooks with mode 5
function hc.cs2d.sv_restartround(delay) end

--- Play a soundfile. Everyone on the server who has the soundfile will hear it. The sound is played only once (no loop).
--- Playback can be stopped with sv_stopsound.
---
--- Note: CS2D will NOT send the soundfile to players who do not have it! You have to add the file to sys/servertransfer.lst if you want it to be transferred to others!
--- Note: Use sv_sound2 instead to play a sound for a specific player only.
function hc.cs2d.sv_sound(soundfile) end

--- Play soundfile for a certain player. Only this player will hear it and only if they have the soundfile! The sound is played only once (no loop).
--- Playback can be stopped with sv_stopsound.
---
--- Note: CS2D will NOT send the soundfile to players who do not have it! You have to add the file to sys/servertransfer.lst if you want it to be transferred to others!
--- Note: Use sv_sound instead to play a sound for everyone.
function hc.cs2d.sv_sound2(player, soundfile) end

--- Plays a sound at a specific position. By default for all players but can be restricted to a specific player with the player parameter.
---
--- Note: CS2D will NOT send the soundfile to players who do not have it! You have to add the file to sys/servertransfer.lst if you want it to be transferred to others!
function hc.cs2d.sv_soundpos(soundfile, x, y, player) end

--- Control what people are able to spectate (everything, own team only, nothing)
function hc.cs2d.sv_specmode(mode) end

--- Select if you want your server to send and receive custom sprays. People on your server will only see default sprays if you disable this option.
function hc.cs2d.sv_spraytransfer(spray) end

--- Stops playback of all sounds with the given soundfile which have been started beforehand using either sv_sound or sv_sound2. Playback can be stopped for all players (player 0) or for a specific player only.
---
--- Note: The player parameter is optional. The sound will be stopped for all players if it is not provided.
--- Attention: Parameter order is different from the parameter order in sv_sound2. This is for compatibility reasons because the player parameter has been added in an update.
function hc.cs2d.sv_stopsound(soundfile, player) end

--- High Security Relevance
--- This setting is important for the security of your server!
--- Use it carefully! Wrong settings may make your server vulnerable or limit its functionality or accessibility!
---
--- Select if you want to allow U.S.G.N. users only. People which are not logged in will not be able to join your server if this setting is enabled.
---
--- Note: People without U.S.G.N. login will not be able to join your server if you enable this setting!
--- Note: It is recommended to enable this setting if you have problems with cheaters and hackers! Use it in conjunction with banusgn!
--- Attention: Enabling this setting will automatically enforce immediate on join U.S.G.N. account verification which may slow down (or in bad cases even break) the connection process (see sv_checkusgnlogin)
--- Attention: Never enable this setting if you are playing in a LAN! The U.S.G.N. account system does not work properly in LANs because it needs a working internet connection and internet IP addresses to verify the accounts.
function hc.cs2d.sv_usgnonly(usgn) end

--- Controls whether using voice chat is allowed on the server.
--- * 0 - Off
--- * 1 - For All
--- * 2 - Team Only
--- * 3 - Team Only + Spectators
function hc.cs2d.sv_voicechat(voice_chat) end

--- Open the menu for team selection.
--- Same as chooseteam!
function hc.cs2d.team() end

--- This activates or deactivates tile animations. They are used for animated water on maps for example.
---
--- Tile animations can slow down the map loading process because all animations have to be precalculated. Moreover they can waste a lot of video memory.
---
--- Disable tile animations if you have a slow system!
function hc.cs2d.tileanimations(use) end

--- Buy TMP
function hc.cs2d.tmp() end

--- This is a server setting!
---
--- Control the upload speed (kilobytes per second) for the map- and file-transfer.
---
--- The default value is 25 kilobytes per second. Make sure to keep this setting lower than the upload speed of the server.
---
--- Note: Low values will make all transfers take longer but ensure that playing can go on without lags.
--- Attention: Too high values may lead to lags for people playing while someone downloads files from the server. In worst case it can even lead to a complete loss of the connection (disconnect/ping timeout).
function hc.cs2d.transfer_speed(speed) end

--- Trigger entities (as server only).
---
--- Example:
--- trigger "test" (triggers all entities with the name test)
--- trigger "a,b,c" (triggers all entities with the names a, b and c)
function hc.cs2d.trigger(trigger) end

--- Triggers the entity at the given tile position (if there is any). The entity does not have to have a name for this.
function hc.cs2d.triggerposition(tx, ty) end

--- Buy UMP45
function hc.cs2d.ump45() end

--- Removes a particular ban with a certain banmask.
---
--- This mask can be:
---
--- - a USGN ID (just a single number). e.g.: 1 or 123
---
--- - an IP address (also with * wildcards). e.g.: 111.222.333.444 or 111.222.333.*
---
--- - a nick name. e.g.: Player
---
--- Moreover CS2D doesn't perform IP wildcard matching when removing bans.
--- E.g.: You have the following bans
--- 111.*.*.*
--- 111.222.333.444
--- 111.222.333.*
--- *.*.*.*
---
--- if you now use unban *.*.*.* only the last ban will be removed because it is exactly the same string. All other bans will stay untouched even though they actually would match a wildcard check!
---
--- Attention: This command is case sensitive. If you banned "Player" and use unban "player" it will not work!
function hc.cs2d.unban(banmask) end

--- Removes ALL bans.
function hc.cs2d.unbanall() end

--- Remove all binds.
function hc.cs2d.unbindall() end

--- Player tries to use something in their environment.
--- For example:
--- -buttons
--- -hostages (rescue)
--- -bomb (defuse)
--- -buildings
function hc.cs2d.use() end

--- Force a U.S.G.N. serverlist add request for the server.
--- Try this command if your server is not added to the list automatically.
function hc.cs2d.usgn_addserver() end

--- Show U.S.G.N. (Unreal Software Gaming Network) details.
--- Important for problems with the serverlist etc.
function hc.cs2d.usgn_info() end

--- The password for U.S.G.N. login.
function hc.cs2d.usgn_pw(password) end

--- The user name for U.S.G.N. login.
function hc.cs2d.usgn_user(user) end

--- Buy USP
function hc.cs2d.usp() end

--- Buy kevlar vest (65 armour)
function hc.cs2d.vest() end

--- Buy kevlar vest + helmet (100 armour)
function hc.cs2d.vesthelm() end

--- Make shots visible or hide them. It is recommended to use visible shots in order to see from where they come.
--- However it can be good to disable them on very slow systems.
function hc.cs2d.visibleshots(visible) end

--- General volume of sounds in CS2D.
function hc.cs2d.volume(volume) end

--- Vote to kick a player.
--- You can only vote players in your own team. Minimum for a kick are always 2 votes. Moreover there is a dynamic minimum of votes depending on the amount of players in your team and the server setting mp_kickpercent.
function hc.cs2d.vote(player) end

--- Vote to change the map.
--- You can only vote maps which are in the mapcycle of the server.
--- The minimum of votes for a change depends on the amount of players on the server and the server setting mp_mapvoteratio!
function hc.cs2d.votemap(map) end

--- Open the vote menu.
function hc.cs2d.votemenu() end

--- Use/select a certain weapon by its name or by its ID.
---
--- Weapon and item IDs:
--- https://cs2d.com/img/ref_items.png
---
--- Note: You already have to own the weapon you want to select with this command!
--- Note: Use setweapon (server only) to change the weapon of another player!
function hc.cs2d.weapon(weapon) end

--- Do players "wiggle" while moving or not?
function hc.cs2d.wiggle(wiggle) end

--- Change the window setting. CS2D can run in a window (1, default) or in full-screen mode (0).
---
--- Attention: Note that this command is ignored during the initial start of the game if you are using one of the command line parameters to change the win/full-screen behavior (-win,-windowed,-full,-fullscreen). In other words: Command line parameters have a higher priority than this setting.
function hc.cs2d.win(win) end

--- Buy XM1014
function hc.cs2d.xm1014() end
