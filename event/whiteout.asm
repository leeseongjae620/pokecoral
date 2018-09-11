Script_BattleWhiteout:: ; 0x124c1
	callasm BattleBGMap
	jump Script_Whiteout
; 0x124c8

Script_OverworldWhiteout:: ; 0x124c8
	refreshscreen $0
	callasm OverworldBGMap

Script_Whiteout: ; 0x124ce
	writetext .WhitedOutText
	waitbutton
	special FadeOutPalettes
	pause 40
	special HealParty
	checkflag ENGINE_BUG_CONTEST_TIMER
	iftrue .bug_contest
;	callasm HalveMoney
	callasm LoseMoney
	callasm GetWhiteoutSpawn
	farscall Script_AbortBugContest
	special WarpToSpawnPoint
	newloadmap MAPSETUP_WARP
	end_all

.bug_contest
	jumpstd bugcontestresultswarp
; 0x124f5

.WhitedOutText: ; 0x124f5
	; is out of useable #MON!  whited out!
	text_jump UnknownText_0x1c0a4e
	db "@"
; 0x124fa

OverworldBGMap: ; 124fa
	call ClearPalettes
	call ClearScreen
	call WaitBGMap2
	call HideSprites
	call RotateThreePalettesLeft
	ret
; 1250a

BattleBGMap: ; 1250a
	ld b, SCGB_BATTLE_GRAYSCALE
	call GetSGBLayout
	call SetPalettes
	ret
; 12513

HalveMoney: ; 12513
	callba TrainerRankings_WhiteOuts

; Halve the player's money.
	ld hl, Money
	ld a, [hl]
	srl a
	ld [hli], a
	ld a, [hl]
	rra
	ld [hli], a
	ld a, [hl]
	rra
	ld [hl], a
	ret
; 12527

LoseMoney: ; 12513
    ld hl, Money
    ld a, [hli]
    or [hl]
    inc hl
    or [hl]
    ld a, 0 ; not xor a; preserve carry flag
    jr z, .load
    ; 806e1
    ld hl, Badges
    ld b, 2
    call CountSetBits
    cp 9
    jr c, .okay
    ld c, 8
.okay
    ld b, 0
    ld hl, .BasePayouts
    add hl, bc
    ld a, [hl]
    ld [hMultiplier], a
    ld a, [PartyCount]
    ld c, a
    ld b, 0
    ld hl, PartyMon1Level
    ld de, PARTYMON_STRUCT_LENGTH
.loop
    ld a, [hl]
    cp b
    jr c, .next
    ld b, a
.next
    add hl, de
    dec c
    jr nz, .loop
    xor a
    ld [hMultiplicand], a
    ld [hMultiplicand + 1], a
    ld a, b
    ld [hMultiplicand + 2], a
    call Multiply
    ld de, hMoneyTemp
    ld hl, hProduct + 1
    call .copy
    ld de, Money
    ld bc, hMoneyTemp
    push bc
    push de
    farcall CompareMoney
    jr nc, .nonzero
    ld hl, Money
    ld de, hMoneyTemp
    call .copy
.nonzero
    pop de
    pop bc
    farcall TakeMoney
    ld a, 1
.load
    ld [ScriptVar], a
    ret

.copy
    ld a, [hli]
    ld [de], a
    inc de
    ld a, [hli]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret

.BasePayouts
    db 8
    db 16
    db 24
    db 36
    db 48
    db 64
    db 80
    db 100
    db 120

GetWhiteoutSpawn: ; 12527
	ld a, [wLastSpawnMapGroup]
	ld d, a
	ld a, [wLastSpawnMapNumber]
	ld e, a
	callba IsSpawnPoint
	ld a, c
	jr c, .yes
	xor a ; SPAWN_HOME

.yes
	ld [wd001], a
	ret
; 1253d
