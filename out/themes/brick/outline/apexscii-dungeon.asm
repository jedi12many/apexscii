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
    .byte $FF,$00,$00,$00,$FF,$00,$00,$00  ; $40 outlined brick-stud · ceiling face
    .byte $FF,$C3,$BD,$BD,$BD,$BD,$C3,$FF  ; $41 outlined brick-stud · floor face
    .byte $FE,$BE,$FE,$FE,$FE,$FE,$FE,$00  ; $42 outlined brick-stud · front wall face
    .byte $AA,$14,$AA,$54,$AA,$54,$AA,$00  ; $43 outlined brick-stud · side wall face
    .byte $FF,$EE,$EE,$EE,$EE,$EE,$EE,$FF  ; $44 outlined brick-stud · door face
    .byte $FF,$01,$01,$05,$ED,$1D,$03,$7F  ; $45 outlined brick-stud · / 45° · ceiling over floor
    .byte $FE,$00,$02,$06,$EE,$1E,$3E,$00  ; $46 outlined brick-stud · / 45° · ceiling over front wall
    .byte $FE,$00,$02,$04,$EA,$14,$2A,$00  ; $47 outlined brick-stud · / 45° · ceiling over side wall
    .byte $FF,$C0,$B8,$B0,$AF,$80,$80,$00  ; $48 outlined brick-stud · / 45° · floor over ceiling
    .byte $FE,$C0,$BA,$B6,$AE,$9E,$BE,$00  ; $49 outlined brick-stud · / 45° · floor over front wall
    .byte $FE,$C0,$BA,$B4,$AA,$94,$AA,$00  ; $4A outlined brick-stud · / 45° · floor over side wall
    .byte $FF,$BC,$F8,$F0,$EF,$C0,$80,$00  ; $4B outlined brick-stud · / 45° · front wall over ceiling
    .byte $FF,$BD,$F9,$F5,$ED,$DD,$83,$7F  ; $4C outlined brick-stud · / 45° · front wall over floor
    .byte $FE,$BC,$FA,$F4,$EA,$D4,$AA,$00  ; $4D outlined brick-stud · / 45° · front wall over side wall
    .byte $AB,$14,$A8,$50,$AF,$40,$80,$00  ; $4E outlined brick-stud · / 45° · side wall over ceiling
    .byte $AB,$15,$A9,$55,$AD,$5D,$83,$7F  ; $4F outlined brick-stud · / 45° · side wall over floor
    .byte $AA,$14,$AA,$56,$AE,$5E,$BE,$00  ; $50 outlined brick-stud · / 45° · side wall over front wall
    .byte $FF,$80,$80,$A0,$B7,$B8,$C0,$FE  ; $51 outlined brick-stud · \ 45° · ceiling over floor
    .byte $FF,$80,$C0,$E0,$F7,$F8,$FC,$00  ; $52 outlined brick-stud · \ 45° · ceiling over front wall
    .byte $FF,$00,$80,$40,$A7,$50,$A8,$00  ; $53 outlined brick-stud · \ 45° · ceiling over side wall
    .byte $FF,$03,$1D,$0D,$F5,$01,$01,$00  ; $54 outlined brick-stud · \ 45° · floor over ceiling
    .byte $FF,$83,$DD,$ED,$F5,$F9,$FD,$00  ; $55 outlined brick-stud · \ 45° · floor over front wall
    .byte $FF,$03,$9D,$4D,$A5,$51,$A9,$00  ; $56 outlined brick-stud · \ 45° · floor over side wall
    .byte $FE,$3E,$1E,$0E,$F6,$02,$00,$00  ; $57 outlined brick-stud · \ 45° · front wall over ceiling
    .byte $FE,$BE,$9E,$AE,$B6,$BA,$C0,$FE  ; $58 outlined brick-stud · \ 45° · front wall over floor
    .byte $FE,$3E,$9E,$4E,$A6,$52,$A8,$00  ; $59 outlined brick-stud · \ 45° · front wall over side wall
    .byte $AA,$14,$0A,$04,$F2,$00,$00,$00  ; $5A outlined brick-stud · \ 45° · side wall over ceiling
    .byte $AA,$94,$8A,$A4,$B2,$B8,$C0,$FE  ; $5B outlined brick-stud · \ 45° · side wall over floor
    .byte $AA,$94,$CA,$E4,$F2,$F8,$FC,$00  ; $5C outlined brick-stud · \ 45° · side wall over front wall
    .byte $FF,$00,$00,$00,$FF,$00,$00,$00  ; $5D outlined brick-tile · ceiling face
    .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$00  ; $5E outlined brick-tile · floor face
    .byte $FE,$BE,$FE,$FE,$FE,$FE,$FE,$00  ; $5F outlined brick-tile · front wall face
    .byte $AA,$14,$AA,$54,$AA,$54,$AA,$00  ; $60 outlined brick-tile · side wall face
    .byte $FF,$EE,$EE,$EE,$EE,$EE,$EE,$FF  ; $61 outlined brick-tile · door face
    .byte $FE,$00,$02,$06,$EE,$1E,$3E,$00  ; $62 outlined brick-tile · / 45° · ceiling over floor
    .byte $FE,$00,$02,$06,$EE,$1E,$3E,$00  ; $63 outlined brick-tile · / 45° · ceiling over front wall
    .byte $FE,$00,$02,$04,$EA,$14,$2A,$00  ; $64 outlined brick-tile · / 45° · ceiling over side wall
    .byte $FF,$FC,$F8,$F0,$EF,$C0,$80,$00  ; $65 outlined brick-tile · / 45° · floor over ceiling
    .byte $FE,$FC,$FA,$F6,$EE,$DE,$BE,$00  ; $66 outlined brick-tile · / 45° · floor over front wall
    .byte $FE,$FC,$FA,$F4,$EA,$D4,$AA,$00  ; $67 outlined brick-tile · / 45° · floor over side wall
    .byte $FF,$BC,$F8,$F0,$EF,$C0,$80,$00  ; $68 outlined brick-tile · / 45° · front wall over ceiling
    .byte $FE,$BC,$FA,$F6,$EE,$DE,$BE,$00  ; $69 outlined brick-tile · / 45° · front wall over floor
    .byte $FE,$BC,$FA,$F4,$EA,$D4,$AA,$00  ; $6A outlined brick-tile · / 45° · front wall over side wall
    .byte $AB,$14,$A8,$50,$AF,$40,$80,$00  ; $6B outlined brick-tile · / 45° · side wall over ceiling
    .byte $AA,$14,$AA,$56,$AE,$5E,$BE,$00  ; $6C outlined brick-tile · / 45° · side wall over floor
    .byte $AA,$14,$AA,$56,$AE,$5E,$BE,$00  ; $6D outlined brick-tile · / 45° · side wall over front wall
    .byte $FF,$80,$C0,$E0,$F7,$F8,$FC,$00  ; $6E outlined brick-tile · \ 45° · ceiling over floor
    .byte $FF,$80,$C0,$E0,$F7,$F8,$FC,$00  ; $6F outlined brick-tile · \ 45° · ceiling over front wall
    .byte $FF,$00,$80,$40,$A7,$50,$A8,$00  ; $70 outlined brick-tile · \ 45° · ceiling over side wall
    .byte $FE,$3E,$1E,$0E,$F6,$02,$00,$00  ; $71 outlined brick-tile · \ 45° · floor over ceiling
    .byte $FE,$BE,$DE,$EE,$F6,$FA,$FC,$00  ; $72 outlined brick-tile · \ 45° · floor over front wall
    .byte $FE,$3E,$9E,$4E,$A6,$52,$A8,$00  ; $73 outlined brick-tile · \ 45° · floor over side wall
    .byte $FE,$3E,$1E,$0E,$F6,$02,$00,$00  ; $74 outlined brick-tile · \ 45° · front wall over ceiling
    .byte $FE,$BE,$DE,$EE,$F6,$FA,$FC,$00  ; $75 outlined brick-tile · \ 45° · front wall over floor
    .byte $FE,$3E,$9E,$4E,$A6,$52,$A8,$00  ; $76 outlined brick-tile · \ 45° · front wall over side wall
    .byte $AA,$14,$0A,$04,$F2,$00,$00,$00  ; $77 outlined brick-tile · \ 45° · side wall over ceiling
    .byte $AA,$94,$CA,$E4,$F2,$F8,$FC,$00  ; $78 outlined brick-tile · \ 45° · side wall over floor
    .byte $AA,$94,$CA,$E4,$F2,$F8,$FC,$00  ; $79 outlined brick-tile · \ 45° · side wall over front wall
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
