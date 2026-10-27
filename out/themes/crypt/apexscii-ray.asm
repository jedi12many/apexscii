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
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $40 ray top · empty | empty
    .byte $00,$00,$00,$00,$00,$00,$0F,$0F  ; $41 ray top · empty | A2
    .byte $00,$00,$00,$00,$0F,$0F,$0F,$0F  ; $42 ray top · empty | A4
    .byte $00,$00,$0F,$0F,$0F,$0F,$0F,$0F  ; $43 ray top · empty | A6
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F  ; $44 ray top · empty | A8
    .byte $00,$00,$00,$00,$00,$00,$0A,$05  ; $45 ray top · empty | B2
    .byte $00,$00,$00,$00,$0A,$05,$0A,$05  ; $46 ray top · empty | B4
    .byte $00,$00,$0A,$05,$0A,$05,$0A,$05  ; $47 ray top · empty | B6
    .byte $0A,$05,$0A,$05,$0A,$05,$0A,$05  ; $48 ray top · empty | B8
    .byte $00,$00,$00,$00,$00,$00,$F0,$F0  ; $49 ray top · A2 | empty
    .byte $00,$00,$00,$00,$00,$00,$FF,$FF  ; $4A ray top · A2 | A2
    .byte $00,$00,$00,$00,$0F,$0F,$FF,$FF  ; $4B ray top · A2 | A4
    .byte $00,$00,$0F,$0F,$0F,$0F,$FF,$FF  ; $4C ray top · A2 | A6
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$FF,$FF  ; $4D ray top · A2 | A8
    .byte $00,$00,$00,$00,$00,$00,$FA,$F5  ; $4E ray top · A2 | B2
    .byte $00,$00,$00,$00,$0A,$05,$FA,$F5  ; $4F ray top · A2 | B4
    .byte $00,$00,$0A,$05,$0A,$05,$FA,$F5  ; $50 ray top · A2 | B6
    .byte $0A,$05,$0A,$05,$0A,$05,$FA,$F5  ; $51 ray top · A2 | B8
    .byte $00,$00,$00,$00,$F0,$F0,$F0,$F0  ; $52 ray top · A4 | empty
    .byte $00,$00,$00,$00,$F0,$F0,$FF,$FF  ; $53 ray top · A4 | A2
    .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF  ; $54 ray top · A4 | A4
    .byte $00,$00,$0F,$0F,$FF,$FF,$FF,$FF  ; $55 ray top · A4 | A6
    .byte $0F,$0F,$0F,$0F,$FF,$FF,$FF,$FF  ; $56 ray top · A4 | A8
    .byte $00,$00,$00,$00,$F0,$F0,$FA,$F5  ; $57 ray top · A4 | B2
    .byte $00,$00,$00,$00,$FA,$F5,$FA,$F5  ; $58 ray top · A4 | B4
    .byte $00,$00,$0A,$05,$FA,$F5,$FA,$F5  ; $59 ray top · A4 | B6
    .byte $0A,$05,$0A,$05,$FA,$F5,$FA,$F5  ; $5A ray top · A4 | B8
    .byte $00,$00,$F0,$F0,$F0,$F0,$F0,$F0  ; $5B ray top · A6 | empty
    .byte $00,$00,$F0,$F0,$F0,$F0,$FF,$FF  ; $5C ray top · A6 | A2
    .byte $00,$00,$F0,$F0,$FF,$FF,$FF,$FF  ; $5D ray top · A6 | A4
    .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF  ; $5E ray top · A6 | A6
    .byte $0F,$0F,$FF,$FF,$FF,$FF,$FF,$FF  ; $5F ray top · A6 | A8
    .byte $00,$00,$F0,$F0,$F0,$F0,$FA,$F5  ; $60 ray top · A6 | B2
    .byte $00,$00,$F0,$F0,$FA,$F5,$FA,$F5  ; $61 ray top · A6 | B4
    .byte $00,$00,$FA,$F5,$FA,$F5,$FA,$F5  ; $62 ray top · A6 | B6
    .byte $0A,$05,$FA,$F5,$FA,$F5,$FA,$F5  ; $63 ray top · A6 | B8
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0  ; $64 ray top · A8 | empty
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$FF,$FF  ; $65 ray top · A8 | A2
    .byte $F0,$F0,$F0,$F0,$FF,$FF,$FF,$FF  ; $66 ray top · A8 | A4
    .byte $F0,$F0,$FF,$FF,$FF,$FF,$FF,$FF  ; $67 ray top · A8 | A6
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ; $68 ray top · A8 | A8
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$FA,$F5  ; $69 ray top · A8 | B2
    .byte $F0,$F0,$F0,$F0,$FA,$F5,$FA,$F5  ; $6A ray top · A8 | B4
    .byte $F0,$F0,$FA,$F5,$FA,$F5,$FA,$F5  ; $6B ray top · A8 | B6
    .byte $FA,$F5,$FA,$F5,$FA,$F5,$FA,$F5  ; $6C ray top · A8 | B8
    .byte $00,$00,$00,$00,$00,$00,$A0,$50  ; $6D ray top · B2 | empty
    .byte $00,$00,$00,$00,$00,$00,$AF,$5F  ; $6E ray top · B2 | A2
    .byte $00,$00,$00,$00,$0F,$0F,$AF,$5F  ; $6F ray top · B2 | A4
    .byte $00,$00,$0F,$0F,$0F,$0F,$AF,$5F  ; $70 ray top · B2 | A6
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$AF,$5F  ; $71 ray top · B2 | A8
    .byte $00,$00,$00,$00,$00,$00,$AA,$55  ; $72 ray top · B2 | B2
    .byte $00,$00,$00,$00,$0A,$05,$AA,$55  ; $73 ray top · B2 | B4
    .byte $00,$00,$0A,$05,$0A,$05,$AA,$55  ; $74 ray top · B2 | B6
    .byte $0A,$05,$0A,$05,$0A,$05,$AA,$55  ; $75 ray top · B2 | B8
    .byte $00,$00,$00,$00,$A0,$50,$A0,$50  ; $76 ray top · B4 | empty
    .byte $00,$00,$00,$00,$A0,$50,$AF,$5F  ; $77 ray top · B4 | A2
    .byte $00,$00,$00,$00,$AF,$5F,$AF,$5F  ; $78 ray top · B4 | A4
    .byte $00,$00,$0F,$0F,$AF,$5F,$AF,$5F  ; $79 ray top · B4 | A6
    .byte $0F,$0F,$0F,$0F,$AF,$5F,$AF,$5F  ; $7A ray top · B4 | A8
    .byte $00,$00,$00,$00,$A0,$50,$AA,$55  ; $7B ray top · B4 | B2
    .byte $00,$00,$00,$00,$AA,$55,$AA,$55  ; $7C ray top · B4 | B4
    .byte $00,$00,$0A,$05,$AA,$55,$AA,$55  ; $7D ray top · B4 | B6
    .byte $0A,$05,$0A,$05,$AA,$55,$AA,$55  ; $7E ray top · B4 | B8
    .byte $00,$00,$A0,$50,$A0,$50,$A0,$50  ; $7F ray top · B6 | empty
    .byte $00,$00,$A0,$50,$A0,$50,$AF,$5F  ; $80 ray top · B6 | A2
    .byte $00,$00,$A0,$50,$AF,$5F,$AF,$5F  ; $81 ray top · B6 | A4
    .byte $00,$00,$AF,$5F,$AF,$5F,$AF,$5F  ; $82 ray top · B6 | A6
    .byte $0F,$0F,$AF,$5F,$AF,$5F,$AF,$5F  ; $83 ray top · B6 | A8
    .byte $00,$00,$A0,$50,$A0,$50,$AA,$55  ; $84 ray top · B6 | B2
    .byte $00,$00,$A0,$50,$AA,$55,$AA,$55  ; $85 ray top · B6 | B4
    .byte $00,$00,$AA,$55,$AA,$55,$AA,$55  ; $86 ray top · B6 | B6
    .byte $0A,$05,$AA,$55,$AA,$55,$AA,$55  ; $87 ray top · B6 | B8
    .byte $A0,$50,$A0,$50,$A0,$50,$A0,$50  ; $88 ray top · B8 | empty
    .byte $A0,$50,$A0,$50,$A0,$50,$AF,$5F  ; $89 ray top · B8 | A2
    .byte $A0,$50,$A0,$50,$AF,$5F,$AF,$5F  ; $8A ray top · B8 | A4
    .byte $A0,$50,$AF,$5F,$AF,$5F,$AF,$5F  ; $8B ray top · B8 | A6
    .byte $AF,$5F,$AF,$5F,$AF,$5F,$AF,$5F  ; $8C ray top · B8 | A8
    .byte $A0,$50,$A0,$50,$A0,$50,$AA,$55  ; $8D ray top · B8 | B2
    .byte $A0,$50,$A0,$50,$AA,$55,$AA,$55  ; $8E ray top · B8 | B4
    .byte $A0,$50,$AA,$55,$AA,$55,$AA,$55  ; $8F ray top · B8 | B6
    .byte $AA,$55,$AA,$55,$AA,$55,$AA,$55  ; $90 ray top · B8 | B8
    .byte $00,$00,$44,$00,$00,$00,$44,$00  ; $91 ray bottom · empty | empty
    .byte $0F,$0F,$44,$00,$00,$00,$44,$00  ; $92 ray bottom · empty | A2
    .byte $0F,$0F,$4F,$0F,$00,$00,$44,$00  ; $93 ray bottom · empty | A4
    .byte $0F,$0F,$4F,$0F,$0F,$0F,$44,$00  ; $94 ray bottom · empty | A6
    .byte $0F,$0F,$4F,$0F,$0F,$0F,$4F,$0F  ; $95 ray bottom · empty | A8
    .byte $0A,$05,$44,$00,$00,$00,$44,$00  ; $96 ray bottom · empty | B2
    .byte $0A,$05,$4A,$05,$00,$00,$44,$00  ; $97 ray bottom · empty | B4
    .byte $0A,$05,$4A,$05,$0A,$05,$44,$00  ; $98 ray bottom · empty | B6
    .byte $0A,$05,$4A,$05,$0A,$05,$4A,$05  ; $99 ray bottom · empty | B8
    .byte $F0,$F0,$44,$00,$00,$00,$44,$00  ; $9A ray bottom · A2 | empty
    .byte $FF,$FF,$44,$00,$00,$00,$44,$00  ; $9B ray bottom · A2 | A2
    .byte $FF,$FF,$4F,$0F,$00,$00,$44,$00  ; $9C ray bottom · A2 | A4
    .byte $FF,$FF,$4F,$0F,$0F,$0F,$44,$00  ; $9D ray bottom · A2 | A6
    .byte $FF,$FF,$4F,$0F,$0F,$0F,$4F,$0F  ; $9E ray bottom · A2 | A8
    .byte $FA,$F5,$44,$00,$00,$00,$44,$00  ; $9F ray bottom · A2 | B2
    .byte $FA,$F5,$4A,$05,$00,$00,$44,$00  ; $A0 ray bottom · A2 | B4
    .byte $FA,$F5,$4A,$05,$0A,$05,$44,$00  ; $A1 ray bottom · A2 | B6
    .byte $FA,$F5,$4A,$05,$0A,$05,$4A,$05  ; $A2 ray bottom · A2 | B8
    .byte $F0,$F0,$F4,$F0,$00,$00,$44,$00  ; $A3 ray bottom · A4 | empty
    .byte $FF,$FF,$F4,$F0,$00,$00,$44,$00  ; $A4 ray bottom · A4 | A2
    .byte $FF,$FF,$FF,$FF,$00,$00,$44,$00  ; $A5 ray bottom · A4 | A4
    .byte $FF,$FF,$FF,$FF,$0F,$0F,$44,$00  ; $A6 ray bottom · A4 | A6
    .byte $FF,$FF,$FF,$FF,$0F,$0F,$4F,$0F  ; $A7 ray bottom · A4 | A8
    .byte $FA,$F5,$F4,$F0,$00,$00,$44,$00  ; $A8 ray bottom · A4 | B2
    .byte $FA,$F5,$FA,$F5,$00,$00,$44,$00  ; $A9 ray bottom · A4 | B4
    .byte $FA,$F5,$FA,$F5,$0A,$05,$44,$00  ; $AA ray bottom · A4 | B6
    .byte $FA,$F5,$FA,$F5,$0A,$05,$4A,$05  ; $AB ray bottom · A4 | B8
    .byte $F0,$F0,$F4,$F0,$F0,$F0,$44,$00  ; $AC ray bottom · A6 | empty
    .byte $FF,$FF,$F4,$F0,$F0,$F0,$44,$00  ; $AD ray bottom · A6 | A2
    .byte $FF,$FF,$FF,$FF,$F0,$F0,$44,$00  ; $AE ray bottom · A6 | A4
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$44,$00  ; $AF ray bottom · A6 | A6
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$4F,$0F  ; $B0 ray bottom · A6 | A8
    .byte $FA,$F5,$F4,$F0,$F0,$F0,$44,$00  ; $B1 ray bottom · A6 | B2
    .byte $FA,$F5,$FA,$F5,$F0,$F0,$44,$00  ; $B2 ray bottom · A6 | B4
    .byte $FA,$F5,$FA,$F5,$FA,$F5,$44,$00  ; $B3 ray bottom · A6 | B6
    .byte $FA,$F5,$FA,$F5,$FA,$F5,$4A,$05  ; $B4 ray bottom · A6 | B8
    .byte $F0,$F0,$F4,$F0,$F0,$F0,$F4,$F0  ; $B5 ray bottom · A8 | empty
    .byte $FF,$FF,$F4,$F0,$F0,$F0,$F4,$F0  ; $B6 ray bottom · A8 | A2
    .byte $FF,$FF,$FF,$FF,$F0,$F0,$F4,$F0  ; $B7 ray bottom · A8 | A4
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$F4,$F0  ; $B8 ray bottom · A8 | A6
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ; $B9 ray bottom · A8 | A8
    .byte $FA,$F5,$F4,$F0,$F0,$F0,$F4,$F0  ; $BA ray bottom · A8 | B2
    .byte $FA,$F5,$FA,$F5,$F0,$F0,$F4,$F0  ; $BB ray bottom · A8 | B4
    .byte $FA,$F5,$FA,$F5,$FA,$F5,$F4,$F0  ; $BC ray bottom · A8 | B6
    .byte $FA,$F5,$FA,$F5,$FA,$F5,$FA,$F5  ; $BD ray bottom · A8 | B8
    .byte $A0,$50,$44,$00,$00,$00,$44,$00  ; $BE ray bottom · B2 | empty
    .byte $AF,$5F,$44,$00,$00,$00,$44,$00  ; $BF ray bottom · B2 | A2
    .byte $AF,$5F,$4F,$0F,$00,$00,$44,$00  ; $C0 ray bottom · B2 | A4
    .byte $AF,$5F,$4F,$0F,$0F,$0F,$44,$00  ; $C1 ray bottom · B2 | A6
    .byte $AF,$5F,$4F,$0F,$0F,$0F,$4F,$0F  ; $C2 ray bottom · B2 | A8
    .byte $AA,$55,$44,$00,$00,$00,$44,$00  ; $C3 ray bottom · B2 | B2
    .byte $AA,$55,$4A,$05,$00,$00,$44,$00  ; $C4 ray bottom · B2 | B4
    .byte $AA,$55,$4A,$05,$0A,$05,$44,$00  ; $C5 ray bottom · B2 | B6
    .byte $AA,$55,$4A,$05,$0A,$05,$4A,$05  ; $C6 ray bottom · B2 | B8
    .byte $A0,$50,$A4,$50,$00,$00,$44,$00  ; $C7 ray bottom · B4 | empty
    .byte $AF,$5F,$A4,$50,$00,$00,$44,$00  ; $C8 ray bottom · B4 | A2
    .byte $AF,$5F,$AF,$5F,$00,$00,$44,$00  ; $C9 ray bottom · B4 | A4
    .byte $AF,$5F,$AF,$5F,$0F,$0F,$44,$00  ; $CA ray bottom · B4 | A6
    .byte $AF,$5F,$AF,$5F,$0F,$0F,$4F,$0F  ; $CB ray bottom · B4 | A8
    .byte $AA,$55,$A4,$50,$00,$00,$44,$00  ; $CC ray bottom · B4 | B2
    .byte $AA,$55,$AA,$55,$00,$00,$44,$00  ; $CD ray bottom · B4 | B4
    .byte $AA,$55,$AA,$55,$0A,$05,$44,$00  ; $CE ray bottom · B4 | B6
    .byte $AA,$55,$AA,$55,$0A,$05,$4A,$05  ; $CF ray bottom · B4 | B8
    .byte $A0,$50,$A4,$50,$A0,$50,$44,$00  ; $D0 ray bottom · B6 | empty
    .byte $AF,$5F,$A4,$50,$A0,$50,$44,$00  ; $D1 ray bottom · B6 | A2
    .byte $AF,$5F,$AF,$5F,$A0,$50,$44,$00  ; $D2 ray bottom · B6 | A4
    .byte $AF,$5F,$AF,$5F,$AF,$5F,$44,$00  ; $D3 ray bottom · B6 | A6
    .byte $AF,$5F,$AF,$5F,$AF,$5F,$4F,$0F  ; $D4 ray bottom · B6 | A8
    .byte $AA,$55,$A4,$50,$A0,$50,$44,$00  ; $D5 ray bottom · B6 | B2
    .byte $AA,$55,$AA,$55,$A0,$50,$44,$00  ; $D6 ray bottom · B6 | B4
    .byte $AA,$55,$AA,$55,$AA,$55,$44,$00  ; $D7 ray bottom · B6 | B6
    .byte $AA,$55,$AA,$55,$AA,$55,$4A,$05  ; $D8 ray bottom · B6 | B8
    .byte $A0,$50,$A4,$50,$A0,$50,$A4,$50  ; $D9 ray bottom · B8 | empty
    .byte $AF,$5F,$A4,$50,$A0,$50,$A4,$50  ; $DA ray bottom · B8 | A2
    .byte $AF,$5F,$AF,$5F,$A0,$50,$A4,$50  ; $DB ray bottom · B8 | A4
    .byte $AF,$5F,$AF,$5F,$AF,$5F,$A4,$50  ; $DC ray bottom · B8 | A6
    .byte $AF,$5F,$AF,$5F,$AF,$5F,$AF,$5F  ; $DD ray bottom · B8 | A8
    .byte $AA,$55,$A4,$50,$A0,$50,$A4,$50  ; $DE ray bottom · B8 | B2
    .byte $AA,$55,$AA,$55,$A0,$50,$A4,$50  ; $DF ray bottom · B8 | B4
    .byte $AA,$55,$AA,$55,$AA,$55,$A4,$50  ; $E0 ray bottom · B8 | B6
    .byte $AA,$55,$AA,$55,$AA,$55,$AA,$55  ; $E1 ray bottom · B8 | B8
    .byte $80,$80,$80,$80,$80,$80,$80,$80  ; $E2 line · left edge
    .byte $01,$01,$01,$01,$01,$01,$01,$01  ; $E3 line · right edge
    .byte $FF,$00,$00,$00,$00,$00,$00,$00  ; $E4 line · top edge
    .byte $00,$00,$00,$00,$00,$00,$00,$FF  ; $E5 line · bottom edge
    .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00  ; $E6 block · upper half
    .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF  ; $E7 block · lower half
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0  ; $E8 block · left half
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F  ; $E9 block · right half
    .byte $F0,$F0,$F0,$F0,$00,$00,$00,$00  ; $EA block · quad TL
    .byte $0F,$0F,$0F,$0F,$00,$00,$00,$00  ; $EB block · quad TR
    .byte $00,$00,$00,$00,$F0,$F0,$F0,$F0  ; $EC block · quad BL
    .byte $00,$00,$00,$00,$0F,$0F,$0F,$0F  ; $ED block · quad BR
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
