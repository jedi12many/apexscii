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
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $40 mc outlined smooth · ceiling face
    .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA  ; $41 mc outlined smooth · floor face
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ; $42 mc outlined smooth · front wall face
    .byte $55,$55,$55,$55,$55,$55,$55,$55  ; $43 mc outlined smooth · side wall face
    .byte $EE,$EE,$EE,$EE,$EE,$EE,$EE,$EE  ; $44 mc outlined smooth · door face
    .byte $00,$00,$02,$02,$0A,$0A,$2A,$2A  ; $45 mc outlined smooth · / 45° · ceiling over floor
    .byte $00,$00,$03,$03,$0F,$0F,$3F,$3F  ; $46 mc outlined smooth · / 45° · ceiling over front wall
    .byte $00,$00,$01,$01,$05,$05,$15,$15  ; $47 mc outlined smooth · / 45° · ceiling over side wall
    .byte $AA,$A8,$A8,$A0,$A0,$80,$80,$00  ; $48 mc outlined smooth · / 45° · floor over ceiling
    .byte $AA,$A8,$AB,$A3,$AF,$8F,$BF,$3F  ; $49 mc outlined smooth · / 45° · floor over front wall
    .byte $AA,$A8,$A9,$A1,$A5,$85,$95,$15  ; $4A mc outlined smooth · / 45° · floor over side wall
    .byte $FF,$FC,$FC,$F0,$F0,$C0,$C0,$00  ; $4B mc outlined smooth · / 45° · front wall over ceiling
    .byte $FF,$FC,$FE,$F2,$FA,$CA,$EA,$2A  ; $4C mc outlined smooth · / 45° · front wall over floor
    .byte $FF,$FC,$FD,$F1,$F5,$C5,$D5,$15  ; $4D mc outlined smooth · / 45° · front wall over side wall
    .byte $55,$54,$54,$50,$50,$40,$40,$00  ; $4E mc outlined smooth · / 45° · side wall over ceiling
    .byte $55,$54,$56,$52,$5A,$4A,$6A,$2A  ; $4F mc outlined smooth · / 45° · side wall over floor
    .byte $55,$54,$57,$53,$5F,$4F,$7F,$3F  ; $50 mc outlined smooth · / 45° · side wall over front wall
    .byte $80,$80,$80,$A0,$A0,$A8,$A8,$AA  ; $51 mc outlined smooth · \ 45° · ceiling over floor
    .byte $C0,$C0,$C0,$F0,$F0,$FC,$FC,$FF  ; $52 mc outlined smooth · \ 45° · ceiling over front wall
    .byte $40,$40,$40,$50,$50,$54,$54,$55  ; $53 mc outlined smooth · \ 45° · ceiling over side wall
    .byte $2A,$2A,$0A,$0A,$02,$02,$00,$00  ; $54 mc outlined smooth · \ 45° · floor over ceiling
    .byte $EA,$EA,$CA,$FA,$F2,$FE,$FC,$FF  ; $55 mc outlined smooth · \ 45° · floor over front wall
    .byte $6A,$6A,$4A,$5A,$52,$56,$54,$55  ; $56 mc outlined smooth · \ 45° · floor over side wall
    .byte $3F,$3F,$0F,$0F,$03,$03,$00,$00  ; $57 mc outlined smooth · \ 45° · front wall over ceiling
    .byte $BF,$BF,$8F,$AF,$A3,$AB,$A8,$AA  ; $58 mc outlined smooth · \ 45° · front wall over floor
    .byte $7F,$7F,$4F,$5F,$53,$57,$54,$55  ; $59 mc outlined smooth · \ 45° · front wall over side wall
    .byte $15,$15,$05,$05,$01,$01,$00,$00  ; $5A mc outlined smooth · \ 45° · side wall over ceiling
    .byte $95,$95,$85,$A5,$A1,$A9,$A8,$AA  ; $5B mc outlined smooth · \ 45° · side wall over floor
    .byte $D5,$D5,$C5,$F5,$F1,$FD,$FC,$FF  ; $5C mc outlined smooth · \ 45° · side wall over front wall
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $5D mc outlined brick · ceiling face
    .byte $99,$55,$55,$55,$66,$55,$55,$55  ; $5E mc outlined brick · floor face
    .byte $7F,$7F,$7F,$55,$F7,$F7,$F7,$55  ; $5F mc outlined brick · front wall face
    .byte $3B,$2E,$3B,$00,$B3,$E2,$B3,$00  ; $60 mc outlined brick · side wall face
    .byte $EE,$EE,$EE,$EE,$EE,$EE,$EE,$EE  ; $61 mc outlined brick · door face
    .byte $00,$00,$01,$01,$06,$05,$15,$15  ; $62 mc outlined brick · / 45° · ceiling over floor
    .byte $00,$00,$03,$01,$07,$07,$37,$15  ; $63 mc outlined brick · / 45° · ceiling over front wall
    .byte $00,$00,$03,$00,$03,$02,$33,$00  ; $64 mc outlined brick · / 45° · ceiling over side wall
    .byte $99,$54,$54,$50,$60,$40,$40,$00  ; $65 mc outlined brick · / 45° · floor over ceiling
    .byte $99,$54,$57,$51,$67,$47,$77,$15  ; $66 mc outlined brick · / 45° · floor over front wall
    .byte $99,$54,$57,$50,$63,$42,$73,$00  ; $67 mc outlined brick · / 45° · floor over side wall
    .byte $7F,$7C,$7C,$50,$F0,$C0,$C0,$00  ; $68 mc outlined brick · / 45° · front wall over ceiling
    .byte $7F,$7C,$7D,$51,$F6,$C5,$D5,$15  ; $69 mc outlined brick · / 45° · front wall over floor
    .byte $7F,$7C,$7F,$50,$F3,$C2,$F3,$00  ; $6A mc outlined brick · / 45° · front wall over side wall
    .byte $3B,$2C,$38,$00,$B0,$C0,$80,$00  ; $6B mc outlined brick · / 45° · side wall over ceiling
    .byte $3B,$2C,$39,$01,$B6,$C5,$95,$15  ; $6C mc outlined brick · / 45° · side wall over floor
    .byte $3B,$2C,$3B,$01,$B7,$C7,$B7,$15  ; $6D mc outlined brick · / 45° · side wall over front wall
    .byte $80,$40,$40,$50,$60,$54,$54,$55  ; $6E mc outlined brick · \ 45° · ceiling over floor
    .byte $40,$40,$40,$50,$F0,$F4,$F4,$55  ; $6F mc outlined brick · \ 45° · ceiling over front wall
    .byte $00,$00,$00,$00,$B0,$E0,$B0,$00  ; $70 mc outlined brick · \ 45° · ceiling over side wall
    .byte $19,$15,$05,$05,$02,$01,$00,$00  ; $71 mc outlined brick · \ 45° · floor over ceiling
    .byte $59,$55,$45,$55,$F2,$F5,$F4,$55  ; $72 mc outlined brick · \ 45° · floor over front wall
    .byte $19,$15,$05,$05,$B2,$E1,$B0,$00  ; $73 mc outlined brick · \ 45° · floor over side wall
    .byte $3F,$3F,$0F,$05,$03,$03,$00,$00  ; $74 mc outlined brick · \ 45° · front wall over ceiling
    .byte $BF,$7F,$4F,$55,$63,$57,$54,$55  ; $75 mc outlined brick · \ 45° · front wall over floor
    .byte $3F,$3F,$0F,$05,$B3,$E3,$B0,$00  ; $76 mc outlined brick · \ 45° · front wall over side wall
    .byte $3B,$2E,$0B,$00,$03,$02,$00,$00  ; $77 mc outlined brick · \ 45° · side wall over ceiling
    .byte $BB,$6E,$4B,$50,$63,$56,$54,$55  ; $78 mc outlined brick · \ 45° · side wall over floor
    .byte $7B,$6E,$4B,$50,$F3,$F6,$F4,$55  ; $79 mc outlined brick · \ 45° · side wall over front wall
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
