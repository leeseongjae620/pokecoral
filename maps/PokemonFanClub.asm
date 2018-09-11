const_value set 2
	const POKEMONFANCLUB_GENTLEMAN

PokemonFanClub_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

PokemonFanClub_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 3, ROUTE_11
	warp_def 7, 3, 3, ROUTE_11

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_COOLTRAINER_F, 3, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, RanchHouseDodrioGirl, -1

RanchHouseDodrioGirl:
	faceplayer
	opentext
	writetext RanchHouseDodrioGirlText1
	special PlaceMoneyTopRight
	yesorno
	iffalse .no
	checkmoney $0, 500
	if_equal $2, .nomoney
	playsound SFX_TRANSACTION
	takemoney $0, 500
	special PlaceMoneyTopRight
	writetext RanchHouseDodrioGirlText2
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	special Special_FadeBlackQuickly
	writecode VAR_MOVEMENT, PLAYER_DODRIO
	domaptrigger RUINS_OF_ALPH_HO_OH_ITEM_ROOM, $3
	waitsfx
	warpfacing DOWN, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 8, 14
	end
.no
	writetext RanchHouseDodrioGirlText3
	waitbutton
	closetext
	end
.nomoney
	writetext RanchHouseDodrioGirlText4
	waitbutton
	closetext
	end

RanchHouseDodrioGirlText1:
	text "Howdy!"
	
	para "Welcome to the"
	line "world-famous"
	cont "DODRIO RANCH!"
	
	para "The DODRIO we"
	line "raise here are the"
	
	para "fastest in the"
	line "world!"
	
	para "People come from"
	line "far and wide to"
	cont "ride 'em."
	
	para "So, how 'bout it,"
	line "kid?"
	
	para "Wanna ride one of"
	line "our DODRIO?"
	
	para "It's only ¥500!"
	done
	
RanchHouseDodrioGirlText2:
	text "Great!"
	
	para "You won't regret"
	line "it!"
	
	para "Let's get you"
	line "saddled up!"
	done
	
RanchHouseDodrioGirlText3:
	text "Well, shucks."
	
	para "Some other time,"
	line "then."
	done
	
RanchHouseDodrioGirlText4:
	text "Oh…"
	
	para "Sorry, sugar."
	
	para "Seems like your a"
	line "little short on"
	cont "funds…"
	
	para "Come back some other"
	line "time!"
	done