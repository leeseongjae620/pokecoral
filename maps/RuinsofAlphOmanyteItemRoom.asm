const_value set 2
	const RUINSOFALPHOMANYTEITEMROOM_POKE_BALL1

RuinsofAlphOmanyteItemRoom_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

RuinsofAlphOmanyteItemRoom_MapEventHeader:: db 0, 0

.Warps: db 3
	warp_def 7, 4, 5, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 7, 5, 6, RUINS_OF_ALPH_OMANYTE_WORD_ROOM
	warp_def 3, 4, 5, RUINS_OF_ALPH_OMANYTE_CHAMBER

.CoordEvents: db 0

.BGEvents: db 6
	signpost 2, 11, SIGNPOST_READ, SpookHouseBookshelf
	signpost 2, 10, SIGNPOST_READ, SpookHouseBookshelf
	signpost 3, 2, SIGNPOST_READ, SpookHouseBed
	signpost 3, 1, SIGNPOST_READ, SpookHouseBed
	signpost 2, 0, SIGNPOST_READ, SpookHouseTrashcan
	signpost 3, 7, SIGNPOST_READ, SpookHouseJournal

.ObjectEvents: db 0

SpookHouseBookshelf:
	jumptext SpookHouseBookshelfText
	
SpookHouseBed:
	jumptext SpookHouseBedText
	
SpookHouseTrashcan:
	jumptext SpookHouseTrashcanText
	
SpookHouseJournal:
	opentext
	writetext SpookHouseJournalText1
	yesorno
	iffalse SpookHouseJournalNo
	writetext SpookHouseJournalText3
	yesorno
	iffalse SpookHouseJournalNo
	writetext SpookHouseJournalText4
	yesorno
	iffalse SpookHouseJournalNo
	writetext SpookHouseJournalText5
	yesorno
	iffalse SpookHouseJournalNo
	writetext SpookHouseJournalText6
	yesorno
	iffalse SpookHouseJournalNo
	writetext SpookHouseJournalText7
	waitbutton
	closetext
	end
	
SpookHouseJournalNo:
	writetext SpookHouseJournalText2
	waitbutton
	closetext
	end
	
SpookHouseBookshelfText:
	text "Its full of old"
	line "dusty books and"
	cont "journals."
	done
	
SpookHouseBedText:
	text "A big fluffy bed."
	
	para "Its neatly made,"
	line "but seems like it"
	
	para "hasn't been used in"
	line "years."
	done
	
SpookHouseTrashcanText:
	text "Its full of dust."
	done
	
SpookHouseJournalText1:
	text "A dusty old"
	line "journal."
	
	para "Its open to a page"
	line "in the middle."
	
	para "Read it?"
	done
	
SpookHouseJournalText2:
	text "Better not…"
	done
	
SpookHouseJournalText3:
	text "Who wouldn't?"
	
	para "DAY:O/O    MONTH:X"
	
	para "It's our first day"
	line "in the new house!"
	
	para "This place is so"
	line "nice compared to"
	cont "our old place."
	
	para "I'm so glad to"
	line "leave it behind."
	
	para "Perhaps the mem-"
	line "ories of her will"
	
	para "stay behind as"
	line "well…"
	
	para "I try not to dwell"
	line "on what happened,"
	
	para "but I do miss her"
	line "so."
	
	para "Even now I can see"
	line "her smiling face…"
	
	para "…"
	
	para "The rest of the"
	line "page is empty."
	
	para "Read the next"
	line "page?"
	done
	
SpookHouseJournalText4:
	text "DAY:O/X    MONTH:X"
	
	para "I can't stop think-"
	line "ing about what"
	cont "happened."
	
	para "I thought moving"
	line "to a new house"
	
	para "would help, but it"
	line "only seems to have"
	cont "gotten worse…"
	
	para "My husband tells"
	line "me I just need to"
	cont "relax."
	
	para "He's right, but for"
	line "some reason I just"
	cont "can't."
	
	para "It's almost like I"
	line "can feel her"
	cont "staring at me…"
	
	para "I need to rest…"
	
	para "Read the next"
	line "page?"
	done
	
SpookHouseJournalText5:
	text "DAY:X/0    MONTH:X"
	
	para "I saw her…"
	
	para "My husband doesn't"
	line "believe me."
	
	para "He says I'm going"
	line "mad."
	
	para "He's wrong."
	
	para "I saw her…"
	
	para "My dear sweet"
	line "REBECCA…"
	
	para "She just stood"
	line "there staring at"
	cont "me."
	
	para "…"
	
	para "Perhaps I AM"
	line "going mad…"
	
	para "She's gone."
	
	para "There's nothing I"
	line "can do to bring"
	cont "her back."
	
	para "Read the next"
	line "page?"
	done
	
SpookHouseJournalText6:
	text "DAY:X/X    MONTH:X"
	
	para "I wasn't mad."
	
	para "I knew I wasn't."
	
	para "The incidents have"
	line "gotten worse."
	
	para "I've seen her many"
	line "times these past"
	cont "few days."
	
	para "My husband has"
	line "started seeing her"
	cont "too."
	
	para "We have decided it"
	line "best that we move"
	cont "far away."
	
	para "Maybe then we will"
	line "be able to escape-"
	
	para "The entry ends"
	line "there."
	
	para "Read the last"
	line "page?"
	done
	
SpookHouseJournalText7:
	text "WE CHANGED OUR"
	line "MINDS."
	
	para "WE DECIDED TO STAY"
	line "AND PLAY WITH"
	
	para "REBECCA FOREVER"
	line "AND EVER."
	
	para "WE'LL NEVER LEAVE"
	line "HER AGAIN."
	
	para "SHE WILL NEVER"
	line "BE ALONE AGAIN."
	
	para "…"
	
	para "…"
	
	para "NEVERALONENEVER"
	line "ALONENEVERALONE"
	
	para "NEVERALONENEVER"
	line "ALONENEVERALONE"
	
	para "The journal ends."
	done