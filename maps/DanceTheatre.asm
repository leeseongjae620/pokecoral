const_value set 2
	const MT_ONWA_TRAINER1
	const MT_ONWA_TRAINER2
	const MT_ONWA_TRAINER3
	const MT_ONWA_NPC1
	const MT_ONWA_NPC2
	const MT_ONWA_CUTSCENE1
	const MT_ONWA_CUTSCENE2
	const MT_ONWA_CUTSCENE3
	const MT_ONWA_CUTSCENE4
	const MT_ONWA_CUTSCENE5
	const MT_ONWA_CUTSCENE6
	const MT_ONWA_CUTSCENE7

DanceTheatre_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


DanceTheatre_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 21, 28, 2, ROUTE_19___FUCHSIA_GATE
	warp_def 33, 4, 1, ROUTE_20

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 12
	person_event SPRITE_ROCKER, 15, 30, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 2, TrainerMtOnwaOutside_1, -1
	person_event SPRITE_FISHER, 13, 10, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_TRAINER, 3, TrainerMtOnwaOutside_2, -1
	person_event SPRITE_COOLTRAINER_F, 29, 14, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_TRAINER, 4, TrainerMtOnwaOutside_3, -1
	person_event SPRITE_YOUNGSTER, 8, 17, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, MtOnwaPanNPC1, EVENT_PLAYER_IS_MALE
	person_event SPRITE_LASS, 8, 17, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, MtOnwaPanNPC2, EVENT_PLAYER_IS_FEMALE
	person_event SPRITE_PLAYER_CUTSCENE, 8, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, -1, EVENT_MT_ONWA_CUTSCENE
	person_event SPRITE_PLAYER_CUTSCENE, 8, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, -1, EVENT_MT_ONWA_CUTSCENE
	person_event SPRITE_PLAYER_CUTSCENE, 8, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, -1, EVENT_MT_ONWA_CUTSCENE
	person_event SPRITE_PLAYER_CUTSCENE, 8, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, -1, EVENT_MT_ONWA_CUTSCENE
	person_event SPRITE_PLAYER_CUTSCENE, 8, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, -1, EVENT_MT_ONWA_CUTSCENE
	person_event SPRITE_PLAYER_CUTSCENE, 8, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, -1, EVENT_MT_ONWA_CUTSCENE
	person_event SPRITE_PLAYER_CUTSCENE, 8, 16, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, -1, EVENT_MT_ONWA_CUTSCENE

MtOnwaPanNPC1:
	faceplayer
	opentext
	writetext MtOnwaPanNPCTextYesorNo
	yesorno
	iffalse .end
	writetext MtOnwaPanNPCText1
	waitbutton
	closetext
	spriteface MT_ONWA_NPC1, UP
	checkcode VAR_FACING
	if_equal RIGHT, .cont
	checkcode VAR_FACING
	if_equal LEFT, .YouAreFacingLeft
	applymovement PLAYER, Movement_MtOnwaWalk1
	jump .cont
.YouAreFacingLeft
	applymovement PLAYER, Movement_MtOnwaWalk2
.cont
	spriteface PLAYER, UP
	copybytetovar wPlayerPalette
    if_equal 0, .red
    if_equal 1, .blue
    if_equal 2, .green
	if_equal 3, .brown
	if_equal 4, .purple
	if_equal 5, .pink
	if_equal 6, .yellow
.red:	
	appear MT_ONWA_CUTSCENE1
	jump .cont2

.blue
	appear MT_ONWA_CUTSCENE2
	jump .cont2

.green
	appear MT_ONWA_CUTSCENE3
	jump .cont2
	
.brown
	appear MT_ONWA_CUTSCENE4
	jump .cont2
	
.purple
	appear MT_ONWA_CUTSCENE5
	jump .cont2
	
.pink
	appear MT_ONWA_CUTSCENE6
	jump .cont2
	
.yellow
	appear MT_ONWA_CUTSCENE7

.cont2
	spriteface MT_ONWA_NPC1, UP
	pause 15
	writecode VAR_MOVEMENT, PLAYER_INVISIBLE
	special ReplaceKrisSprite
	applymovement PLAYER, Movement_MtOnwaCutscene1
	pause 40
	opentext
	writetext MtOnwaPanNPCText2
	waitbutton
	closetext
	pause 40
	opentext
	writetext MtOnwaPanNPCText5
	waitbutton
	closetext
	pause 40
	opentext
	writetext MtOnwaPanNPCText6
	waitbutton
	closetext
	pause 60

	applymovement PLAYER, Movement_MtOnwaCutscene2
	spriteface PLAYER, UP
	writecode VAR_MOVEMENT, PLAYER_NORMAL
	special ReplaceKrisSprite
	disappear MT_ONWA_CUTSCENE1
	disappear MT_ONWA_CUTSCENE2
	disappear MT_ONWA_CUTSCENE3
	disappear MT_ONWA_CUTSCENE4
	disappear MT_ONWA_CUTSCENE5
	disappear MT_ONWA_CUTSCENE6
	disappear MT_ONWA_CUTSCENE7
	spriteface MT_ONWA_NPC1, LEFT
	spriteface PLAYER, RIGHT
	opentext
	writetext MtOnwaPanNPCText3
	waitbutton
	closetext
	spriteface MT_ONWA_NPC1, UP
	end
.end
	writetext MtOnwaPanNPCText4
	waitbutton
	closetext
	spriteface MT_ONWA_NPC1, UP
	end
	
MtOnwaPanNPC2:
	faceplayer
	opentext
	writetext MtOnwaPanNPCTextYesorNo
	yesorno
	iffalse .end
	writetext MtOnwaPanNPCText1
	waitbutton
	closetext
	spriteface MT_ONWA_NPC2, UP
	checkcode VAR_FACING
	if_equal RIGHT, .cont
	checkcode VAR_FACING
	if_equal LEFT, .YouAreFacingLeft
	applymovement PLAYER, Movement_MtOnwaWalk1
	jump .cont
.YouAreFacingLeft
	applymovement PLAYER, Movement_MtOnwaWalk2
.cont
	spriteface PLAYER, UP
	copybytetovar wPlayerPalette
    if_equal 0, .red
    if_equal 1, .blue
    if_equal 2, .green
	if_equal 3, .brown
	if_equal 4, .purple
	if_equal 5, .pink
	if_equal 6, .yellow
.red:	
	appear MT_ONWA_CUTSCENE1
	jump .cont2

.blue
	appear MT_ONWA_CUTSCENE2
	jump .cont2

.green
	appear MT_ONWA_CUTSCENE3
	jump .cont2
	
.brown
	appear MT_ONWA_CUTSCENE4
	jump .cont2
	
.purple
	appear MT_ONWA_CUTSCENE5
	jump .cont2
	
.pink
	appear MT_ONWA_CUTSCENE6
	jump .cont2
	
.yellow
	appear MT_ONWA_CUTSCENE7

.cont2
	spriteface MT_ONWA_NPC2, UP
	pause 15
	writecode VAR_MOVEMENT, PLAYER_INVISIBLE
	special ReplaceKrisSprite
	applymovement PLAYER, Movement_MtOnwaCutscene1
	pause 40
	opentext
	writetext MtOnwaPanNPCText2
	waitbutton
	closetext
	pause 40
	opentext
	writetext MtOnwaPanNPCText5
	waitbutton
	closetext
	pause 40
	opentext
	writetext MtOnwaPanNPCText6
	waitbutton
	closetext
	pause 60

	applymovement PLAYER, Movement_MtOnwaCutscene2
	spriteface PLAYER, UP
	writecode VAR_MOVEMENT, PLAYER_NORMAL
	special ReplaceKrisSprite
	disappear MT_ONWA_CUTSCENE1
	disappear MT_ONWA_CUTSCENE2
	disappear MT_ONWA_CUTSCENE3
	disappear MT_ONWA_CUTSCENE4
	disappear MT_ONWA_CUTSCENE5
	disappear MT_ONWA_CUTSCENE6
	disappear MT_ONWA_CUTSCENE7
	spriteface MT_ONWA_NPC2, LEFT
	spriteface PLAYER, RIGHT
	opentext
	writetext MtOnwaPanNPCText3
	waitbutton
	closetext
	spriteface MT_ONWA_NPC2, UP
	end
.end
	writetext MtOnwaPanNPCText4
	waitbutton
	closetext
	spriteface MT_ONWA_NPC2, UP
	end
	
TrainerMtOnwaOutside_1:
	trainer EVENT_BEAT_MT_ONWA_OUTSIDE_TRAINER_1, COOLTRAINERM, 1, TrainerMtOnwaOutside_1SeenText, TrainerMtOnwaOutside_1BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwaOutside_1NormalText
	waitbutton
	closetext
	end
	
TrainerMtOnwaOutside_2:
	trainer EVENT_BEAT_MT_ONWA_OUTSIDE_TRAINER_2, HIKER, 10, TrainerMtOnwaOutside_2SeenText, TrainerMtOnwaOutside_2BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwaOutside_2NormalText
	waitbutton
	closetext
	end
	
TrainerMtOnwaOutside_3:
	trainer EVENT_BEAT_MT_ONWA_OUTSIDE_TRAINER_3, COOLTRAINERF, 1, TrainerMtOnwaOutside_3SeenText, TrainerMtOnwaOutside_3BeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext TrainerMtOnwaOutside_3NormalText
	waitbutton
	closetext
	end
	
MtOnwaPanNPCText1:
	text "Great!"
	done
	
MtOnwaPanNPCText2:
	text "We're so high up!"
	done
	
MtOnwaPanNPCText3:
	text "Thanks for sharing"
	line "the view with me!"
	
	para "Come back any"
	line "time."
	
	para "I'll be here!"
	done
	
MtOnwaPanNPCText4:
	text "Oh well…"
	
	para "More view for me!"
	done
	
MtOnwaPanNPCText5:
	text "Everything looks"
	line "so small from up"
	cont "here."
	done
	
MtOnwaPanNPCText6:	
	text "It's a bit"
	line "romantic…"
	done
	
MtOnwaPanNPCTextYesorNo:
	text "The view from here"
	line "is amazing!"
	
	para "Want to look with"
	line "me for a while?"
	done
	
TrainerMtOnwaOutside_1SeenText:
	text "Ah!"
	
	para "The air out here"
	line "is so refreshing"
	
	para "after being in"
	line "that cave for so"
	cont "long."
	
	para "Now I'm itching for"
	line "a battle!"
	done
	
TrainerMtOnwaOutside_1BeatenText:
	text "Scratch that…"
	done
	
TrainerMtOnwaOutside_1NormalText:
	text "I should have just"
	line "minded my own"
	cont "business."
	done
	
TrainerMtOnwaOutside_2SeenText:
	text "If you made it up"
	line "this high, you"
	cont "must be quite the"
	cont "TRAINER!"
	done
	
TrainerMtOnwaOutside_2BeatenText:
	text "Yep!"
	
	para "I was right!"
	done
	
TrainerMtOnwaOutside_2NormalText:
	text "You're strong,"
	line "alright."
	done
	
TrainerMtOnwaOutside_3SeenText:
	text "The air up here is"
	line "a lot thinner."
	
	para "It's a great place"
	line "to train!"
	done
	
TrainerMtOnwaOutside_3BeatenText:
	text "Woah…"
	
	para "I'm getting light-"
	line "headed…"
	done
	
TrainerMtOnwaOutside_3NormalText:
	text "I think that's"
	line "enough training"
	cont "for now…"
	done
	
Movement_MtOnwaWalk1:
	step LEFT
	step UP
	step_end
	
Movement_MtOnwaWalk2:
	step DOWN
	step LEFT
	step LEFT
	step UP
	step_end
	
Movement_MtOnwaCutscene1:
	slow_step UP
	slow_step UP
	slow_step UP
	step_end
	
Movement_MtOnwaCutscene2:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end