BattleCommand_FakeOut: ; 37683
; spikes

;	ld hl, EnemyScreens
;	ld a, [hBattleTurn]
;	and a
;	jr z, .asm_3768e
;	ld hl, PlayerScreens
;.asm_3768e

; Fails if spikes are already down!

	ld a, BATTLE_VARS_SUBSTATUS5
	call GetBattleVarAddr
	bit SUBSTATUS_USED_FAKEOUT, [hl]
	jp nz, .failed
	
	ld de, EnemyMonType1
	ld bc, EnemyStatLevels
	ld a, [hBattleTurn]
	and a
	jr z, .go
	ld de, BattleMonType1
	ld bc, PlayerStatLevels

.go

; Curse is different for Ghost-types.

	ld a, [de]
	cp GHOST
	jr z, .failed
	inc de
	ld a, [de]
	cp GHOST
	jr z, .failed
;	ld a, [EnemyTurnsTaken]
;	and a
;	jr nz, .failed
;	ld a, [PlayerTurnsTaken]
;	and a
;	jp z, .cont

;	jp .failed

; Nothing else stops it from working.
;.cont
	set SUBSTATUS_USED_FAKEOUT, [hl]

	jp FlinchTarget
	
	call AnimateCurrentMove

;	ld hl, SpikesText
;	jp StdBattleTextBox

.failed
	ld a, 1
	ld [FailedMessage], a
	ld [AttackMissed], a
	ret
; 376a0
