const_value set 2

GoldenrodGym_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0


GoldenrodGym_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $11, $2, 1, GOLDENROD_CITY
	warp_def $11, $3, 1, GOLDENROD_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
