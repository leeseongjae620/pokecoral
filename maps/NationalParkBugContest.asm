const_value set 2
	const SUNBEAMCONTESTBIKINIY
	const SUNBEAMCONTESTBIKINIR
	const SUNBEAMCONTESTBIKINIP
	const SUNBEAMCONTESTCROWD1
	const SUNBEAMCONTESTCROWD2
	const SUNBEAMCONTESTCROWD3
	const SUNBEAMCONTESTCROWD4
	const SUNBEAMCONTESTCROWD5

NationalParkBugContest_MapScriptHeader:
.MapTriggers:
	db 1
	
	maptrigger .Trigger0

.MapCallbacks:
	db 0

.Trigger0:
	setflag ENGINE_BIKINI_CONTEST
	pause 7
	opentext
	writetext SunbeamContestText1
	waitbutton
	closetext
;	pause 7
	spriteface PLAYER, DOWN
	pause 5
	spriteface SUNBEAMCONTESTCROWD1, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, RIGHT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD1, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, UP
	pause 10
	spriteface PLAYER, UP
	opentext
	writetext SunbeamContestText12
	waitbutton
	closetext
	pause 7
	appear SUNBEAMCONTESTBIKINIP
	playsound SFX_EXIT_BUILDING
	applymovement SUNBEAMCONTESTBIKINIP, Movement_SunbeamContestBikini1
	opentext
	writetext SunBeamContestBikiniPText1
	waitbutton
	closetext
	winlosstext SunBeamContestBikiniPWinText, SunBeamContestBikiniPWinText
	setlasttalked SUNBEAMCONTESTBIKINIP
	loadtrainer BIKINIY, 1
	startbattle
	reloadmapafterbattle
	opentext
	writetext SunbeamContestText2
	waitbutton
	closetext
	spriteface SUNBEAMCONTESTCROWD1, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, RIGHT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD1, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, UP
	pause 10
	applymovement SUNBEAMCONTESTBIKINIP, Movement_SunbeamContestBikini2
	disappear SUNBEAMCONTESTBIKINIP
	playsound SFX_ENTER_DOOR
	
	
	pause 7
	opentext
	writetext SunbeamContestText3
	waitbutton
	closetext
	pause 7
	appear SUNBEAMCONTESTBIKINIR
	playsound SFX_EXIT_BUILDING
	applymovement SUNBEAMCONTESTBIKINIR, Movement_SunbeamContestBikini1
	opentext
	writetext SunBeamContestBikiniRText1
	waitbutton
	closetext
	winlosstext SunBeamContestBikiniRWinText, SunBeamContestBikiniRWinText
	setlasttalked SUNBEAMCONTESTBIKINIR
	loadtrainer BIKINIR, 1
	startbattle
	reloadmapafterbattle
	opentext
	writetext SunbeamContestText4
	waitbutton
	closetext
	spriteface SUNBEAMCONTESTCROWD1, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, RIGHT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD1, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, UP
	pause 10
	applymovement SUNBEAMCONTESTBIKINIR, Movement_SunbeamContestBikini2
	disappear SUNBEAMCONTESTBIKINIR
	playsound SFX_ENTER_DOOR
	
	pause 7
	opentext
	writetext SunbeamContestText5
	waitbutton
	closetext
	pause 7
	appear SUNBEAMCONTESTBIKINIY
	playsound SFX_EXIT_BUILDING
	applymovement SUNBEAMCONTESTBIKINIY, Movement_SunbeamContestBikini1
	opentext
	writetext SunBeamContestBikiniYText1
	waitbutton
	closetext
	winlosstext SunBeamContestBikiniYWinText, SunBeamContestBikiniYWinText
	setlasttalked SUNBEAMCONTESTBIKINIY
	loadtrainer BIKINIP, 1
	startbattle
	reloadmapafterbattle
	opentext
	writetext SunbeamContestText6
	waitbutton
	closetext
	spriteface SUNBEAMCONTESTCROWD1, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, RIGHT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD1, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, UP
	pause 10
	applymovement SUNBEAMCONTESTBIKINIY, Movement_SunbeamContestBikini2
	disappear SUNBEAMCONTESTBIKINIY
	playsound SFX_ENTER_DOOR
	
	pause 7
	opentext
	writetext SunbeamContestText7
	waitbutton
	closetext
	pause 7
	appear SUNBEAMCONTESTBIKINIP
	playsound SFX_EXIT_BUILDING
	applymovement SUNBEAMCONTESTBIKINIP, Movement_SunbeamContestBikini3
	spriteface SUNBEAMCONTESTBIKINIP, DOWN
	pause 14
	appear SUNBEAMCONTESTBIKINIR
	playsound SFX_EXIT_BUILDING
	applymovement SUNBEAMCONTESTBIKINIR, Movement_SunbeamContestBikini4
	spriteface SUNBEAMCONTESTBIKINIR, DOWN
	pause 14
	appear SUNBEAMCONTESTBIKINIY
	playsound SFX_EXIT_BUILDING
	spriteface SUNBEAMCONTESTBIKINIY, LEFT
	pause 7
	spriteface SUNBEAMCONTESTBIKINIY, DOWN
	opentext
	writetext SunbeamContestText8
	waitbutton
	closetext
	pause 7
	applymovement SUNBEAMCONTESTBIKINIP, Movement_SunbeamContestBikini6
	opentext
	writetext SunbeamContestText9
	waitbutton
	closetext
	pause 7
	applymovement SUNBEAMCONTESTBIKINIR, Movement_SunbeamContestBikini6
	opentext
	writetext SunbeamContestText10
	waitbutton
	closetext
	pause 7
	applymovement SUNBEAMCONTESTBIKINIY, Movement_SunbeamContestBikini6
	opentext
	writetext SunbeamContestText11
	waitbutton
	closetext
	pause 7
	spriteface SUNBEAMCONTESTBIKINIY, RIGHT
	pause 7
	disappear SUNBEAMCONTESTBIKINIY
	playsound SFX_ENTER_DOOR
	pause 14
	applymovement SUNBEAMCONTESTBIKINIR, Movement_SunbeamContestBikini5
	disappear SUNBEAMCONTESTBIKINIR
	playsound SFX_ENTER_DOOR
	pause 14
	applymovement SUNBEAMCONTESTBIKINIP, Movement_SunbeamContestBikini2
	disappear SUNBEAMCONTESTBIKINIP
	playsound SFX_ENTER_DOOR
	
	pause 7
	opentext
	writetext SunbeamContestText13
	waitbutton
	playmusic MUSIC_NONE
	writetext SunbeamContestText17
;	waitbutton
	loadmenudata .BikiniMenuData
	verticalmenu
	closewindow
	if_equal $1, .Lilac
	if_equal $2, .Rose
	if_equal $3, .Hazel
	
.Lilac
	setevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIP
	clearevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIR
	clearevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIY
	domaptrigger MR_POKEMONS_HOUSE, $1
	writetext SunbeamContestText14
	playmusic MUSIC_GAME_CORNER
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	playmusic MUSIC_GAME_CORNER
	waitbutton
	closetext
	pause 7
	appear SUNBEAMCONTESTBIKINIP
	playsound SFX_EXIT_BUILDING
	applymovement SUNBEAMCONTESTBIKINIP, Movement_SunbeamContestBikini4
	spriteface SUNBEAMCONTESTBIKINIP, DOWN
	opentext
	writetext SunBeamContestBikiniPText2
	waitbutton
	closetext
	applymovement SUNBEAMCONTESTBIKINIP, Movement_SunbeamContestBikini6
	spriteface SUNBEAMCONTESTCROWD1, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, RIGHT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD1, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, UP
	pause 10
	applymovement SUNBEAMCONTESTBIKINIP, Movement_SunbeamContestBikini5
	disappear SUNBEAMCONTESTBIKINIP
	playsound SFX_ENTER_DOOR
	pause 14
	opentext
	writetext SunbeamContestText18
	waitbutton
	closetext
	pause 7
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	warpfacing RIGHT, MR_POKEMONS_HOUSE, $5, $5
	end
.Rose
	clearevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIP
	setevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIR
	clearevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIY
	domaptrigger MR_POKEMONS_HOUSE, $1
	writetext SunbeamContestText15
	playmusic MUSIC_GAME_CORNER
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	playmusic MUSIC_GAME_CORNER
	waitbutton
	closetext
	pause 7
	appear SUNBEAMCONTESTBIKINIR
	playsound SFX_EXIT_BUILDING
	applymovement SUNBEAMCONTESTBIKINIR, Movement_SunbeamContestBikini4
	spriteface SUNBEAMCONTESTBIKINIR, DOWN
	opentext
	writetext SunBeamContestBikiniRText2
	waitbutton
	closetext
	applymovement SUNBEAMCONTESTBIKINIR, Movement_SunbeamContestBikini6
	spriteface SUNBEAMCONTESTCROWD1, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, RIGHT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD1, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, UP
	pause 10
	applymovement SUNBEAMCONTESTBIKINIR, Movement_SunbeamContestBikini5
	disappear SUNBEAMCONTESTBIKINIR
	playsound SFX_ENTER_DOOR
	pause 14
	opentext
	writetext SunbeamContestText18
	waitbutton
	closetext
	pause 7
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	warpfacing RIGHT, MR_POKEMONS_HOUSE, $5, $5
	end
.Hazel
	clearevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIP
	clearevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIR
	setevent EVENT_BEAT_SUNBEAM_CONTEST_BIKINIY
	domaptrigger MR_POKEMONS_HOUSE, $1
	writetext SunbeamContestText16
	playmusic MUSIC_GAME_CORNER
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	playmusic MUSIC_GAME_CORNER
	waitbutton
	closetext
	pause 7
	appear SUNBEAMCONTESTBIKINIY
	playsound SFX_EXIT_BUILDING
	applymovement SUNBEAMCONTESTBIKINIY, Movement_SunbeamContestBikini4
	spriteface SUNBEAMCONTESTBIKINIY, DOWN
	opentext
	writetext SunBeamContestBikiniYText2
	waitbutton
	closetext
	applymovement SUNBEAMCONTESTBIKINIY, Movement_SunbeamContestBikini6
	spriteface SUNBEAMCONTESTCROWD1, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, LEFT
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, RIGHT
	pause 10
	spriteface SUNBEAMCONTESTCROWD3, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD1, UP
	pause 10
	spriteface SUNBEAMCONTESTCROWD5, UP
	pause 10
	applymovement SUNBEAMCONTESTBIKINIY, Movement_SunbeamContestBikini5
	disappear SUNBEAMCONTESTBIKINIY
	playsound SFX_ENTER_DOOR
	pause 14
	opentext
	writetext SunbeamContestText18
	waitbutton
	closetext
	pause 7
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	warpfacing RIGHT, MR_POKEMONS_HOUSE, $5, $5
	end
	
.BikiniMenuData:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 7 ; end coords
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $81 ; flags
	db 3 ; items
	db "HAZEL@"
	db "ASTER@"
	db "LILAC@"
	end
	
NationalParkBugContest_MapEventHeader:: db 0, 0

.Warps: db 0

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 8
	person_event SPRITE_LASS, 3, 7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunBeamContestBikiniP, EVENT_INITIALIZED_EVENTS
	person_event SPRITE_COOLTRAINER_F, 3, 7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunBeamContestBikiniR, EVENT_INITIALIZED_EVENTS
	person_event SPRITE_COOLTRAINER_F, 3, 7, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, SunBeamContestBikiniY, EVENT_INITIALIZED_EVENTS
	person_event SPRITE_YOUNGSTER, 5, 7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, -1
	person_event SPRITE_FISHER, 5, 6, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_PURPLE, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, -1
	person_event SPRITE_LASS, 5, 9, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, -1
	person_event SPRITE_YOUNGSTER, 6, 7, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, -1
	person_event SPRITE_LASS, 6, 5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_YELLOW, PERSONTYPE_SCRIPT, 0, SunbeamIslandDonphan, -1

SunBeamContestBikiniP:
	end
	
SunBeamContestBikiniR:
	end

SunBeamContestBikiniY:
	end

SunbeamContestText1:
	text "Welcome ladies and"
	line "gentleman to the"
	
	para "SUNBEAM ISLAND"
	line "BEACH BATTLE"
	cont "BEAUTY CONTEST!"
	
	para "Each of our three"
	line "competitors will"
	
	para "come out one by"
	line "one to strut their"
	
	para "stuff on the run-"
	line "way and in battle!"
	
	para "But first, give it"
	line "up for our judge"
	
	para "for today,"
	line "<PLAYER>!"
	done
	
SunbeamContestText2:
	text "PA: Wonderful!"
	
	para "What a battle!"
	
	para "Give it up for"
	line "HAZEL!"
	done
	
SunbeamContestText3:
	text "Next up is our"
	line "second contestant,"
	cont "the astonishing"
	cont "ASTER!"
	done
	
SunbeamContestText4:
	text "PA: Excellent!"
	
	para "A great battle by"
	line "both sides!"
	
	para "Make some noise"
	line "for ASTER!"
	done
	
SunbeamContestText5:
	text "And last, but not"
	line "least, our third"
	
	para "contestant, the"
	line "lovely LILAC!"
	done
	
SunbeamContestText6:
	text "Superb!"
	
	para "Expertly fought!"
	
	para "Show some love for"
	line "LILAC, everybody!"	
	done
	
SunbeamContestText7:
	text "PA: Before we get"
	line "to the results,"
	
	para "let's get all of"
	line "our contestants"
	cont "out here again!"
	done
	
SunbeamContestText8:
	text "Give it up for"
	line "HAZEL!"
	done
	
SunbeamContestText9:
	text "ASTER!"
	done
	
SunbeamContestText10:
	text "and LILAC!"
	done
	
SunbeamContestText11:
	text "Thank you, ladies."
	
	para "We'll announce the"
	line "winners as soon as"
	
	para "the results are"
	line "in."
	done
	
SunbeamContestText12:
	text "PA: Alright!"
	
	para "Without further"
	line "ado, let's get"
	
	para "this started with"
	line "contestant 1, the"
	cont "heavenly HAZEL!"
	done
	
SunbeamContestText13:
	text "Alright, <PLAYER>."
	
	para "It's time to make"
	line "your decision!"
	
	para "It's all up to you."
	
	para "Are you ready?"
	done
	
SunbeamContestText14:
	text "HAZEL!"
	done
	
SunbeamContestText15:
	text "ASTER!"
	done
	
SunbeamContestText16:
	text "LILAC!"
	done
	
SunbeamContestText17:
	text "And the winner of"
	line "the BEACH BATTLE"
	cont "BEAUTY CONTEST is…"	
	done
	
SunbeamContestText18:
	text "Well folks, that's"
	line "all for today!"
	
	para "Join us next time"
	line "for another fierce"
	cont "competition!"
	done
	
SunBeamContestBikiniYText1:
	text "A battle in a"
	line "bikini?"
	
	para "How exciting!"
	done
	
SunBeamContestBikiniYText2:
	text "I can't believe I"
	line "won!"
	
	para "Thanks everyone!"
	done
	
SunBeamContestBikiniYWinText:
	text "Whew!"
	
	para "I'm so excited!"
	done
	
SunBeamContestBikiniRText1:
	text "This is a bit"
	line "embarassing, but"
	
	para "I'll still give it"
	line "my all!"
	done
	
SunBeamContestBikiniRText2:
	text "Oh my!"
	
	para "I really won?"
	done
	
SunBeamContestBikiniRWinText:
	text "Oh my!"
	done
	
SunBeamContestBikiniPText1:
	text "Haha!"
	
	para "This'll be fun!"
	done
	
SunBeamContestBikiniPText2:
	text "Nice!"
	
	para "I won!"
	done
	
SunBeamContestBikiniPWinText:
	text "Yes!"
	
	para "Great battle!"
	done
	
Movement_SunbeamContestBikini1:
	step_sleep 20
	slow_step LEFT
	step_sleep 12
	slow_step LEFT
	step_sleep 12
	turn_head DOWN
	step_sleep 12
	turn_head RIGHT
	step_sleep 12
	turn_head UP
	step_sleep 12
	turn_head LEFT
	step_sleep 12
	turn_head DOWN
	step_sleep 12
	slow_step RIGHT
	step_sleep 12
	slow_step RIGHT
	step_sleep 12
	turn_head DOWN
	step_sleep 12
	turn_head LEFT
	step_sleep 12
	turn_head UP
	step_sleep 12
	turn_head RIGHT
	step_sleep 12
	turn_head DOWN
	step_sleep 12
	slow_step LEFT
	step_sleep 12
	slow_step LEFT
	step_sleep 12
	turn_head DOWN
	step_end
	
Movement_SunbeamContestBikini2:
	step RIGHT
	step RIGHT
	step_end
	
Movement_SunbeamContestBikini3:
	step LEFT
	step LEFT
	step_end
	
Movement_SunbeamContestBikini4:
	step LEFT
	step_end
	
Movement_SunbeamContestBikini5:
	step RIGHT
	step_end
	
Movement_SunbeamContestBikini6:
	turn_head LEFT
	step_sleep 12
	turn_head UP
	step_sleep 12
	turn_head RIGHT
	step_sleep 12
	turn_head DOWN
	step_sleep 12
	step_end