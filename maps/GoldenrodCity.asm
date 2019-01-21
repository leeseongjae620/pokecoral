const_value set 2
	const LUSTER1NPC1
	const LUSTER1NPC2
	const LUSTER1NPC3
	const LUSTER1NPC4
	const LUSTER1NPC5
	const LUSTER1NPC6
	const LUSTER1NPC7
	const LUSTER1NPC8
	const LUSTER1NPC9
	const LUSTER1NPC10
	const LUSTER1NPC11
	const LUSTER1NPC12

GoldenrodCity_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 2
	
	dbw MAPCALLBACK_TILES, .CheckLusterTrashcans

	
.CheckLusterTrashcans:
	checkevent EVENT_LUSTER_TRASHCAN_1
	iftrue .OpenSesame1
.cont1
	checkevent EVENT_LUSTER_TRASHCAN_2
	iftrue .OpenSesame2
.cont2
	checkevent EVENT_LUSTER_TRASHCAN_3
	iftrue .OpenSesame3
.cont3
	checkevent EVENT_LUSTER_TRASHCAN_4
	iftrue .OpenSesame4
.cont4
	checkevent EVENT_LUSTER_TRASHCAN_5
	iftrue .OpenSesame5
.cont5
	checkevent EVENT_LUSTER_TRASHCAN_6
	iftrue .OpenSesame6
	return

.OpenSesame1:
	changeblock $c, $1e, $52
	jump .cont1

.OpenSesame2:
	changeblock $e, $1e, $53
	jump .cont2
	
.OpenSesame3:
	changeblock $e, $2e, $4d
	jump .cont3
	
.OpenSesame4:
	changeblock $14, $2e, $4c
	jump .cont4
	
.OpenSesame5:
	changeblock $e, $38, $4d
	jump .cont5
	
.OpenSesame6:
	changeblock $14, $38, $4c
	return

GoldenrodCity_MapEventHeader:: db 0, 0

.Warps: db 7
	warp_def 20, 2, 5, ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def 21, 2, 6, ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def 22, 2, 7, ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def 23, 2, 8, ROUTE_6_UNDERGROUND_ENTRANCE
	warp_def 9, 13, 1, ROUTE_2
	warp_def 67, 22, 1, ROUTE_6_SAFFRON_GATE
	warp_def 67, 23, 2, ROUTE_6_SAFFRON_GATE

.CoordEvents: db 0

.BGEvents: db 6
	signpost 30, 13, SIGNPOST_READ, LusterTrashcan1
	signpost 30, 14, SIGNPOST_READ, LusterTrashcan2
	signpost 47, 14, SIGNPOST_READ, LusterTrashcan3
	signpost 47, 20, SIGNPOST_READ, LusterTrashcan4
	signpost 57, 14, SIGNPOST_READ, LusterTrashcan5
	signpost 57, 20, SIGNPOST_READ, LusterTrashcan6

.ObjectEvents: db 12
	person_event SPRITE_OFFICER, 19, 23, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Luster1NPC1, -1
	person_event SPRITE_COOLTRAINER_F, 15, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Luster1NPC2, -1
	person_event SPRITE_GENTLEMAN, 25, 24, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, Luster1NPC3, -1
	person_event SPRITE_YOUNGSTER, 37, 15, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, Luster1NPC4, -1
	person_event SPRITE_COOLTRAINER_F, 45, 21, SPRITEMOVEDATA_WANDER, 2, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Luster1NPC5, -1
	person_event SPRITE_YOUNGSTER, 51, 16, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, Luster1NPC6, -1
	person_event SPRITE_LASS, 38, 21, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 1, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, Luster1NPC7, -1
	person_event SPRITE_RODNEY_FISHER, 45, 9, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Luster1NPC8, -1
	person_event SPRITE_BUG_CATCHER, 59, 7, SPRITEMOVEDATA_WANDER, 2, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, Luster1NPC9, -1
	person_event SPRITE_YOUNGSTER, 64, 24, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Luster1NPC10, -1
	person_event SPRITE_MEOWTH, 56, 14, SPRITEMOVEDATA_POKEMON, 2, 1, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, Luster1NPC11, -1
	person_event SPRITE_PIKACHU, 37, 14, SPRITEMOVEDATA_POKEMON, 2, 1, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Luster1NPC12, -1

Luster1NPC1:
	checkcode VAR_FACING
	if_equal UP, .YouAreFacingUP
	checkitem TRAIN_TICKET
	iffalse .noticket
	
	faceplayer
	opentext
	writetext Luster1NPC1TextRideTrain1
	yesorno
	iffalse .end
	writetext Luster1NPC1TextRideTrain2
	waitbutton
	closetext
	applymovement LUSTER1NPC1, Movement_LusterTrainGuy
	spriteface LUSTER1NPC1, DOWN
	applymovement PLAYER, Movement_LusterTrainPlayer
	spriteface PLAYER, DOWN
	
.end
.noticket
	writetext Luster1NPC1TextRideTrain3
	waitbutton
	closetext
	end
	
.YouAreFacingUP
	jumptextfaceplayer Luster1NPC1TextGetOffTracks
		
Luster1NPC2:
	jumptextfaceplayer Luster1NPC2Text
	
	
Luster1NPC3:
	faceplayer
	opentext
	writetext Luster1NPC3Text
	waitbutton
	closetext
	spriteface LUSTER1NPC3, DOWN
	end
	
Luster1NPC4:
	jumptextfaceplayer Luster1NPC4Text
		
Luster1NPC5:
	jumptextfaceplayer Luster1NPC5Text
	
Luster1NPC6:
	jumptextfaceplayer Luster1NPC6Text
	
Luster1NPC7:
	jumptextfaceplayer Luster1NPC7Text
	
Luster1NPC8:
	jumptextfaceplayer Luster1NPC8Text
	
Luster1NPC9:
	jumptextfaceplayer Luster1NPC9Text
	
Luster1NPC10:
	jumptextfaceplayer Luster1NPC10Text
		
Luster1NPC11:
	opentext
	writetext Luster1NPC11Text
	cry MEOWTH
	waitbutton
	closetext
	end
	
Luster1NPC12:
	opentext
	writetext Luster1NPC12Text
	cry PIKACHU
	waitbutton
	closetext
	end
		
LusterTrashcan1:
	changeblock $c, $1e, $52
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_1
	end
	
LusterTrashcan2:
	changeblock $e, $1e, $53
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_2
	end
	
LusterTrashcan3:
	changeblock $e, $2e, $4d
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_3
	end
	
LusterTrashcan4:
	changeblock $14, $2e, $4c
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_4
	end
	
LusterTrashcan5:
	changeblock $e, $38, $4d
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_5
	end
	
LusterTrashcan6:
	changeblock $14, $38, $4c
	opentext
	reloadmappart
	closetext
	setevent EVENT_LUSTER_TRASHCAN_6
	end
	
Luster1NPC1Text:
	text "TEXT 1"
	done
	
Luster1NPC2Text:
	text "It looks like I"
	line "can get down from"
	cont "here, but it seems"
	cont "a bit dangerous."
	
	para "I might be better"
	line "off using a #-"
	cont "MON to get down…"
	done
	
Luster1NPC3Text:
	text "TEXT 3"
	done
	
Luster1NPC4Text:
	text "LUSTER CITY has"
	line "two #MON"
	cont "CENTERS."
	
	para "There's this one"
	line "here, and also one"
	cont "in the SHOPPING"
	cont "MALL."
	
	para "Pretty convenient"
	line "if you ask me!"
	done
	
Luster1NPC5Text:
	text "TEXT 5"
	done
	
Luster1NPC6Text:
	text "TEXT 6"
	done
	
Luster1NPC7Text:
	text "TEXT 7"
	done
	
Luster1NPC8Text:
	text "TEXT 8"
	done
	
Luster1NPC9Text:
	text "I'm not supposed to"
	line "play in the"
	cont "street."
	
	para "Don't tell my"
	line "parents."
	done
	
Luster1NPC10Text:
	text "TEXT 10"
	done
	
Luster1NPC11Text:
	text "TEXT 11"
	done
	
Luster1NPC12Text:
	text "TEXT 12"
	done
	
Luster1NPC1TextRideTrain1:
	text "TEXT 1"
	done
	
Luster1NPC1TextRideTrain2:
	text "TEXT 2"
	done
	
Luster1NPC1TextRideTrain3:
	text "TEXT 3"
	done
	
Luster1NPC1TextGetOffTracks:
	text "TEXT"
	done
	
Movement_LusterTrainGuy:
	step DOWN
	step RIGHT
	step_end
	
Movement_LusterTrainPlayer:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step_end