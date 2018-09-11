const_value set 2
	const RANCHRACESCARECROW
	const RANCHRACENPC1
	const RANCHRACENPC2
	const RANCHRACEDODRIO
	const RANCHRACEDODUO1
	const RANCHRACEDODUO2
	const RANCHRACEDODUO3
	const RANCHRACEDODUO4
	const RANCHRACEPOKEBALL
	

RuinsofAlphHoOhItemRoom_MapScriptHeader:
.MapTriggers:
	db 4
	
	maptrigger .Trigger0
	maptrigger .Trigger1
	maptrigger .Trigger2
	maptrigger .Trigger3

.MapCallbacks:
	db 1
	
	dbw MAPCALLBACK_TILES, .MakeBrown

.Trigger0:
	end
	
.Trigger1:
	end
	
.Trigger2:
	spriteface RANCHRACENPC1, RIGHT
	spriteface PLAYER, LEFT
	opentext
	writetext RanchRideRaceText5
	waitbutton
	closetext
	dotrigger $0
	end
	
.Trigger3:
	opentext
	writetext RanchRideReturnGirlText4
	waitbutton
	closetext
	dotrigger $0
	end
	
.MakeBrown:
;	special Special_FadeInQuickly
	writebyte (1 << 7) | (PAL_OW_BROWN << 4)
	special Special_SetPlayerPalette
	return
	
RuinsofAlphHoOhItemRoom_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 19, 9, 1, POKEMON_FAN_CLUB

.CoordEvents: db 28
	xy_trigger 1, 11, 31, 0, RanchRideRaceCheckpoint1, 0, 0
	xy_trigger 1, 12, 40, 0, RanchRideRaceCheckpoint2, 0, 0
	xy_trigger 1, 13, 40, 0, RanchRideRaceCheckpoint2, 0, 0
	xy_trigger 1, 24, 31, 0, RanchRideRaceCheckpoint3, 0, 0
	xy_trigger 1, 17, 29, 0, RanchRideRaceFinishLine, 0, 0
	xy_trigger 1, 17, 28, 0, RanchRideRaceFinishLine, 0, 0
	xy_trigger 1, 18, 29, 0, RanchRideRaceBackwards, 0, 0
	xy_trigger 1, 18, 28, 0, RanchRideRaceBackwards, 0, 0
	xy_trigger 1, 12, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 13, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 14, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 15, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 16, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 18, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 19, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 20, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 21, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 23, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 24, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 11, 27, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 23, 41, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 23, 40, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 22, 41, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 24, 37, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 25, 36, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 25, 37, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 22, 40, 0, RanchRideRaceOffTrack, 0, 0
	xy_trigger 1, 24, 36, 0, RanchRideRaceOffTrack, 0, 0

.BGEvents: db 12
	signpost 18, 16, SIGNPOST_READ, RanchRideRaceLogs
	signpost 18, 13, SIGNPOST_READ, RanchRideRaceLogs
	signpost 17, 12, SIGNPOST_READ, RanchRideRaceLogs
	signpost 12, 17, SIGNPOST_READ, RanchRideRaceLogs
	signpost 11, 18, SIGNPOST_READ, RanchRideRaceLogs
	signpost 11, 19, SIGNPOST_READ, RanchRideRaceLogs
	signpost 10, 18, SIGNPOST_READ, RanchRideRaceLogs
	signpost 6, 17, SIGNPOST_READ, RanchRideRaceLogs
	signpost 27, 30, SIGNPOST_READ, FruitTreeScript_RanchRide1
	signpost 27, 32, SIGNPOST_READ, FruitTreeScript_RanchRide2
	signpost 27, 34, SIGNPOST_READ, FruitTreeScript_RanchRide3
	signpost 24, 26, SIGNPOST_READ, RanchRideClue

.ObjectEvents: db 13
	person_event SPRITE_SCARECROW, 9, 9, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchRideScarecrow, -1
	person_event SPRITE_YOUNGSTER, 17, 27, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, RanchRideRaceGuy, -1
	person_event SPRITE_COOLTRAINER_F, 14, 7, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, RanchRideReturnGirl, -1
	person_event SPRITE_DODRIO, 6, 14, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchRideDodrio, -1
	person_event SPRITE_DODUO, 16, 15, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchRideDoduo, -1
	person_event SPRITE_DODUO, 12, 15, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchRideDoduo, -1
	person_event SPRITE_DODUO, 11, 8, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchRideDoduo, -1
	person_event SPRITE_DODUO, 8, 11, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, RanchRideDoduo, -1
	person_event SPRITE_POKE_BALL, 30, 27, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RanchRacePokeBall1, EVENT_RANCH_RACE_POKE_BALL
	person_event SPRITE_POKE_BALL, 12, 18, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, RanchRacePokeBall2, EVENT_RANCH_POKE_BALL_2
	person_event SPRITE_YOUNGSTER, 12, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, RanchRideDoduo, -1
	person_event SPRITE_YOUNGSTER, 6, 1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, RanchRideDoduo, -1
	person_event SPRITE_YOUNGSTER, 3, 9, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, RanchRideDoduo, -1

RanchRideClue:
	checkitem CLUE_5
	iffalse .end
	checkevent EVENT_GOT_RANCH_MASTERBALL
	iftrue .end
	opentext
	writetext RanchRideClueText
	waitbutton
	verbosegiveitem MASTER_BALL
	writetext RanchRideClueText2
	waitbutton
	closetext
	end
.end
	killsfx
	end
	
RanchRideClueText:
	text "You find something"
	line "in the flowers…"
	
	para "It's a MASTER BALL!"
	done
	
RanchRideClueText2:
	text "Sayonara for now!"
	
	para "Thanks for your"
	line "time."
	
	para "I had a real blast"
	line "writing this"
	cont "rhyme."
	
	para "On this game's"
	line "completion there'll"
	
	para "be more for the"
	line "taking."
	
	para "Now keep up the"
	line "good work, genius"
	cont "in making!"
	done
	
RanchRideScarecrow:
	jumptext RanchRideScarecrowText
	
RanchRacePokeBall1:
	itemball LUCKY_EGG
	
RanchRacePokeBall2:
	itemball FULL_RESTORE
	
RanchRideDodrio:
	opentext
	writetext RanchRideDodrioText
	cry DODRIO
	waitbutton
	closetext
	end
	
RanchRideDoduo:
	opentext
	writetext RanchRideDoduoText
	cry DODUO
	waitbutton
	closetext
	end
	
RanchRideRaceLogs:
	jumptext RanchRideRaceLogsText
	
FruitTreeScript_RanchRide1:
	fruittree FRUITTREE_RANCHRIDE1
	
FruitTreeScript_RanchRide2:
	fruittree FRUITTREE_RANCHRIDE2
	
FruitTreeScript_RanchRide3:
	fruittree FRUITTREE_RANCHRIDE3
	
RanchRideRaceCheckpoint1:
	setevent EVENT_RANCH_RACE_CHECKPOINT1
	end
	
RanchRideRaceCheckpoint2:
	setevent EVENT_RANCH_RACE_CHECKPOINT2
	end
	
RanchRideRaceCheckpoint3:
	setevent EVENT_RANCH_RACE_CHECKPOINT3
	end
	
RanchRideRaceFinishLine:
	checkevent EVENT_RANCH_RACE_CHECKPOINT1
	iffalse .nocheckpoints
	checkevent EVENT_RANCH_RACE_CHECKPOINT2
	iffalse .skippedcheckpoint
	checkevent EVENT_RANCH_RACE_CHECKPOINT3
	iffalse .skippedcheckpoint
	checkevent EVENT_RANCH_RACE_FINISHED_LAP_1
	iftrue .lap2
	setevent EVENT_RANCH_RACE_FINISHED_LAP_1
	clearevent EVENT_RANCH_RACE_CHECKPOINT1
	clearevent EVENT_RANCH_RACE_CHECKPOINT2
	clearevent EVENT_RANCH_RACE_CHECKPOINT3
	playsound SFX_TALLY
	end
.lap2
	checkevent EVENT_RANCH_RACE_FINISHED_LAP_2
	iftrue .lap3
	setevent EVENT_RANCH_RACE_FINISHED_LAP_2
	clearevent EVENT_RANCH_RACE_CHECKPOINT1
	clearevent EVENT_RANCH_RACE_CHECKPOINT2
	clearevent EVENT_RANCH_RACE_CHECKPOINT3
	playsound SFX_TALLY
	end
.lap3
	setflag ENGINE_DONE_RANCH_RACE_TODAY
	clearevent EVENT_RANCH_RACE_CHECKPOINT1
	clearevent EVENT_RANCH_RACE_CHECKPOINT2
	clearevent EVENT_RANCH_RACE_CHECKPOINT3
	clearevent EVENT_RANCH_RACE_FINISHED_LAP_1
	clearevent EVENT_RANCH_RACE_FINISHED_LAP_2
	dotrigger $0
	playmusic MUSIC_NONE
	playsound SFX_RAZOR_WIND
	waitsfx
	playsound SFX_CHOOSE_A_CARD
	waitsfx
	pause 10
	spriteface RANCHRACENPC1, RIGHT
	spriteface PLAYER, LEFT
	playmusic MUSIC_ROUTE_4_NEW
	opentext
	checkcode VAR_CONTESTMINUTES
	RAM2MEM $0
	writetext RanchRideRaceText4
	pause 20
	checkevent EVENT_FINISHED_RANCH_RACE_ONCE
	iffalse .firsttime
	writetext RanchRideRaceTimeText
	waitbutton
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, .ranchsunday
	if_equal MONDAY, .ranchmonday
	if_equal TUESDAY, .ranchtuesday
	if_equal WEDNESDAY, .ranchwednesday
	if_equal THURSDAY, .ranchthursday
	if_equal FRIDAY, .ranchfriday
	if_equal SATURDAY, .ranchsaturday
.ranchsunday
	verbosegiveitem RARE_CANDY
	jump .gaveoutdayitem
.ranchmonday
	verbosegiveitem HP_UP
	jump .gaveoutdayitem
.ranchtuesday
	verbosegiveitem PROTEIN
	jump .gaveoutdayitem
.ranchwednesday
	verbosegiveitem IRON
	jump .gaveoutdayitem
.ranchthursday
	verbosegiveitem CALCIUM
	jump .gaveoutdayitem
.ranchfriday
	verbosegiveitem CARBOS
	jump .gaveoutdayitem
.ranchsaturday
	verbosegiveitem PP_UP
.gaveoutdayitem
	writetext RanchRideRaceText8
	waitbutton
	closetext
	clearflag ENGINE_BUG_CONTEST_TIMER
	end
.firsttime
	writetext RanchRideRaceTimeTextFirstTime
	waitbutton
	checkcode VAR_PARTYCOUNT
	if_equal 6, .PartyFull
	writetext RanchRideGotDoduoText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke DODUO, 10
	special SpecialDoduo
	writetext RanchRideRaceText7
	waitbutton
	closetext
	clearflag ENGINE_BUG_CONTEST_TIMER
	setevent EVENT_FINISHED_RANCH_RACE_ONCE
	setevent EVENT_RANCH_GOT_DODUO
	end
	
.PartyFull:
	writetext RanchRidePartyFullText
	waitbutton
	closetext
	clearflag ENGINE_BUG_CONTEST_TIMER
	setevent EVENT_FINISHED_RANCH_RACE_ONCE
	end
	
.skippedcheckpoint
	clearevent EVENT_RANCH_RACE_CHECKPOINT1
	clearevent EVENT_RANCH_RACE_CHECKPOINT2
	clearevent EVENT_RANCH_RACE_CHECKPOINT3
	clearevent EVENT_RANCH_RACE_FINISHED_LAP_1
	clearevent EVENT_RANCH_RACE_FINISHED_LAP_2
	clearflag ENGINE_BUG_CONTEST_TIMER
	dotrigger $2
	playmusic MUSIC_NONE
	playsound SFX_WRONG
	waitsfx
	pause 10
	opentext
	writetext RanchRideRaceWhatAreYouDoingText
	waitbutton
	warp RUINS_OF_ALPH_HO_OH_ITEM_ROOM, $1d, $11
	end
	
.nocheckpoints
	end
	
RanchRideRaceBackwards:
	checkevent EVENT_RANCH_RACE_CHECKPOINT3
	iftrue .end
	clearevent EVENT_RANCH_RACE_CHECKPOINT1
	clearevent EVENT_RANCH_RACE_CHECKPOINT2
	clearevent EVENT_RANCH_RACE_CHECKPOINT3
	clearevent EVENT_RANCH_RACE_FINISHED_LAP_1
	clearevent EVENT_RANCH_RACE_FINISHED_LAP_2
	clearflag ENGINE_BUG_CONTEST_TIMER
	dotrigger $2
	playmusic MUSIC_NONE
	playsound SFX_WRONG
	waitsfx
	pause 10
	opentext
	writetext RanchRideRaceBackwardsText
	waitbutton
	warp RUINS_OF_ALPH_HO_OH_ITEM_ROOM, $1d, $11
	end
.end
	end
RanchRideRaceOffTrack:
	clearevent EVENT_RANCH_RACE_CHECKPOINT1
	clearevent EVENT_RANCH_RACE_CHECKPOINT2
	clearevent EVENT_RANCH_RACE_CHECKPOINT3
	clearevent EVENT_RANCH_RACE_FINISHED_LAP_1
	clearevent EVENT_RANCH_RACE_FINISHED_LAP_2
	clearflag ENGINE_BUG_CONTEST_TIMER
	dotrigger $2
	playmusic MUSIC_NONE
	playsound SFX_WRONG
	waitsfx
	pause 10
	opentext
	writetext RanchRideRaceOffTrackText
	waitbutton
	warp RUINS_OF_ALPH_HO_OH_ITEM_ROOM, $1d, $11
	end
	
RanchRideRaceGuy:
	faceplayer
	opentext
	checkflag ENGINE_BUG_CONTEST_TIMER
	iffalse .trytostartrace
	checkcode VAR_CONTESTMINUTES
	addvar $1
	RAM2MEM $0
	writetext RanchRideRaceText6
	waitbutton
	closetext
	end
.trytostartrace

	checkevent EVENT_FINISHED_RANCH_RACE_ONCE
	iffalse .trytostartracecont
	checkevent EVENT_RANCH_GOT_DODUO
	iftrue .trytostartracecont
	writetext RanchRideRaceText9
	waitbutton
	checkcode VAR_PARTYCOUNT
	if_equal 6, .PartyFull2
	writetext RanchRideGotDoduoText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke DODUO, 10
	special SpecialDoduo
	writetext RanchRideRaceText7
	waitbutton
	closetext
	setevent EVENT_RANCH_GOT_DODUO
	end
	
.PartyFull2:
	writetext RanchRidePartyFullText
	waitbutton
	closetext
	end
	
.trytostartracecont
	checkflag ENGINE_DONE_RANCH_RACE_TODAY
	iftrue .doneracetoday
	writetext RanchRideRaceText1
	yesorno
	iffalse .pickednoranchrace
	writetext RanchRideRaceText3
	waitbutton
	closetext
	checkcode VAR_FACING
	if_equal LEFT, .YouAreFacingLeft
	checkcode VAR_FACING
	if_equal RIGHT, .YouAreFacingRight
	checkcode VAR_FACING
	if_equal DOWN, .YouAreFacingDown
	applymovement PLAYER, Movement_RanchRideMovement1
	jump .startranchrace
.YouAreFacingLeft
	applymovement PLAYER, Movement_RanchRideMovement2
	jump .startranchrace
.YouAreFacingRight
	applymovement PLAYER, Movement_RanchRideMovement4
	jump .startranchrace
.YouAreFacingDown
	applymovement PLAYER, Movement_RanchRideMovement3
.startranchrace
	dotrigger $1
	spriteface PLAYER, UP
	spriteface RANCHRACENPC1, RIGHT
	playmusic MUSIC_NONE
	opentext
	writetext RanchRideRaceCountdown3
	playsound SFX_TALLY
	pause 25
	writetext RanchRideRaceCountdown2
	playsound SFX_TALLY
	pause 25
	writetext RanchRideRaceCountdown1
	playsound SFX_TALLY
	pause 25
	writetext RanchRideRaceCountdownGo
	playsound SFX_THROW_BALL
	pause 25
	closetext
	playmusic MUSIC_SS_AQUA
	setflag ENGINE_BUG_CONTEST_TIMER
	special Special_StartRanchRaceTimer
	end
.pickednoranchrace
	writetext RanchRideRaceText2
	waitbutton
	closetext
	end
.doneracetoday
	writetext RanchRideRaceText8
	waitbutton
	closetext
	end
	
RanchRideReturnGirl:
	faceplayer
	opentext
	writetext RanchRideReturnGirlText1
	yesorno
	iffalse .no
	writetext RanchRideReturnGirlText2
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	special Special_FadeBlackQuickly
	writecode VAR_MOVEMENT, PLAYER_NORMAL
	waitsfx
	warpfacing UP, POKEMON_FAN_CLUB, $2, $4
	end
.no
	writetext RanchRideReturnGirlText3
	waitbutton
	closetext
	end
	
RanchRideRaceText1:
	text "Hey hey!"
	
	para "You're a natural!"
	
	para "Want to test your"
	line "riding skills with"
	cont "with a TIME TRIAL?"
	
	para "You could even win"
	line "a prize!"
	done
	
RanchRideRaceText2:
	text "Hmm…"
	
	para "Maybe next time."
	done
	
RanchRideRaceText3:
	text "Great!"
	
	para "You have 1 minute"
	line "to complete 3 laps"
	cont "on the track."
	
	para "Remember to press"
	line "the A Button to"
	
	para "jump over the"
	line "hurdles."
	
	para "Oh, and stay on"
	line "the track."
	
	para "If you step on the"
	line "grass, you're dis-"
	cont "qualified!"
	
	para "Get to the start"
	line "line, and we'll get"
	cont "going."
	done
	
RanchRideRaceText4:
	text "Great job!"
	
	para "Your remaining"
	line "time was…"
	done
RanchRideRaceTimeText:
	text_from_ram StringBuffer3
	text " seconds!"
	done
	
RanchRideRaceTimeTextFirstTime:
	text_from_ram StringBuffer3
	text " seconds!"
	
	para "Alright!"
	
	para "Here's your prize!"
	
	para "A bonafide DODRIO"
	line "RANCH racing"
	cont "DODUO!"	
	done
	
RanchRideRaceText5:
	text "That's a shame."
	
	para "You should try"
	line "again."
	done
	
RanchRideRaceText6:
	text "What are you"
	line "doing!?"
	
	para "Get going!"
	done
	
RanchRideRaceText7:
	text "That DODUO hatched"
	line "just recently."
	
	para "It was born to"
	line "run!"
	
	para "It's a natural,"
	line "like you, kid!"
	
	para "Come back tomorrow"
	line "for a chance at"
	cont "another prize!"
	done
	
RanchRideRaceText8:
	text "Come back tomorrow"
	line "for a chance at"
	cont "another prize!"
	done
	
RanchRideRaceText9:
	text "Made some room?"
	done
	
RanchRideRaceWhatAreYouDoingText:
	text "What are you"
	line "doing!?"
	done
	
RanchRideRaceBackwardsText:
	text "Stop!"
	
	para "You're going the"
	line "wrong way!"
	done
	
RanchRideRaceOffTrackText:
	text "Stop!"
	
	para "You have to stay"
	line "on the track!"
	done
	
RanchRideRaceCountdown3:
	text "3…"
	done
	
RanchRideRaceCountdown2:
	text "2…"
	done
	
RanchRideRaceCountdown1:
	text "1…"
	done
	
RanchRideRaceCountdownGo:
	text "GO!"
	done
	
RanchRideGotDoduoText:
	text "<PLAYER> received"
	line "a special DODUO!"
	done
	
RanchRidePartyFullText:
	text "Oh!"
	
	para "You already have"
	line "6 #MON on"
	cont "you…"
	
	para "You need to make"
	line "some room!"
	done
	
RanchRideRaceLogsText:
	text "Some logs are"
	line "stacked neatly."
	done
	
RanchRideRaceBerryText:
	text "BERRY"
	done
	
RanchRideDodrioText:
	text "DODRIO: DRRREEEO!"
	done
	
RanchRideDoduoText:
	text "DODUO: DEWO! DEWO!"
	done
	
RanchRideReturnGirlText1:
	text "Done ridin'"
	line "already?"
	done
	
RanchRideReturnGirlText2:
	text "Alright!"
	
	para "Let's head back"
	line "inside, then."
	done
	
RanchRideReturnGirlText3:
	text "Ok!"
	
	para "Just let me know"
	line "when you're ready."
	done
	
RanchRideReturnGirlText4:
	text "That there DODRIO"
	line "is the finest on"
	cont "the ranch."
	
	para "And she's just a"
	line "darlin', too."
	
	para "Press the A button"
	line "to jump down"

	para "ledges or over"
	line "hurdles."
	
	para "You can also hold"
	line "the B Button to"
	cont "slow down."
	
	para "When you're done"
	line "ridin', just come"
	cont "talk to me."
	
	para "Have fun!"
	done
	
RanchRideScarecrowText:
	text "It's a SCARE-"
	line "MURKROW!"
	
	para "It's so life-like!"
	done
	
Movement_RanchRideMovement1:
	step RIGHT
	step RIGHT
	step UP
	step_end
	
Movement_RanchRideMovement2:
	step RIGHT
	step_end
	
Movement_RanchRideMovement3:
	step RIGHT
	step RIGHT
	step DOWN
	step_end
	
Movement_RanchRideMovement4:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end