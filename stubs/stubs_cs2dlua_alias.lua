--- @meta stubs_cs2dlua_alias

--- Numeric keys [`0`-`9`] that can be used by the [addbind](lua://addbind) function.
--- @alias bind_key_numeric
--- | 0
--- | 1
--- | 2
--- | 3
--- | 4
--- | 5
--- | 6
--- | 7
--- | 8
--- | 9

--- Alphabetic keys [`A`-`Z`] that can be used by the [addbind](lua://addbind) function.
--- @alias bind_key_alphabetic
--- | 'A'
--- | 'B'
--- | 'C'
--- | 'D'
--- | 'E'
--- | 'F'
--- | 'G'
--- | 'H'
--- | 'I'
--- | 'J'
--- | 'K'
--- | 'L'
--- | 'M'
--- | 'N'
--- | 'O'
--- | 'P'
--- | 'Q'
--- | 'R'
--- | 'S'
--- | 'T'
--- | 'U'
--- | 'V'
--- | 'W'
--- | 'X'
--- | 'Y'
--- | 'Z'

--- Function keys [`F1`-`F12`] that can be used by the [addbind](lua://addbind) function.
--- @alias bind_key_function
--- | "F1"
--- | "F2"
--- | "F3"
--- | "F4"
--- | "F5"
--- | "F6"
--- | "F7"
--- | "F8"
--- | "F9"
--- | "F10"
--- | "F11"
--- | "F12"

--- Mouse buttons that can be used by the [addbind](lua://addbind) function.
--- @alias bind_key_mouse
--- | "mouse1" # Left Click.
--- | "mouse2" # Right Click.
--- | "mouse3" # Middle Click.
--- | "mwheelup" # Mouse Wheel Up.
--- | "mwheeldown" # Mouse Wheel Down.

--- System keys that can be used by the [addbind](lua://addbind) function.
--- @alias bind_key_special
--- | "leftshift" # Left Shift.
--- | "rightshift" # Right Shift.
--- | "leftctrl" # Left Control.
--- | "rightctrl" # Right Control.
--- | "leftalt" # Left Alt.
--- | "rightalt" # Right Alt.
--- | "leftsys" # Left System.
--- | "rightsys" # Right System.

--- Arrow keys that can be used by the [addbind](lua://addbind) function.
--- @alias bind_key_arrow
--- | "leftarrow" # ←
--- | "rightarrow" # →
--- | "uparrow" # ↑
--- | "downarrow" # ↓

--- @todo: complete unknown keys.
--- Miscellaneous keys like that can be used by the [addbind](lua://addbind) function.
--- @alias bind_key_misc
--- | "backspace" # Backspace.
--- | "tab" # TAB.
--- | "clear" # Unknown.
--- | "enter" # Enter/Return.
--- | "escape" # Escape.
--- | "space" # Space.
--- | "pgup" # Page up.
--- | "pgdn" # Page down.
--- | "end" # End.
--- | "home" # Home.
--- | "select" # Unknown.
--- | "print" # Unknown, perhaps print screen?
--- | "execute" # Unknown.
--- | "screen" # Unknown, perhaps print screen?
--- | "ins" # Insert.
--- | "del" # Delete.
--- | "kp_leftarrow" # Keypad: ←
--- | "kp_rightarrow" # Keypad: →
--- | "kp_uparrow" # Keypad: ↑
--- | "kp_downarrow" # Keypad: ↓
--- | "kp_home" # Keypad: Home.
--- | "kp_ins" # Keypad: Insert.
--- | "kp_0" # Keypad: 0.
--- | "kp_1" # Keypad: 1.
--- | "kp_2" # Keypad: 2.
--- | "kp_3" # Keypad: 3.
--- | "kp_4" # Keypad: 4.
--- | "kp_5" # Keypad: 5.
--- | "kp_6" # Keypad: 6.
--- | "kp_7" # Keypad: 7.
--- | "kp_8" # Keypad: 8.
--- | "kp_9" # Keypad: 9.
--- | "kp_divide" # Keypad: Divide.
--- | "kp_multiply" # Keypad: Multiply.
--- | "kp_del" # Keypad: Delete.

--- All keys that can be used by the [addbind](lua://addbind) function.
--- @alias bind_key_types
--- | bind_key_numeric
--- | bind_key_alphabetic
--- | bind_key_function
--- | bind_key_mouse
--- | bind_key_special
--- | bind_key_arrow
--- | bind_key_misc

--- Generic binary value.
--- @alias binary_value
--- | 0
--- | 1

--- Category that contains the basic hooks.
--- @alias hook_type_basic
--- | "break"
--- | "endround"
--- | "httpdata"
--- | "log"
--- | "mapchange"
--- | "parse"
--- | "projectile"
--- | "projectile_impact"
--- | "rcon"
--- | "shutdown"
--- | "startround"
--- | "startround_prespawn"
--- | "trigger"
--- | "triggerentity"

--- Category that contains the time hooks.
--- @alias hook_type_time
--- | "always"
--- | "minute"
--- | "ms100"
--- | "second"

--- Category that contains anything involving the player.
--- @alias hook_type_player
--- | "assist"
--- | "attack"
--- | "attack2"
--- | "bombdefuse"
--- | "bombexplode"
--- | "bombplant"
--- | "build"
--- | "buildattempt"
--- | "buy"
--- | "clientdata"
--- | "clientsetting"
--- | "collect"
--- | "connect"
--- | "die"
--- | "disconnect"
--- | "dominate"
--- | "drop"
--- | "flagcapture"
--- | "flagtake"
--- | "flashlight"
--- | "hit"
--- | "hostagedamage"
--- | "hostagekill"
--- | "hostagerescue"
--- | "hostageuse"
--- | "itemfadeout"
--- | "join"
--- | "key"
--- | "kill"
--- | "leave"
--- | "menu"
--- | "move"
--- | "movetile"
--- | "name"
--- | "radio"
--- | "reload"
--- | "say"
--- | "sayteam"
--- | "select"
--- | "serveraction"
--- | "shieldhit"
--- | "spawn"
--- | "specswitch"
--- | "spray"
--- | "suicide"
--- | "team"
--- | "use"
--- | "usebutton"
--- | "vipescape"
--- | "vote"
--- | "walkover"

--- Category that contains anything involving objects.
--- @alias hook_type_object
--- | "hitzone"
--- | "objectdamage"
--- | "objectkill"
--- | "objectupgrade"
--- | "turretscan"

--- All possible hook values.
--- @alias hook_types
--- | hook_type_basic
--- | hook_type_time
--- | hook_type_player
--- | hook_type_object

--- Dynamic objects: Class 1: Buildings.
--- @alias dynamic_object_type_id_buildings
--- | 1 # Barricade
--- | 2 # Barbed Wire
--- | 3 # Wall I
--- | 4 # Wall II
--- | 5 # Wall III
--- | 6 # Gate Field
--- | 7 # Dispenser
--- | 8 # Turret
--- | 9 # Supply
--- | 10 # Build Place
--- | 11 # Dual Turret
--- | 12 # Triple Turret
--- | 13 # Teleporter Entrance
--- | 14 # Teleporter Exit
--- | 15 # Super Supply

--- Dynamic objects: Class 2: Stuff.
--- @alias dynamic_object_type_id_stuff
--- | 20 # Mine
--- | 21 # Laser Mine
--- | 22 # Portal 1 (orange)
--- | 23 # Portal 2 (blue)

--- Dynamic objects: Class 3: Units.
--- @alias dynamic_object_type_id_units
--- | 30 # NPC

--- Dynamic objects: Class 4: Images.
--- @alias dynamic_object_type_id_images
--- | 40 # Dynamic Image

--- Dynamic object number identifier types.
--- @alias dynamic_object_type_id_types
--- | dynamic_object_type_id_buildings
--- | dynamic_object_type_id_stuff
--- | dynamic_object_type_id_units
--- | dynamic_object_type_id_images

--- List of primary (slot 1) items.
--- @alias item_type_id_primary
--- | 10 # M3
--- | 11 # XM1014
--- | 20 # MP5
--- | 21 # TMP
--- | 22 # P90
--- | 23 # Mac 10
--- | 24 # UMP45
--- | 30 # AK-47
--- | 31 # SG552
--- | 32 # M4A1
--- | 33 # Aug
--- | 34 # Scout
--- | 35 # AWP
--- | 36 # G3SG1
--- | 37 # SG550
--- | 38 # Galil
--- | 39 # Famas
--- | 40 # M249
--- | 41 # Tactical Shield
--- | 45 # Laser
--- | 46 # Flamethrower
--- | 47 # RPG Launcher
--- | 48 # Rocket Launcher
--- | 49 # Grenade Launcher
--- | 88 # Portal Gun
--- | 90 # M134
--- | 91 # FN F2000
--- | 92 # Tesla Coil

--- List of secondary (slot 2) items.
--- @alias item_type_id_secondary
--- | 1  # USP
--- | 2  # Glock
--- | 3  # Deagle
--- | 4  # P228
--- | 5  # Elite
--- | 6  # Five-Seven

--- List of melee (slot 3) items.
--- @alias item_type_id_melee
--- | 50 # Knife
--- | 69 # Machete
--- | 74 # Wrench
--- | 78 # Claw
--- | 85 # Chainsaw

--- List of explosives (slot 4) items.
--- @alias item_type_id_explosives
--- | 51 # HE
--- | 52 # Flashbang
--- | 53 # Smoke Grenade
--- | 54 # Flare
--- | 55 # Bomb
--- | 72 # Gas Grenade
--- | 73 # Molotov Cocktail
--- | 75 # Snowball
--- | 76 # Air Strike
--- | 77 # Mine
--- | 86 # Gut Bomb
--- | 87 # Laser Mine
--- | 89 # Satchel Charge

--- List of miscellaneous (slot 5/armour/equipment/special) items.
--- @alias item_type_id_miscellaneous
--- | 56 # Defuse Kit
--- | 57 # Kevlar
--- | 58 # Kevlar+Helm
--- | 59 # Night Vision
--- | 60 # Gas Mask
--- | 61 # Primary Ammo
--- | 62 # Secondary Ammo
--- | 63 # Planted Bomb
--- | 64 # Medikit
--- | 65 # Bandage
--- | 66 # Coins
--- | 67 # Money
--- | 68 # Gold
--- | 70 # Red Flag
--- | 71 # Blue Flag
--- | 79 # Light Armour
--- | 80 # Armour
--- | 81 # Heavy Armour
--- | 82 # Medic Armour
--- | 83 # Super Armour
--- | 84 # Stealth Suit

--- All item type number identifier values.
--- @alias item_type_id_types
--- | item_type_id_primary
--- | item_type_id_secondary
--- | item_type_id_melee
--- | item_type_id_explosives
--- | item_type_id_miscellaneous

--- List of all possible player number identifiers.
--- @alias player_id
--- | 0 # Used by the server instance or when no player is specified.
--- | 1  # Player carrying identifier number 1.
--- | 2  # Player carrying identifier number 2.
--- | 3  # Player carrying identifier number 3.
--- | 4  # Player carrying identifier number 4.
--- | 5  # Player carrying identifier number 5.
--- | 6  # Player carrying identifier number 6.
--- | 7  # Player carrying identifier number 7.
--- | 8  # Player carrying identifier number 8.
--- | 9  # Player carrying identifier number 9.
--- | 10 # Player carrying identifier number 10.
--- | 11 # Player carrying identifier number 11.
--- | 12 # Player carrying identifier number 12.
--- | 13 # Player carrying identifier number 13.
--- | 14 # Player carrying identifier number 14.
--- | 15 # Player carrying identifier number 15.
--- | 16 # Player carrying identifier number 16.
--- | 17 # Player carrying identifier number 17.
--- | 18 # Player carrying identifier number 18.
--- | 19 # Player carrying identifier number 19.
--- | 20 # Player carrying identifier number 20.
--- | 21 # Player carrying identifier number 21.
--- | 22 # Player carrying identifier number 22.
--- | 23 # Player carrying identifier number 23.
--- | 24 # Player carrying identifier number 24.
--- | 25 # Player carrying identifier number 25.
--- | 26 # Player carrying identifier number 26.
--- | 27 # Player carrying identifier number 27.
--- | 28 # Player carrying identifier number 28.
--- | 29 # Player carrying identifier number 29.
--- | 30 # Player carrying identifier number 30.
--- | 31 # Player carrying identifier number 31.
--- | 32 # Player carrying identifier number 32.

--- List of all possible player number identifiers.
--- @alias player_team_type_id
--- | 0 # Spectator
--- | 1 # Terrorist
--- | 2 # Counter-Terrorist - ⚠️ **Attention**: May include the VIP. Check function notes.
--- | 3 # VIP - ⚠️ **Attention**: Some functions may include the VIP with the Counter-Terrorists. Check function notes.

--- Radio messages (`I` menu).
--- @alias radio_message_type_id
--- | 6  # Cover Me - `"../sfx/radio/coverme.ogg"`
--- | 32 # You Take the Point - `"../sfx/radio/takepoint.ogg"`
--- | 23 # Hold this Position - `"../sfx/radio/position.ogg"`
--- | 24 # Regroup Team - `"../sfx/radio/regroup.ogg"`
--- | 13 # Follow Me - `"../sfx/radio/followme.ogg"`
--- | 11 # Taking Fire, Need Assistance - `"../sfx/radio/fireassis.ogg"`

--- Group radio messages (`O` menu).
--- @alias group_radio_message_type_id
--- | 15 # Go - `"../sfx/radio/go.ogg"`
--- | 10 # Fall Back - `"../sfx/radio/fallback.ogg"`
--- | 30 # Stick Together Team - `"../sfx/radio/sticktog.ogg"`
--- | 14 # Get in Position - `"../sfx/radio/getinpos.ogg"`
--- | 31 # Storm the Front - `"../sfx/radio/stormfront.ogg"`
--- | 25 # Report In - `"../sfx/radio/reportin.ogg"`

--- Report radio messages (`P` menu).
--- @alias report_radio_message_type_id
--- | 0  # Affirmative - `"../sfx/radio/affirm.ogg"`
--- | 28 # Roger  - `"../sfx/radio/roger.ogg"`
--- | 9  # Enemy Spotted - `"../sfx/radio/enemys.ogg"`
--- | 1  # Need Backup - `"../sfx/radio/backup.ogg"`
--- | 5  # Sector Clear - `"../sfx/radio/clear.ogg"`
--- | 17 # I'm in Position - `"../sfx/radio/inpos.ogg"`
--- | 26 # Reporting In - `"../sfx/radio/reportingin.ogg"`
--- | 2  # She's gonna Blow! - `"../sfx/radio/blow.ogg"`
--- | 22 # Negative - `"../sfx/radio/negative.ogg"`
--- | 8  # Enemy Down - `"../sfx/radio/enemydown.ogg"`

--- Game radio messages (sent automatically by the game).
---
--- ⚠️ **Attention**: You are not meant to use the `radio` hook with these, albeit some of them will call it.
--- @alias game_radio_message_type_id
--- | 3 # Bomb has been defused! - `"../sfx/radio/bombdef.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.
--- | 4 # Bomb has been planted! - `"../sfx/radio/bombpl.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.
--- | 7 # Counter-Terrorists Win - `"../sfx/radio/ctwin.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.
--- | 12 # Fire in the hole! - `"../sfx/radio/fireinhole.ogg"`
--- | 16 # Hostage down! - `"../sfx/radio/hosdown.ogg"`
--- | 18 # Okay, let's go! - `"../sfx/radio/letsgo.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.
--- | 19 # Lock and load! - `"../sfx/radio/locknload.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.
--- | 20 # Teammate down! - `"../sfx/radio/matedown.ogg"`
--- | 21 # Alright, let's move out! - `"../sfx/radio/moveout.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.
--- | 27 # Hostage has been rescued! - `"../sfx/radio/rescued.ogg"`
--- | 29 # Round draw! - `"../sfx/radio/rounddraw.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.
--- | 33 # Terrorists Win - `"../sfx/radio/terwin.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.
--- | 34 # Protect the V.I.P . Team! - `"../sfx/radio/vip.ogg"` - ⚠️ **Attention**: Does not trigger the `radio` hook.

--- All possible radio messages.
--- @alias radio_message_type_id_types
--- | radio_message_type_id
--- | group_radio_message_type_id
--- | report_radio_message_type_id
--- | game_radio_message_type_id

--- @todo document each command
-- Console settings that can be executed by the [parse](lua://parse) function.
--- @alias console_command
--- | "ah"
--- | "ak47"
--- | "alias"
--- | "aliases"
--- | "attack"
--- | "attack2"
--- | "aug"
--- | "autobuy"
--- | "autoscreen"
--- | "autoswitch"
--- | "awp"
--- | "back"
--- | "banip"
--- | "banname"
--- | "bans"
--- | "bansteam"
--- | "banusgn"
--- | "bind"
--- | "bot"
--- | "bot_add"
--- | "bot_add_ct"
--- | "bot_add_t"
--- | "bot_autofill"
--- | "bot_count"
--- | "bot_freeze"
--- | "bot_jointeam"
--- | "bot_keepfreeslots"
--- | "bot_kill"
--- | "bot_prefix"
--- | "bot_remove"
--- | "bot_remove_all"
--- | "bot_remove_ct"
--- | "bot_remove_t"
--- | "bot_skill"
--- | "bot_weapons"
--- | "bullets"
--- | "buy"
--- | "buyammo1"
--- | "buyammo2"
--- | "buyequip"
--- | "changelevel"
--- | "changemap"
--- | "chooseteam"
--- | "clear"
--- | "clientport"
--- | "close"
--- | "cmsg"
--- | "connections"
--- | "console"
--- | "copyaddress"
--- | "customkill"
--- | "damageobject"
--- | "damagetile"
--- | "deagle"
--- | "deathnoticeimg"
--- | "deathslap"
--- | "debug"
--- | "debugai"
--- | "debuglog"
--- | "debuglua"
--- | "debugstats"
--- | "defuser"
--- | "disconnect"
--- | "dmgindicator"
--- | "download"
--- | "drawradar"
--- | "drop"
--- | "echo"
--- | "effect"
--- | "elite"
--- | "elites"
--- | "endround"
--- | "equip"
--- | "exec"
--- | "exit"
--- | "explosion"
--- | "famas"
--- | "flare"
--- | "flash"
--- | "flashlight"
--- | "flashplayer"
--- | "flashposition"
--- | "fn57"
--- | "forward"
--- | "fowalpha"
--- | "fowdetails"
--- | "fps"
--- | "freeprojectile"
--- | "g3sg1"
--- | "galil"
--- | "glock"
--- | "gore"
--- | "grenademode"
--- | "hegren"
--- | "hudtxt"
--- | "hudtxt2"
--- | "hudtxtalphafade"
--- | "hudtxtclear"
--- | "hudtxtcolorfade"
--- | "hudtxtmove"
--- | "hud_fastswitch"
--- | "hud_takesshots"
--- | "include"
--- | "invnext"
--- | "invprev"
--- | "items"
--- | "itemshadows"
--- | "kick"
--- | "kill"
--- | "killobject"
--- | "killplayer"
--- | "lastinv"
--- | "left"
--- | "lefthand"
--- | "listbans"
--- | "listplayers"
--- | "localport"
--- | "logaddress_add"
--- | "logaddress_remove"
--- | "logaddress_removeall"
--- | "logbatch"
--- | "logmaxflushrate"
--- | "logsplit"
--- | "logstamp"
--- | "lua"
--- | "luareset"
--- | "m249"
--- | "m3"
--- | "m4a1"
--- | "mac10"
--- | "makect"
--- | "makespec"
--- | "maket"
--- | "map"
--- | "mapinfo"
--- | "maps"
--- | "mapshadows"
--- | "mapsounds"
--- | "markplayer"
--- | "memory"
--- | "menuselect"
--- | "menu_lanscanport"
--- | "mp5"
--- | "mp_antispeeder"
--- | "mp_autogamemode"
--- | "mp_autoteambalance"
--- | "mp_building_health"
--- | "mp_building_limit"
--- | "mp_building_price"
--- | "mp_buymenu"
--- | "mp_buytime"
--- | "mp_c4timer"
--- | "mp_connectionlimit"
--- | "mp_curtailedexplosions"
--- | "mp_damagefactor"
--- | "mp_deathdrop"
--- | "mp_dispenser_health"
--- | "mp_dispenser_money"
--- | "mp_dmspawnmoney"
--- | "mp_dropgrenades"
--- | "mp_flashlight"
--- | "mp_floodprot"
--- | "mp_floodprotignoretime"
--- | "mp_freezetime"
--- | "mp_grenaderebuy"
--- | "mp_hostagepenalty"
--- | "mp_hovertext"
--- | "mp_hud"
--- | "mp_hudscale"
--- | "mp_idleaction"
--- | "mp_idlekick"
--- | "mp_idletime"
--- | "mp_infammo"
--- | "mp_kevlar"
--- | "mp_kickpercent"
--- | "mp_killbuildingmoney"
--- | "mp_killbuildings"
--- | "mp_killinfo"
--- | "mp_killteambuildings"
--- | "mp_lagcompensation"
--- | "mp_lagcompensationdivisor"
--- | "mp_localrconoutput"
--- | "mp_luamap"
--- | "mp_luaserver"
--- | "mp_mapgoalscore"
--- | "mp_mapvoteratio"
--- | "mp_maxclientsip"
--- | "mp_maxrconfails"
--- | "mp_natholepunching"
--- | "mp_pinglimit"
--- | "mp_postspawn"
--- | "mp_radar"
--- | "mp_randomspawn"
--- | "mp_recoil"
--- | "mp_reservations"
--- | "mp_respawndelay"
--- | "mp_roundlimit"
--- | "mp_roundtime"
--- | "mp_shotweakening"
--- | "mp_smokeblock"
--- | "mp_startmoney"
--- | "mp_supply_items"
--- | "mp_teamkillpenalty"
--- | "mp_teleportreload"
--- | "mp_tempbantime"
--- | "mp_timelimit"
--- | "mp_tkpunish"
--- | "mp_trace"
--- | "mp_turretdamage"
--- | "mp_unbuildable"
--- | "mp_unbuyable"
--- | "mp_vulnerablehostages"
--- | "mp_weaponfadeout"
--- | "mp_winlimit"
--- | "mp_wpndmg"
--- | "mp_wpndmg_z1"
--- | "mp_wpndmg_z2"
--- | "mp_zombiedmg"
--- | "mp_zombiekillequip"
--- | "mp_zombiekillscore"
--- | "mp_zombierecover"
--- | "mp_zombiespeedmod"
--- | "msg"
--- | "name"
--- | "netinfo"
--- | "nick"
--- | "nightvision"
--- | "nvgs"
--- | "p228"
--- | "p90"
--- | "particles"
--- | "playershadows"
--- | "quit"
--- | "radio1"
--- | "radio2"
--- | "radio3"
--- | "rcon"
--- | "rcon_password"
--- | "rcon_pw"
--- | "rebuy"
--- | "recoil"
--- | "relativemovement"
--- | "reload"
--- | "removeitem"
--- | "render3d"
--- | "renderdecals"
--- | "renderdecoration"
--- | "reroute"
--- | "resources"
--- | "restart"
--- | "restartround"
--- | "right"
--- | "say"
--- | "sayteam"
--- | "scout"
--- | "screenshot"
--- | "server"
--- | "serveraction1"
--- | "serveraction2"
--- | "serveraction3"
--- | "serverinfo"
--- | "setammo"
--- | "setarmor"
--- | "setassists"
--- | "setdeaths"
--- | "sethealth"
--- | "setmaxhealth"
--- | "setmoney"
--- | "setmvp"
--- | "setname"
--- | "setpos"
--- | "setscore"
--- | "setteamscores"
--- | "settile"
--- | "setweapon"
--- | "SG550"
--- | "sg552"
--- | "sgren"
--- | "shadows"
--- | "shadowshade_obstacle"
--- | "shadowshade_wall"
--- | "shadowz_obstacles"
--- | "shadowz_wall"
--- | "shadow_angle"
--- | "shadow_frameskipping"
--- | "shake"
--- | "shield"
--- | "showscores"
--- | "slap"
--- | "slot0"
--- | "slot1"
--- | "slot10"
--- | "slot2"
--- | "slot3"
--- | "slot4"
--- | "slot5"
--- | "slot6"
--- | "slot7"
--- | "slot8"
--- | "slot9"
--- | "snapshot"
--- | "sounddriver"
--- | "soundmode"
--- | "spawnitem"
--- | "spawnnpc"
--- | "spawnobject"
--- | "spawnplayer"
--- | "spawnprojectile"
--- | "specmode"
--- | "specplayer"
--- | "speed"
--- | "speedmod"
--- | "spray"
--- | "spraycolor"
--- | "spraylogo"
--- | "strip"
--- | "sv_checkusgnlogin"
--- | "sv_daylighttime"
--- | "sv_forcelight"
--- | "sv_fow"
--- | "sv_friendlyfire"
--- | "sv_gamemode"
--- | "sv_gm"
--- | "sv_hostport"
--- | "sv_lan"
--- | "sv_map"
--- | "sv_maptransfer"
--- | "sv_maxplayers"
--- | "sv_msg"
--- | "sv_msg2"
--- | "sv_name"
--- | "sv_offscreendamage"
--- | "sv_password"
--- | "sv_rcon"
--- | "sv_rconusers"
--- | "sv_restart"
--- | "sv_restartround"
--- | "sv_sound"
--- | "sv_sound2"
--- | "sv_soundpos"
--- | "sv_specmode"
--- | "sv_spraytransfer"
--- | "sv_stopsound"
--- | "sv_usgnonly"
--- | "team"
--- | "tileanimations"
--- | "tmp"
--- | "transfer_speed"
--- | "trigger"
--- | "triggerposition"
--- | "ump45"
--- | "unban"
--- | "unbanall"
--- | "unbindall"
--- | "use"
--- | "usgn_addserver"
--- | "usgn_info"
--- | "usgn_pw"
--- | "usgn_user"
--- | "usp"
--- | "vest"
--- | "vesthelm"
--- | "visibleshots"
--- | "volume"
--- | "vote"
--- | "votemap"
--- | "votemenu"
--- | "weapon"
--- | "wiggle"
--- | "win"
--- | "xm1014"

--- @todo document each command
--- Console Settings that can be accessed by the [game](lua://game) function.
--- @alias setting_command
--- | "version" # `string`: the current game version.
--- | "dedicated" # `boolean`: `true` if server is dedicated, `false` otherwise.
--- | "phase" # `number`: game phase (`0` for freezetime, `1` for actual game).
--- | "round" # `number`: current round.
--- | "timeleft" # `number`: remaining round time in seconds.
--- | "maptimeleft" # `number`: remaining time on map in seconds (float precision), `1000000` if unlimited.
--- | "score_t" # `number`: score of terrorists (rounds won).
--- | "score_ct" # `number`: score of counter-terrorists (rounds won).
--- | "winrow_t" # `number`: rounds won in a row by terrorists.
--- | "winrow_ct" # `number`: rounds won in a row by counter-terrorists.
--- | "nextmap" # `string`: the next map in the map cycle.
--- | "ticks" # `number`: server ticks (refresh rate / main-loop iterations per second).
--- | "port" # `string`: UDP port used by the server (`"no socket"` if failed to open port).
--- | "bombplanted" # `boolean`: `true` if bomb is currently planted and blinking, `false` otherwise.
--- | "sysfolder" # `string`: the system folder/path (`"sys"` by default, custom value if specified via commandline).
--- | "ah"
--- | "autoscreen"
--- | "autoswitch"
--- | "bot_count"
--- | "bot_prefix"
--- | "bot_skill"
--- | "bot_weapons"
--- | "bullets"
--- | "debug"
--- | "debugai"
--- | "debuglog"
--- | "debuglua"
--- | "dmgindicator"
--- | "drawradar"
--- | "fowalpha"
--- | "fowdetails"
--- | "gore"
--- | "grenademode"
--- | "hud_fastswitch"
--- | "itemshadows"
--- | "localport"
--- | "logbatch"
--- | "logmaxflushrate"
--- | "logsplit"
--- | "logstamp"
--- | "mapshadows"
--- | "mapsounds"
--- | "markplayer"
--- | "menu_lanscanport"
--- | "mp_antispeeder"
--- | "mp_autogamemode"
--- | "mp_autoteambalance"
--- | "mp_buytime"
--- | "mp_c4timer"
--- | "mp_connectionlimit"
--- | "mp_curtailedexplosions"
--- | "mp_damagefactor"
--- | "mp_deathdrop"
--- | "mp_dispenser_health"
--- | "mp_dispenser_money"
--- | "mp_dmspawnmoney"
--- | "mp_dropgrenades"
--- | "mp_flashlight"
--- | "mp_floodprot"
--- | "mp_floodprotignoretime"
--- | "mp_freezetime"
--- | "mp_grenaderebuy"
--- | "mp_hostagepenalty"
--- | "mp_hovertext"
--- | "mp_hud"
--- | "mp_hudscale"
--- | "mp_idleaction"
--- | "mp_idlekick"
--- | "mp_idletime"
--- | "mp_infammo"
--- | "mp_kevlar"
--- | "mp_kickpercent"
--- | "mp_killbuildingmoney"
--- | "mp_killbuildings"
--- | "mp_killinfo"
--- | "mp_killteambuildings"
--- | "mp_lagcompensation"
--- | "mp_lagcompensationdivisor"
--- | "mp_localrconoutput"
--- | "mp_luamap"
--- | "mp_luaserver"
--- | "mp_mapgoalscore"
--- | "mp_mapvoteratio"
--- | "mp_maxclientsip"
--- | "mp_maxrconfails"
--- | "mp_natholepunching"
--- | "mp_pinglimit"
--- | "mp_postspawn"
--- | "mp_radar"
--- | "mp_randomspawn"
--- | "mp_recoil"
--- | "mp_respawndelay"
--- | "mp_roundlimit"
--- | "mp_roundtime"
--- | "mp_shotweakening"
--- | "mp_smokeblock"
--- | "mp_startmoney"
--- | "mp_supply_items"
--- | "mp_teamkillpenalty"
--- | "mp_teleportreload"
--- | "mp_tempbantime"
--- | "mp_timelimit"
--- | "mp_tkpunish"
--- | "mp_trace"
--- | "mp_turretdamage"
--- | "mp_unbuyable"
--- | "mp_vulnerablehostages"
--- | "mp_weaponfadeout"
--- | "mp_winlimit"
--- | "mp_zombiedmg"
--- | "mp_zombiekillequip"
--- | "mp_zombiekillscore"
--- | "mp_zombierecover"
--- | "mp_zombiespeedmod"
--- | "name"
--- | "particles"
--- | "playershadows"
--- | "recoil"
--- | "relativemovement"
--- | "renderdecals"
--- | "renderdecoration"
--- | "shadows"
--- | "shadowshade_obstacle"
--- | "shadowshade_wall"
--- | "soundmode"
--- | "spraycolor"
--- | "spraylogo"
--- | "sv_checkusgnlogin"
--- | "sv_daylighttime"
--- | "sv_fow"
--- | "sv_friendlyfire"
--- | "sv_gamemode"
--- | "sv_hostport"
--- | "sv_lan"
--- | "sv_map"
--- | "sv_maptransfer"
--- | "sv_maxplayers"
--- | "sv_name"
--- | "sv_offscreendamage"
--- | "sv_password"
--- | "sv_rcon"
--- | "sv_specmode"
--- | "sv_spraytransfer"
--- | "sv_usgnonly"
--- | "tileanimations"
--- | "transfer_speed"
--- | "visibleshots"
--- | "volume"
--- | "wiggle"