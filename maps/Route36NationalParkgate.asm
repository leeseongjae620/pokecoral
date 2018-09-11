const_value set 2
	const LAKEITEMHOUSENPC1
	const LAKEITEMHOUSENPC2

Route36NationalParkgate_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

Route36NationalParkgate_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 5, ROUTE_30
	warp_def 7, 3, 5, ROUTE_30

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_FISHER, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, LakeItemHouseNPC1, -1
	person_event SPRITE_REDS_MOM, 3, 2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, LakeItemHouseNPC2, -1

LakeItemHouseNPC1:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHARCOAL
	iftrue .alreadyhavecharcoal
	writetext LakeItemHouseNPC1Text1
	buttonsound
	verbosegiveitem CHARCOAL
	iffalse .NoRoom
	setevent EVENT_GOT_CHARCOAL
.alreadyhavecharcoal
	writetext LakeItemHouseNPC1Text2
	waitbutton
	closetext
	end
.NoRoom:
	writetext LakeItemHouseNoRoomText
	waitbutton
	closetext
	end
	
LakeItemHouseNPC2:
	faceplayer
	opentext
	checkevent EVENT_GOT_MYSTIC_WATER
	iftrue .alreadyhavemysticwater
	writetext LakeItemHouseNPC2Text1
	buttonsound
	verbosegiveitem MYSTIC_WATER
	iffalse .NoRoom
	setevent EVENT_GOT_MYSTIC_WATER
.alreadyhavemysticwater
	writetext LakeItemHouseNPC2Text2
	waitbutton
	closetext
	end
.NoRoom:
	writetext LakeItemHouseNoRoomText
	waitbutton
	closetext
	end
	
LakeItemHouseNPC1Text1:
	text "I grow trees out"
	line "back and turn the"
	cont "wood into CHAR-"
	cont "COAL."
	
	para "If you have your"
	line "#MON hold CHAR-"
	cont "COAL,"
	
	para "the power of it's"
	line "FIRE-type moves"
	cont "will be boosted!"
	done
	
LakeItemHouseNPC1Text2:
	text "I make CHARCOAL,"
	line "my wife makes"
	
	para "jewelry, and my"
	line "mom grows flowers!"
	
	para "We all stay busy."
	done
	
LakeItemHouseNPC2Text1:
	text "I make jewelry to"
	line "pass the time."
	
	para "My favorite is"
	line "MYSTIC WATER."
	
	para "It powers up a"
	line "#MON's WATER-"
	cont "type moves."
	
	para "Let your #MON"
	line "hold this."
	done
	
LakeItemHouseNPC2Text2:
	text "My husband and I"
	line "recently moved"
	
	para "here from the city"
	line "to take care of"
	cont "his mother."
	
	para "I try not to show"
	line "it, but it's been"
	cont "tough on me…"
	
	para "Making jewelry is"
	line "the only way I can"
	cont "pass the time."
	done
	
LakeItemHouseNoRoomText:
	text "You don't seem to"
	line "have enough space"
	cont "to carry this."
	
	para "Come back after"
	line "you've made some"
	cont "room."
	done