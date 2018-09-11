const_value set 2
	const STARGLOWHOUSE1_MOMMY
	const STARGLOWHOUSE1_LITTLEGIRL
	const STARGLOWHOUSE1_ROCKET
	const STARGLOWHOUSE1_TOGEPI
	const STARGLOWHOUSE1_LITTLEGIRL2
	const STARGLOWHOUSE1_MOMMY2
	const STARGLOWHOUSE1_LITTLEGIRL3
	const STARGLOWHOUSE1_MOMMY3
	const STARGLOWHOUSE1_TOGEPI2

OlivineLighthouse1F_MapScriptHeader:
.MapTriggers:
	db 2
	
	maptrigger .Trigger0
	maptrigger .Trigger1

.MapCallbacks:
	db 0

.Trigger0:
	end
	
.Trigger1:
	priorityjump StarglowHouse1RocketEvent
	dotrigger $0
	end
	
OlivineLighthouse1F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 2, 1, LAKE_OF_RAGE
	warp_def 7, 3, 1, LAKE_OF_RAGE

.CoordEvents: db 2
	xy_trigger 0, 7, 3, 0, StarglowHouse1GirlStopsYou1, 0, 0
	xy_trigger 0, 7, 2, 0, StarglowHouse1GirlStopsYou2, 0, 0

.BGEvents: db 0

.ObjectEvents: db 9
	person_event SPRITE_TEACHER, 5, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StarglowHouse1Mommy, EVENT_STARGLOW_HELPED_LITTLEGIRL
	person_event SPRITE_TWIN, 7, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, StarglowHouse1LittleGirl, EVENT_STARGLOW_HOUSE
	person_event SPRITE_ROCKET, 5, 4, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StarglowHouse1Rocket, EVENT_STARGLOW_HELPED_LITTLEGIRL
	person_event SPRITE_TOGEPI, 4, 6, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowHouse1Togepi, EVENT_STARGLOW_HELPED_LITTLEGIRL
	person_event SPRITE_TWIN, 6, 5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, StarglowHouse1LittleGirl, EVENT_STARGLOW_HOUSE
	person_event SPRITE_TEACHER, 5, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StarglowHouse1Mommy, EVENT_STARGLOW_HOUSE
	person_event SPRITE_TWIN, 4, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, StarglowHouse1LittleGirl, EVENT_STARGLOW_HAVENT_HELPED_GIRL
	person_event SPRITE_TEACHER, 4, 5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, StarglowHouse1Mommy, EVENT_STARGLOW_HAVENT_HELPED_GIRL
	person_event SPRITE_TOGEPI, 4, 1, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, StarglowHouse1Togepi, EVENT_STARGLOW_HAVENT_HELPED_GIRL_TOGEPI

StarglowHouse1RocketEvent:
	spriteface STARGLOWHOUSE1_ROCKET, RIGHT
	callasm .StopRunning
	applymovement PLAYER, Movement_StarglowHouse1Player
	spriteface PLAYER, RIGHT
	appear STARGLOWHOUSE1_LITTLEGIRL
	playsound SFX_ENTER_DOOR
	applymovement STARGLOWHOUSE1_LITTLEGIRL, Movement_StarglowHouse1LittleGirl
	spriteface STARGLOWHOUSE1_LITTLEGIRL, RIGHT
	opentext
	writetext StarglowHouse1MommyText1
	waitbutton
	closetext
	opentext
	writetext StarglowHouse1RocketText1
	waitbutton
	closetext
	applymovement STARGLOWHOUSE1_ROCKET, Movement_StarglowHouse1Rocket
	playsound SFX_BUMP
	applymovement STARGLOWHOUSE1_MOMMY, Movement_StarglowHouse1Mommy
	applymovement STARGLOWHOUSE1_LITTLEGIRL, Movement_StarglowHouse1LittleGirl2
	spriteface STARGLOWHOUSE1_LITTLEGIRL, UP
	opentext
	writetext StarglowHouse1LittleGirlText1
	waitbutton
	closetext
	spriteface STARGLOWHOUSE1_ROCKET, DOWN
	opentext
	writetext StarglowHouse1RocketText2
	waitbutton
	closetext
	applymovement STARGLOWHOUSE1_ROCKET, Movement_StarglowHouse1Rocket2
	spriteface STARGLOWHOUSE1_ROCKET, UP
	applymovement STARGLOWHOUSE1_LITTLEGIRL, Movement_StarglowHouse1LittleGirl3
	spriteface STARGLOWHOUSE1_LITTLEGIRL, UP
	spriteface PLAYER, DOWN
	opentext
	writetext StarglowHouse1LittleGirlText2
	waitbutton
	closetext
;	spriteface STARGLOWHOUSE1_LITTLEGIRL, RIGHT
	end
	
.StopRunning:
	ld a, [PlayerState]
	cp PLAYER_RUN
	ret nz
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	call ReplaceKrisSprite
	ret
	
StarglowHouse1GirlStopsYou1:
	checkevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	iftrue .end
	spriteface STARGLOWHOUSE1_LITTLEGIRL, DOWN
	spriteface PLAYER, UP
	opentext
	writetext StarglowHouse1LittleGirlText2
	waitbutton
	closetext
	applymovement PLAYER, Movement_StarglowHouse1Player2
.end
	end
	
StarglowHouse1GirlStopsYou2:
	checkevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	iftrue .end
	spriteface STARGLOWHOUSE1_LITTLEGIRL, DOWN
	spriteface PLAYER, UP
	opentext
	writetext StarglowHouse1LittleGirlText2
	waitbutton
	closetext
	applymovement PLAYER, Movement_StarglowHouse1Player3
.end
	end
	
StarglowHouse1Mommy:
	checkevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	iftrue .mommy2
	jumptextfaceplayer StarglowHouse1MommyText2
	end
.mommy2
	checkevent EVENT_PUNKS_LEAVE_STARGLOW
	iftrue .mommy3
	jumptextfaceplayer StarglowHouse1MommyText4
	end
.mommy3
	jumptextfaceplayer StarglowHouse1MommyText5
	end
	

	
	
StarglowHouse1LittleGirl:
	checkevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	iftrue .littlegirl2
	jumptextfaceplayer StarglowHouse1LittleGirlText2
	end
.littlegirl2
	checkevent EVENT_PUNKS_LEAVE_STARGLOW
	iftrue .littlegirl3
	jumptextfaceplayer StarglowHouse1LittleGirlText3
	end
.littlegirl3
	checkevent EVENT_DIDNT_TAKE_TOGEPI
	iftrue .didnttaketogepi
	checkevent EVENT_GOT_TOGEPI
	iftrue .gottogepi
	faceplayer
	opentext
	writetext StarglowHouse1LittleGirlText3
	waitbutton
	closetext
	opentext
	writetext StarglowHouse1TogepiText
	cry TOGEPI
	spriteface STARGLOWHOUSE1_LITTLEGIRL3, LEFT
	waitbutton
	closetext
	opentext
	writetext StarglowHouse1LittleGirlText4
	waitbutton
	closetext
	opentext
	writetext StarglowHouse1TogepiText
	cry TOGEPI
	waitbutton
	closetext
	faceplayer
	opentext
	writetext StarglowHouse1LittleGirlText5
	yesorno
	iffalse .end
	checkcode VAR_PARTYCOUNT
	if_equal 6, .PartyFull
	disappear STARGLOWHOUSE1_TOGEPI2
	writetext StarglowHouse1GotTogepiText
	playsound SFX_CAUGHT_MON
	waitsfx
	callasm .setlevel10
	givefreepoke $7
	;givepoke TOGEPI, 5
	setevent EVENT_GOT_TOGEPI
	clearevent EVENT_DIDNT_TAKE_TOGEPI
	writetext StarglowHouse1LittleGirlText6
	waitbutton
	closetext
	end
.didnttaketogepi
	faceplayer
	opentext
	writetext StarglowHouse1LittleGirlText7
	yesorno
	iffalse .end
	disappear STARGLOWHOUSE1_TOGEPI2
	playsound SFX_CAUGHT_MON
	waitsfx
	callasm .setlevel10
	givefreepoke $7
	setevent EVENT_GOT_TOGEPI
	clearevent EVENT_DIDNT_TAKE_TOGEPI
	writetext StarglowHouse1LittleGirlText6
	waitbutton
	closetext
	end
.gottogepi
	faceplayer
	opentext
	writetext StarglowHouse1LittleGirlText8
	waitbutton
	closetext
	end
.end
	setevent EVENT_DIDNT_TAKE_TOGEPI
	writetext StarglowHouse1LittleGirlText9
	waitbutton
	closetext
	end
	
.setlevel10:
	ld a, 10
	ld [CurPartyLevel], a
	xor a
	ret
	
.PartyFull:
	setevent EVENT_DIDNT_TAKE_TOGEPI
	writetext StarglowHouse1LittleGirlText10
	waitbutton
	closetext
	end
	
StarglowHouse1Rocket:
	faceplayer
	opentext
	writetext StarglowHouse1RocketText3
	buttonsound
	playmusic MUSIC_ROCKET_ENCOUNTER
	writetext StarglowHouse1RocketText3_2
	waitbutton
	winlosstext StarglowHouse1RocketWinText, 0
	setlasttalked STARGLOWHOUSE1_ROCKET
	loadtrainer GRUNTM, 1
	startbattle
	reloadmapafterbattle
	opentext
	writetext StarglowHouse1RocketText4
	waitbutton
	closetext
	variablesprite SPRITE_RODNEY_FISHER, SPRITE_ROCKET_GIRL
	checkcode VAR_FACING
	if_equal UP, .YouAreFacingUp
	applymovement STARGLOWHOUSE1_ROCKET, Movement_StarglowHouse1Rocket3
	spriteface STARGLOWHOUSE1_ROCKET, LEFT
	spriteface STARGLOWHOUSE1_LITTLEGIRL, RIGHT
	opentext
	writetext StarglowHouse1RocketText5
	waitbutton
	closetext
	applymovement STARGLOWHOUSE1_ROCKET, Movement_StarglowHouse1Rocket5
	disappear STARGLOWHOUSE1_ROCKET
	playsound SFX_EXIT_BUILDING
	applymovement STARGLOWHOUSE1_MOMMY, Movement_StarglowHouse1Mommy2
	opentext
	writetext StarglowHouse1MommyText3
	waitbutton
	closetext
	applymovement STARGLOWHOUSE1_LITTLEGIRL, Movement_StarglowHouse1LittleGirl4
	spriteface STARGLOWHOUSE1_LITTLEGIRL, UP
	spriteface PLAYER, DOWN
	appear STARGLOWHOUSE1_LITTLEGIRL2
	opentext
	writetext StarglowHouse1LittleGirlText3
	waitbutton
	closetext
	spriteface PLAYER, RIGHT
	opentext
	writetext StarglowHouse1MommyText4
	waitbutton
	closetext
	setevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	clearevent EVENT_STARGLOW_HAVENT_HELPED_GIRL
	clearevent EVENT_STARGLOW_HAVENT_HELPED_GIRL_TOGEPI
	domaptrigger LAKE_OF_RAGE, $1
	disappear STARGLOWHOUSE1_LITTLEGIRL
	end
	
.YouAreFacingUp
	applymovement STARGLOWHOUSE1_ROCKET, Movement_StarglowHouse1Rocket4
	spriteface STARGLOWHOUSE1_ROCKET, LEFT
	spriteface STARGLOWHOUSE1_LITTLEGIRL, RIGHT
	opentext
	writetext StarglowHouse1RocketText5
	waitbutton
	closetext
	applymovement STARGLOWHOUSE1_ROCKET, Movement_StarglowHouse1Rocket5
	disappear STARGLOWHOUSE1_ROCKET
	playsound SFX_EXIT_BUILDING
	applymovement STARGLOWHOUSE1_MOMMY, Movement_StarglowHouse1Mommy2
	spriteface STARGLOWHOUSE1_MOMMY, DOWN
	spriteface PLAYER, UP
	appear STARGLOWHOUSE1_MOMMY2
	opentext
	writetext StarglowHouse1MommyText3
	waitbutton
	closetext
	applymovement STARGLOWHOUSE1_LITTLEGIRL, Movement_StarglowHouse1LittleGirl4
	spriteface PLAYER, LEFT
	opentext
	writetext StarglowHouse1LittleGirlText3
	waitbutton
	closetext
	spriteface PLAYER, UP
	opentext
	writetext StarglowHouse1MommyText4
	waitbutton
	closetext
	setevent EVENT_STARGLOW_HELPED_LITTLEGIRL
	clearevent EVENT_STARGLOW_HAVENT_HELPED_GIRL
	clearevent EVENT_STARGLOW_HAVENT_HELPED_GIRL_TOGEPI
	domaptrigger LAKE_OF_RAGE, $1
	disappear STARGLOWHOUSE1_MOMMY
	end
	
StarglowHouse1Togepi
	opentext
	writetext StarglowHouse1TogepiText
	cry TOGEPI
	waitbutton
	closetext
	end
	
Movement_StarglowHouse1Player:
	step UP
	step UP
	step_end
	
Movement_StarglowHouse1Player2:
	step UP
	step_end
	
Movement_StarglowHouse1Player3:
	step LEFT
	step_end
	
Movement_StarglowHouse1LittleGirl:
	step UP
	step LEFT
	step UP
	step_end
	
Movement_StarglowHouse1LittleGirl2:
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end
	
Movement_StarglowHouse1LittleGirl3:
	big_step LEFT
	big_step LEFT
	step_end
	
Movement_StarglowHouse1LittleGirl4:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Movement_StarglowHouse1Mommy:
	fix_facing
	jump_step RIGHT
	remove_fixed_facing
	step_end
	
Movement_StarglowHouse1Mommy2:
	step LEFT
	step_end
	
Movement_StarglowHouse1Rocket:
	fix_facing
	step LEFT
	remove_fixed_facing
	big_step RIGHT
	step_end
	
Movement_StarglowHouse1Rocket2:
	step RIGHT
	step RIGHT
	step_end
	
Movement_StarglowHouse1Rocket3:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end
	
Movement_StarglowHouse1Rocket4:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end
	
Movement_StarglowHouse1Rocket5:
	step DOWN
	step_end
	
StarglowHouse1GotTogepiText:
	text "<PLAYER> received"
	line "TOGEPI!"
	done
	
StarglowHouse1MommyText1:
	text "LADY: Please don't"
	line "hurt us!"
	
	para "You can't have my"
	line "daughter's #MON!"
	
	para "It means the world"
	line "to her."
	done
	
StarglowHouse1MommyText2:
	text "You shouldn't be"
	line "here."
	
	para "It's too dangerous"
	line "for a child."
	done
	
StarglowHouse1MommyText3:
	text "Thank you so much,"
	line "TRAINER."
	
	para "I can't bear the"
	line "thought of little"
	
	para "EGGY here being"
	line "taken away by that"
	cont "horrible man."
	done
	
StarglowHouse1MommyText4:
	text "You really should"
	line "leave town as soon"
	cont "as possible."
	
	para "There's a whole"
	line "gang of those men"
	
	para "terrorizing every-"
	line "one in town."
	
	para "The only TRAINER"
	line "around here strong"
	
	para "enough to kick"
	line "them out is the"
	cont "GYM LEADER."
	done
	
StarglowHouse1MommyText5:
	text "You chased off"
	line "those ruffians?"
	
	para "Thank you so much"
	line "for everything"
	cont "you've done!"
	
	para "Good luck out"
	line "there!"
	done
	
StarglowHouse1TogepiText:
	text "EGGY: Prrrrri!"
	done
	
StarglowHouse1RocketText1:
	text "PUNK: I don't"
	line "care!"
	
	para "Hand it over!"
	done
	
StarglowHouse1RocketText2:
	text "PUNK: Scram, kid!"
	done
	
StarglowHouse1RocketText3:
	text "What do you want,"
	line "runt?"
	
	para "You really should"
	line "mind your own"
	cont "business."
	
	para "What?"
	
	para "You think you can"
	line "stop me from"
	
	para "taking this"
	line "#MON?"
	done
	
StarglowHouse1RocketText3_2:
	text "HA!"
	
	para "Don't make me"
	line "laugh!"
	
	para "I'll shut you up"
	line "real quick!"
	done
	
StarglowHouse1RocketText4:
	text "Hehe…"
	
	para "You're tougher than"
	line "you look."
	
	para "Well, whatever."
	
	para "This #MON"
	line "doesn't seem too"
	cont "special anyway."
	done
	
StarglowHouse1RocketText5:
	text "PUNK: Today's your"
	line "lucky day, kid."
	done
	
StarglowHouse1RocketWinText:
	text "WHAT!?"
	
	para "You're just a kid!"
	done
	
StarglowHouse1LittleGirlText1:
	text "Don't hurt my"
	line "MOMMY!"
	done
	
StarglowHouse1LittleGirlText2:
	text "Please TRAINER."
	
	para "Help my #MON!"
	done
	
StarglowHouse1LittleGirlText3:
	text "Thank you for"
	line "helping EGGY!"
	done
	
StarglowHouse1LittleGirlText4:
	text "What's the matter,"
	line "EGGY?"
	done

StarglowHouse1LittleGirlText5:
	text "TRAINER!"
	
	para "EGGY wants to go"
	line "along with you and"
	cont "get stronger!"
	
	para "Will you take"
	line "EGGY?"
	done
	
StarglowHouse1LittleGirlText6:
	text "Please, make sure"
	line "you take good care"
	cont "of EGGY!"
	done
	
StarglowHouse1LittleGirlText7:
	text "Will you take"
	line "EGGY?"
	done
	
StarglowHouse1LittleGirlText8:
	text "How has EGGY"
	line "been doing?"
	
	para "Has it gotten a"
	line "lot stronger?"
	done
	
StarglowHouse1LittleGirlText9:
	text "Oh…"
	
	para "Next time, then!"
	done
	
StarglowHouse1LittleGirlText10:
	text "Oh!"
	
	para "You already have"
	line "6 #MON on"
	cont "you…"
	
	para "You need to make"
	line "some room!"
	done