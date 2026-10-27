; APEXSCII character set — 256 glyphs x 8 bytes
; load/copy to a 2K boundary, e.g. $3800 (VIC $D018 = $1E)
apexscii:
    .byte $3C,$66,$6E,$6E,$60,$62,$3C,$00  ; $00 text @
    .byte $18,$3C,$66,$7E,$66,$66,$66,$00  ; $01 text A
    .byte $7C,$66,$66,$7C,$66,$66,$7C,$00  ; $02 text B
    .byte $3C,$66,$60,$60,$60,$66,$3C,$00  ; $03 text C
    .byte $78,$6C,$66,$66,$66,$6C,$78,$00  ; $04 text D
    .byte $7E,$60,$60,$78,$60,$60,$7E,$00  ; $05 text E
    .byte $7E,$60,$60,$78,$60,$60,$60,$00  ; $06 text F
    .byte $3C,$66,$60,$6E,$66,$66,$3C,$00  ; $07 text G
    .byte $66,$66,$66,$7E,$66,$66,$66,$00  ; $08 text H
    .byte $3C,$18,$18,$18,$18,$18,$3C,$00  ; $09 text I
    .byte $1E,$0C,$0C,$0C,$0C,$6C,$38,$00  ; $0A text J
    .byte $66,$6C,$78,$70,$78,$6C,$66,$00  ; $0B text K
    .byte $60,$60,$60,$60,$60,$60,$7E,$00  ; $0C text L
    .byte $63,$77,$7F,$6B,$63,$63,$63,$00  ; $0D text M
    .byte $66,$76,$7E,$7E,$6E,$66,$66,$00  ; $0E text N
    .byte $3C,$66,$66,$66,$66,$66,$3C,$00  ; $0F text O
    .byte $7C,$66,$66,$7C,$60,$60,$60,$00  ; $10 text P
    .byte $3C,$66,$66,$66,$66,$3C,$0E,$00  ; $11 text Q
    .byte $7C,$66,$66,$7C,$78,$6C,$66,$00  ; $12 text R
    .byte $3C,$66,$60,$3C,$06,$66,$3C,$00  ; $13 text S
    .byte $7E,$18,$18,$18,$18,$18,$18,$00  ; $14 text T
    .byte $66,$66,$66,$66,$66,$66,$3C,$00  ; $15 text U
    .byte $66,$66,$66,$66,$66,$3C,$18,$00  ; $16 text V
    .byte $63,$63,$63,$6B,$7F,$77,$63,$00  ; $17 text W
    .byte $66,$66,$3C,$18,$3C,$66,$66,$00  ; $18 text X
    .byte $66,$66,$66,$3C,$18,$18,$18,$00  ; $19 text Y
    .byte $7E,$06,$0C,$18,$30,$60,$7E,$00  ; $1A text Z
    .byte $3C,$30,$30,$30,$30,$30,$3C,$00  ; $1B text [
    .byte $0C,$1A,$30,$7C,$30,$62,$FC,$00  ; $1C text £
    .byte $3C,$0C,$0C,$0C,$0C,$0C,$3C,$00  ; $1D text ]
    .byte $18,$3C,$7E,$18,$18,$18,$18,$00  ; $1E text ↑
    .byte $00,$20,$60,$FF,$60,$20,$00,$00  ; $1F text ←
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $20 text space
    .byte $18,$18,$18,$18,$00,$00,$18,$00  ; $21 text !
    .byte $66,$66,$66,$00,$00,$00,$00,$00  ; $22 text "
    .byte $66,$66,$FF,$66,$FF,$66,$66,$00  ; $23 text #
    .byte $18,$3E,$60,$3C,$06,$7C,$18,$00  ; $24 text $
    .byte $62,$66,$0C,$18,$30,$66,$46,$00  ; $25 text %
    .byte $3C,$66,$3C,$38,$67,$66,$3E,$00  ; $26 text &
    .byte $06,$0C,$18,$00,$00,$00,$00,$00  ; $27 text '
    .byte $0C,$18,$30,$30,$30,$18,$0C,$00  ; $28 text (
    .byte $30,$18,$0C,$0C,$0C,$18,$30,$00  ; $29 text )
    .byte $00,$66,$3C,$FF,$3C,$66,$00,$00  ; $2A text *
    .byte $00,$18,$18,$7E,$18,$18,$00,$00  ; $2B text +
    .byte $00,$00,$00,$00,$00,$18,$18,$30  ; $2C text ,
    .byte $00,$00,$00,$7E,$00,$00,$00,$00  ; $2D text -
    .byte $00,$00,$00,$00,$00,$18,$18,$00  ; $2E text .
    .byte $00,$03,$06,$0C,$18,$30,$60,$00  ; $2F text /
    .byte $3C,$66,$6E,$76,$66,$66,$3C,$00  ; $30 text 0
    .byte $18,$38,$18,$18,$18,$18,$7E,$00  ; $31 text 1
    .byte $3C,$66,$06,$0C,$30,$60,$7E,$00  ; $32 text 2
    .byte $3C,$66,$06,$1C,$06,$66,$3C,$00  ; $33 text 3
    .byte $06,$0E,$1E,$66,$7F,$06,$06,$00  ; $34 text 4
    .byte $7E,$60,$7C,$06,$06,$66,$3C,$00  ; $35 text 5
    .byte $3C,$66,$60,$7C,$66,$66,$3C,$00  ; $36 text 6
    .byte $7E,$66,$0C,$18,$18,$18,$18,$00  ; $37 text 7
    .byte $3C,$66,$66,$3C,$66,$66,$3C,$00  ; $38 text 8
    .byte $3C,$66,$66,$3E,$06,$66,$3C,$00  ; $39 text 9
    .byte $00,$00,$18,$00,$00,$18,$00,$00  ; $3A text :
    .byte $00,$00,$18,$00,$00,$18,$18,$30  ; $3B text ;
    .byte $0E,$1C,$38,$70,$38,$1C,$0E,$00  ; $3C text <
    .byte $00,$00,$7E,$00,$7E,$00,$00,$00  ; $3D text =
    .byte $70,$38,$1C,$0E,$1C,$38,$70,$00  ; $3E text >
    .byte $3C,$66,$06,$0C,$18,$00,$18,$00  ; $3F text ?
    .byte $FF,$00,$00,$00,$FF,$00,$00,$00  ; $40 outlined town-cobble · ceiling face
    .byte $EE,$EE,$EE,$00,$BB,$BB,$BB,$00  ; $41 outlined town-cobble · floor face
    .byte $00,$3F,$5F,$6F,$77,$7B,$7D,$7E  ; $42 outlined town-cobble · front wall face
    .byte $00,$15,$0A,$45,$22,$51,$28,$54  ; $43 outlined town-cobble · side wall face
    .byte $FF,$EE,$EE,$EE,$EE,$EE,$EE,$FF  ; $44 outlined town-cobble · door face
    .byte $FE,$00,$02,$00,$EB,$1B,$3B,$00  ; $45 outlined town-cobble · / 45° · ceiling over floor
    .byte $FE,$01,$03,$07,$E7,$1B,$3D,$7E  ; $46 outlined town-cobble · / 45° · ceiling over front wall
    .byte $FE,$01,$02,$05,$E2,$11,$28,$54  ; $47 outlined town-cobble · / 45° · ceiling over side wall
    .byte $EF,$EC,$E8,$00,$AF,$80,$80,$00  ; $48 outlined town-cobble · / 45° · floor over ceiling
    .byte $EE,$ED,$EB,$07,$A7,$9B,$BD,$7E  ; $49 outlined town-cobble · / 45° · floor over front wall
    .byte $EE,$ED,$EA,$05,$A2,$91,$A8,$54  ; $4A outlined town-cobble · / 45° · floor over side wall
    .byte $01,$3C,$58,$60,$6F,$40,$00,$00  ; $4B outlined town-cobble · / 45° · front wall over ceiling
    .byte $00,$3C,$5A,$60,$6B,$5B,$3B,$00  ; $4C outlined town-cobble · / 45° · front wall over floor
    .byte $00,$3D,$5A,$65,$62,$51,$28,$54  ; $4D outlined town-cobble · / 45° · front wall over side wall
    .byte $01,$14,$08,$40,$2F,$40,$00,$00  ; $4E outlined town-cobble · / 45° · side wall over ceiling
    .byte $00,$14,$0A,$40,$2B,$5B,$3B,$00  ; $4F outlined town-cobble · / 45° · side wall over floor
    .byte $00,$15,$0B,$47,$27,$5B,$3D,$7E  ; $50 outlined town-cobble · / 45° · side wall over front wall
    .byte $FF,$80,$C0,$00,$B7,$B8,$B8,$00  ; $51 outlined town-cobble · \ 45° · ceiling over floor
    .byte $7F,$00,$40,$60,$77,$78,$7C,$7E  ; $52 outlined town-cobble · \ 45° · ceiling over front wall
    .byte $7F,$00,$00,$40,$27,$50,$28,$54  ; $53 outlined town-cobble · \ 45° · ceiling over side wall
    .byte $EE,$2E,$0E,$00,$F3,$03,$01,$00  ; $54 outlined town-cobble · \ 45° · floor over ceiling
    .byte $6E,$2E,$4E,$60,$73,$7B,$7D,$7E  ; $55 outlined town-cobble · \ 45° · floor over front wall
    .byte $6E,$2E,$0E,$40,$23,$53,$29,$54  ; $56 outlined town-cobble · \ 45° · floor over side wall
    .byte $80,$3F,$1F,$0F,$F7,$03,$01,$00  ; $57 outlined town-cobble · \ 45° · front wall over ceiling
    .byte $80,$BF,$DF,$0F,$B7,$BB,$B9,$00  ; $58 outlined town-cobble · \ 45° · front wall over floor
    .byte $00,$3F,$1F,$4F,$27,$53,$29,$54  ; $59 outlined town-cobble · \ 45° · front wall over side wall
    .byte $80,$15,$0A,$05,$F2,$01,$00,$00  ; $5A outlined town-cobble · \ 45° · side wall over ceiling
    .byte $80,$95,$CA,$05,$B2,$B9,$B8,$00  ; $5B outlined town-cobble · \ 45° · side wall over floor
    .byte $00,$15,$4A,$65,$72,$79,$7C,$7E  ; $5C outlined town-cobble · \ 45° · side wall over front wall
    .byte $FF,$00,$00,$00,$FF,$00,$00,$00  ; $5D outlined town-roof · ceiling face
    .byte $7E,$FF,$FF,$AA,$E7,$FF,$FF,$AA  ; $5E outlined town-roof · floor face
    .byte $7F,$7F,$7F,$00,$F7,$F7,$F7,$00  ; $5F outlined town-roof · front wall face
    .byte $2A,$55,$2A,$00,$A2,$55,$A2,$00  ; $60 outlined town-roof · side wall face
    .byte $FF,$EE,$EE,$EE,$EE,$EE,$EE,$FF  ; $61 outlined town-roof · door face
    .byte $FE,$01,$03,$02,$E7,$1F,$3F,$2A  ; $62 outlined town-roof · / 45° · ceiling over floor
    .byte $FF,$01,$03,$00,$E7,$17,$37,$00  ; $63 outlined town-roof · / 45° · ceiling over front wall
    .byte $FE,$01,$02,$00,$E2,$15,$22,$00  ; $64 outlined town-roof · / 45° · ceiling over side wall
    .byte $7F,$FC,$F8,$A0,$EF,$C0,$80,$00  ; $65 outlined town-roof · / 45° · floor over ceiling
    .byte $7F,$FD,$FB,$A0,$E7,$D7,$B7,$00  ; $66 outlined town-roof · / 45° · floor over front wall
    .byte $7E,$FD,$FA,$A0,$E2,$D5,$A2,$00  ; $67 outlined town-roof · / 45° · floor over side wall
    .byte $7F,$7C,$78,$00,$EF,$C0,$80,$00  ; $68 outlined town-roof · / 45° · front wall over ceiling
    .byte $7E,$7D,$7B,$02,$E7,$DF,$BF,$2A  ; $69 outlined town-roof · / 45° · front wall over floor
    .byte $7E,$7D,$7A,$00,$E2,$D5,$A2,$00  ; $6A outlined town-roof · / 45° · front wall over side wall
    .byte $2B,$54,$28,$00,$AF,$40,$80,$00  ; $6B outlined town-roof · / 45° · side wall over ceiling
    .byte $2A,$55,$2B,$02,$A7,$5F,$BF,$2A  ; $6C outlined town-roof · / 45° · side wall over floor
    .byte $2B,$55,$2B,$00,$A7,$57,$B7,$00  ; $6D outlined town-roof · / 45° · side wall over front wall
    .byte $7F,$80,$C0,$A0,$E7,$F8,$FC,$AA  ; $6E outlined town-roof · \ 45° · ceiling over floor
    .byte $7F,$00,$40,$00,$F7,$F0,$F4,$00  ; $6F outlined town-roof · \ 45° · ceiling over front wall
    .byte $7F,$00,$00,$00,$A7,$50,$A0,$00  ; $70 outlined town-roof · \ 45° · ceiling over side wall
    .byte $FE,$3F,$1F,$0A,$F7,$03,$01,$00  ; $71 outlined town-roof · \ 45° · floor over ceiling
    .byte $7E,$3F,$5F,$0A,$F7,$F3,$F5,$00  ; $72 outlined town-roof · \ 45° · floor over front wall
    .byte $7E,$3F,$1F,$0A,$A7,$53,$A1,$00  ; $73 outlined town-roof · \ 45° · floor over side wall
    .byte $FF,$3F,$1F,$00,$F7,$03,$01,$00  ; $74 outlined town-roof · \ 45° · front wall over ceiling
    .byte $7F,$BF,$DF,$A0,$E7,$FB,$FD,$AA  ; $75 outlined town-roof · \ 45° · front wall over floor
    .byte $7F,$3F,$1F,$00,$A7,$53,$A1,$00  ; $76 outlined town-roof · \ 45° · front wall over side wall
    .byte $AA,$15,$0A,$00,$F2,$01,$00,$00  ; $77 outlined town-roof · \ 45° · side wall over ceiling
    .byte $2A,$95,$CA,$A0,$E2,$F9,$FC,$AA  ; $78 outlined town-roof · \ 45° · side wall over floor
    .byte $2A,$15,$4A,$00,$F2,$F1,$F4,$00  ; $79 outlined town-roof · \ 45° · side wall over front wall
    .byte $01,$02,$04,$08,$10,$20,$40,$80  ; $7A line · / 45°
    .byte $80,$40,$20,$10,$08,$04,$02,$01  ; $7B line · \ 45°
    .byte $80,$80,$80,$80,$80,$80,$80,$80  ; $7C line · left edge
    .byte $01,$01,$01,$01,$01,$01,$01,$01  ; $7D line · right edge
    .byte $FF,$00,$00,$00,$00,$00,$00,$00  ; $7E line · top edge
    .byte $00,$00,$00,$00,$00,$00,$00,$FF  ; $7F line · bottom edge
    .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00  ; $80 block · upper half
    .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF  ; $81 block · lower half
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0  ; $82 block · left half
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F  ; $83 block · right half
    .byte $F0,$F0,$F0,$F0,$00,$00,$00,$00  ; $84 block · quad TL
    .byte $0F,$0F,$0F,$0F,$00,$00,$00,$00  ; $85 block · quad TR
    .byte $00,$00,$00,$00,$F0,$F0,$F0,$F0  ; $86 block · quad BL
    .byte $00,$00,$00,$00,$0F,$0F,$0F,$0F  ; $87 block · quad BR
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $88 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $89 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $8A free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $8B free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $8C free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $8D free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $8E free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $8F free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $90 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $91 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $92 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $93 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $94 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $95 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $96 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $97 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $98 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $99 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $9A free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $9B free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $9C free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $9D free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $9E free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $9F free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A0 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A1 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A2 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A3 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A4 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A5 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A6 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A7 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A8 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $A9 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $AA free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $AB free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $AC free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $AD free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $AE free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $AF free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B0 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B1 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B2 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B3 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B4 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B5 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B6 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B7 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B8 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $B9 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $BA free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $BB free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $BC free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $BD free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $BE free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $BF free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C0 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C1 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C2 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C3 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C4 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C5 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C6 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C7 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C8 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $C9 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $CA free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $CB free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $CC free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $CD free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $CE free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $CF free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D0 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D1 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D2 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D3 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D4 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D5 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D6 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D7 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D8 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $D9 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $DA free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $DB free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $DC free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $DD free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $DE free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $DF free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E0 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E1 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E2 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E3 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E4 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E5 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E6 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E7 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E8 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $E9 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $EA free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $EB free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $EC free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $ED free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $EE free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $EF free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F0 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F1 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F2 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F3 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F4 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F5 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F6 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F7 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F8 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $F9 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $FA free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $FB free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $FC free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $FD free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $FE free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $FF free
