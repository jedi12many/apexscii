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
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $40 mc ray top · empty | empty
    .byte $00,$00,$00,$00,$00,$00,$0A,$0A  ; $41 mc ray top · empty | A2
    .byte $00,$00,$00,$00,$0A,$0A,$0A,$0A  ; $42 mc ray top · empty | A4
    .byte $00,$00,$0A,$0A,$0A,$0A,$0A,$0A  ; $43 mc ray top · empty | A6
    .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A  ; $44 mc ray top · empty | A8
    .byte $00,$00,$00,$00,$00,$00,$0F,$0F  ; $45 mc ray top · empty | B2
    .byte $00,$00,$00,$00,$0F,$0F,$0F,$0F  ; $46 mc ray top · empty | B4
    .byte $00,$00,$0F,$0F,$0F,$0F,$0F,$0F  ; $47 mc ray top · empty | B6
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F  ; $48 mc ray top · empty | B8
    .byte $00,$00,$00,$00,$00,$00,$A0,$A0  ; $49 mc ray top · A2 | empty
    .byte $00,$00,$00,$00,$00,$00,$AA,$AA  ; $4A mc ray top · A2 | A2
    .byte $00,$00,$00,$00,$0A,$0A,$AA,$AA  ; $4B mc ray top · A2 | A4
    .byte $00,$00,$0A,$0A,$0A,$0A,$AA,$AA  ; $4C mc ray top · A2 | A6
    .byte $0A,$0A,$0A,$0A,$0A,$0A,$AA,$AA  ; $4D mc ray top · A2 | A8
    .byte $00,$00,$00,$00,$00,$00,$AF,$AF  ; $4E mc ray top · A2 | B2
    .byte $00,$00,$00,$00,$0F,$0F,$AF,$AF  ; $4F mc ray top · A2 | B4
    .byte $00,$00,$0F,$0F,$0F,$0F,$AF,$AF  ; $50 mc ray top · A2 | B6
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$AF,$AF  ; $51 mc ray top · A2 | B8
    .byte $00,$00,$00,$00,$A0,$A0,$A0,$A0  ; $52 mc ray top · A4 | empty
    .byte $00,$00,$00,$00,$A0,$A0,$AA,$AA  ; $53 mc ray top · A4 | A2
    .byte $00,$00,$00,$00,$AA,$AA,$AA,$AA  ; $54 mc ray top · A4 | A4
    .byte $00,$00,$0A,$0A,$AA,$AA,$AA,$AA  ; $55 mc ray top · A4 | A6
    .byte $0A,$0A,$0A,$0A,$AA,$AA,$AA,$AA  ; $56 mc ray top · A4 | A8
    .byte $00,$00,$00,$00,$A0,$A0,$AF,$AF  ; $57 mc ray top · A4 | B2
    .byte $00,$00,$00,$00,$AF,$AF,$AF,$AF  ; $58 mc ray top · A4 | B4
    .byte $00,$00,$0F,$0F,$AF,$AF,$AF,$AF  ; $59 mc ray top · A4 | B6
    .byte $0F,$0F,$0F,$0F,$AF,$AF,$AF,$AF  ; $5A mc ray top · A4 | B8
    .byte $00,$00,$A0,$A0,$A0,$A0,$A0,$A0  ; $5B mc ray top · A6 | empty
    .byte $00,$00,$A0,$A0,$A0,$A0,$AA,$AA  ; $5C mc ray top · A6 | A2
    .byte $00,$00,$A0,$A0,$AA,$AA,$AA,$AA  ; $5D mc ray top · A6 | A4
    .byte $00,$00,$AA,$AA,$AA,$AA,$AA,$AA  ; $5E mc ray top · A6 | A6
    .byte $0A,$0A,$AA,$AA,$AA,$AA,$AA,$AA  ; $5F mc ray top · A6 | A8
    .byte $00,$00,$A0,$A0,$A0,$A0,$AF,$AF  ; $60 mc ray top · A6 | B2
    .byte $00,$00,$A0,$A0,$AF,$AF,$AF,$AF  ; $61 mc ray top · A6 | B4
    .byte $00,$00,$AF,$AF,$AF,$AF,$AF,$AF  ; $62 mc ray top · A6 | B6
    .byte $0F,$0F,$AF,$AF,$AF,$AF,$AF,$AF  ; $63 mc ray top · A6 | B8
    .byte $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0  ; $64 mc ray top · A8 | empty
    .byte $A0,$A0,$A0,$A0,$A0,$A0,$AA,$AA  ; $65 mc ray top · A8 | A2
    .byte $A0,$A0,$A0,$A0,$AA,$AA,$AA,$AA  ; $66 mc ray top · A8 | A4
    .byte $A0,$A0,$AA,$AA,$AA,$AA,$AA,$AA  ; $67 mc ray top · A8 | A6
    .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA  ; $68 mc ray top · A8 | A8
    .byte $A0,$A0,$A0,$A0,$A0,$A0,$AF,$AF  ; $69 mc ray top · A8 | B2
    .byte $A0,$A0,$A0,$A0,$AF,$AF,$AF,$AF  ; $6A mc ray top · A8 | B4
    .byte $A0,$A0,$AF,$AF,$AF,$AF,$AF,$AF  ; $6B mc ray top · A8 | B6
    .byte $AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF  ; $6C mc ray top · A8 | B8
    .byte $00,$00,$00,$00,$00,$00,$F0,$F0  ; $6D mc ray top · B2 | empty
    .byte $00,$00,$00,$00,$00,$00,$FA,$FA  ; $6E mc ray top · B2 | A2
    .byte $00,$00,$00,$00,$0A,$0A,$FA,$FA  ; $6F mc ray top · B2 | A4
    .byte $00,$00,$0A,$0A,$0A,$0A,$FA,$FA  ; $70 mc ray top · B2 | A6
    .byte $0A,$0A,$0A,$0A,$0A,$0A,$FA,$FA  ; $71 mc ray top · B2 | A8
    .byte $00,$00,$00,$00,$00,$00,$FF,$FF  ; $72 mc ray top · B2 | B2
    .byte $00,$00,$00,$00,$0F,$0F,$FF,$FF  ; $73 mc ray top · B2 | B4
    .byte $00,$00,$0F,$0F,$0F,$0F,$FF,$FF  ; $74 mc ray top · B2 | B6
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$FF,$FF  ; $75 mc ray top · B2 | B8
    .byte $00,$00,$00,$00,$F0,$F0,$F0,$F0  ; $76 mc ray top · B4 | empty
    .byte $00,$00,$00,$00,$F0,$F0,$FA,$FA  ; $77 mc ray top · B4 | A2
    .byte $00,$00,$00,$00,$FA,$FA,$FA,$FA  ; $78 mc ray top · B4 | A4
    .byte $00,$00,$0A,$0A,$FA,$FA,$FA,$FA  ; $79 mc ray top · B4 | A6
    .byte $0A,$0A,$0A,$0A,$FA,$FA,$FA,$FA  ; $7A mc ray top · B4 | A8
    .byte $00,$00,$00,$00,$F0,$F0,$FF,$FF  ; $7B mc ray top · B4 | B2
    .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF  ; $7C mc ray top · B4 | B4
    .byte $00,$00,$0F,$0F,$FF,$FF,$FF,$FF  ; $7D mc ray top · B4 | B6
    .byte $0F,$0F,$0F,$0F,$FF,$FF,$FF,$FF  ; $7E mc ray top · B4 | B8
    .byte $00,$00,$F0,$F0,$F0,$F0,$F0,$F0  ; $7F mc ray top · B6 | empty
    .byte $00,$00,$F0,$F0,$F0,$F0,$FA,$FA  ; $80 mc ray top · B6 | A2
    .byte $00,$00,$F0,$F0,$FA,$FA,$FA,$FA  ; $81 mc ray top · B6 | A4
    .byte $00,$00,$FA,$FA,$FA,$FA,$FA,$FA  ; $82 mc ray top · B6 | A6
    .byte $0A,$0A,$FA,$FA,$FA,$FA,$FA,$FA  ; $83 mc ray top · B6 | A8
    .byte $00,$00,$F0,$F0,$F0,$F0,$FF,$FF  ; $84 mc ray top · B6 | B2
    .byte $00,$00,$F0,$F0,$FF,$FF,$FF,$FF  ; $85 mc ray top · B6 | B4
    .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF  ; $86 mc ray top · B6 | B6
    .byte $0F,$0F,$FF,$FF,$FF,$FF,$FF,$FF  ; $87 mc ray top · B6 | B8
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0  ; $88 mc ray top · B8 | empty
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$FA,$FA  ; $89 mc ray top · B8 | A2
    .byte $F0,$F0,$F0,$F0,$FA,$FA,$FA,$FA  ; $8A mc ray top · B8 | A4
    .byte $F0,$F0,$FA,$FA,$FA,$FA,$FA,$FA  ; $8B mc ray top · B8 | A6
    .byte $FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA  ; $8C mc ray top · B8 | A8
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$FF,$FF  ; $8D mc ray top · B8 | B2
    .byte $F0,$F0,$F0,$F0,$FF,$FF,$FF,$FF  ; $8E mc ray top · B8 | B4
    .byte $F0,$F0,$FF,$FF,$FF,$FF,$FF,$FF  ; $8F mc ray top · B8 | B6
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ; $90 mc ray top · B8 | B8
    .byte $55,$55,$55,$55,$55,$55,$55,$55  ; $91 mc ray bottom · empty | empty
    .byte $5A,$5A,$55,$55,$55,$55,$55,$55  ; $92 mc ray bottom · empty | A2
    .byte $5A,$5A,$5A,$5A,$55,$55,$55,$55  ; $93 mc ray bottom · empty | A4
    .byte $5A,$5A,$5A,$5A,$5A,$5A,$55,$55  ; $94 mc ray bottom · empty | A6
    .byte $5A,$5A,$5A,$5A,$5A,$5A,$5A,$5A  ; $95 mc ray bottom · empty | A8
    .byte $5F,$5F,$55,$55,$55,$55,$55,$55  ; $96 mc ray bottom · empty | B2
    .byte $5F,$5F,$5F,$5F,$55,$55,$55,$55  ; $97 mc ray bottom · empty | B4
    .byte $5F,$5F,$5F,$5F,$5F,$5F,$55,$55  ; $98 mc ray bottom · empty | B6
    .byte $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F  ; $99 mc ray bottom · empty | B8
    .byte $A5,$A5,$55,$55,$55,$55,$55,$55  ; $9A mc ray bottom · A2 | empty
    .byte $AA,$AA,$55,$55,$55,$55,$55,$55  ; $9B mc ray bottom · A2 | A2
    .byte $AA,$AA,$5A,$5A,$55,$55,$55,$55  ; $9C mc ray bottom · A2 | A4
    .byte $AA,$AA,$5A,$5A,$5A,$5A,$55,$55  ; $9D mc ray bottom · A2 | A6
    .byte $AA,$AA,$5A,$5A,$5A,$5A,$5A,$5A  ; $9E mc ray bottom · A2 | A8
    .byte $AF,$AF,$55,$55,$55,$55,$55,$55  ; $9F mc ray bottom · A2 | B2
    .byte $AF,$AF,$5F,$5F,$55,$55,$55,$55  ; $A0 mc ray bottom · A2 | B4
    .byte $AF,$AF,$5F,$5F,$5F,$5F,$55,$55  ; $A1 mc ray bottom · A2 | B6
    .byte $AF,$AF,$5F,$5F,$5F,$5F,$5F,$5F  ; $A2 mc ray bottom · A2 | B8
    .byte $A5,$A5,$A5,$A5,$55,$55,$55,$55  ; $A3 mc ray bottom · A4 | empty
    .byte $AA,$AA,$A5,$A5,$55,$55,$55,$55  ; $A4 mc ray bottom · A4 | A2
    .byte $AA,$AA,$AA,$AA,$55,$55,$55,$55  ; $A5 mc ray bottom · A4 | A4
    .byte $AA,$AA,$AA,$AA,$5A,$5A,$55,$55  ; $A6 mc ray bottom · A4 | A6
    .byte $AA,$AA,$AA,$AA,$5A,$5A,$5A,$5A  ; $A7 mc ray bottom · A4 | A8
    .byte $AF,$AF,$A5,$A5,$55,$55,$55,$55  ; $A8 mc ray bottom · A4 | B2
    .byte $AF,$AF,$AF,$AF,$55,$55,$55,$55  ; $A9 mc ray bottom · A4 | B4
    .byte $AF,$AF,$AF,$AF,$5F,$5F,$55,$55  ; $AA mc ray bottom · A4 | B6
    .byte $AF,$AF,$AF,$AF,$5F,$5F,$5F,$5F  ; $AB mc ray bottom · A4 | B8
    .byte $A5,$A5,$A5,$A5,$A5,$A5,$55,$55  ; $AC mc ray bottom · A6 | empty
    .byte $AA,$AA,$A5,$A5,$A5,$A5,$55,$55  ; $AD mc ray bottom · A6 | A2
    .byte $AA,$AA,$AA,$AA,$A5,$A5,$55,$55  ; $AE mc ray bottom · A6 | A4
    .byte $AA,$AA,$AA,$AA,$AA,$AA,$55,$55  ; $AF mc ray bottom · A6 | A6
    .byte $AA,$AA,$AA,$AA,$AA,$AA,$5A,$5A  ; $B0 mc ray bottom · A6 | A8
    .byte $AF,$AF,$A5,$A5,$A5,$A5,$55,$55  ; $B1 mc ray bottom · A6 | B2
    .byte $AF,$AF,$AF,$AF,$A5,$A5,$55,$55  ; $B2 mc ray bottom · A6 | B4
    .byte $AF,$AF,$AF,$AF,$AF,$AF,$55,$55  ; $B3 mc ray bottom · A6 | B6
    .byte $AF,$AF,$AF,$AF,$AF,$AF,$5F,$5F  ; $B4 mc ray bottom · A6 | B8
    .byte $A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5  ; $B5 mc ray bottom · A8 | empty
    .byte $AA,$AA,$A5,$A5,$A5,$A5,$A5,$A5  ; $B6 mc ray bottom · A8 | A2
    .byte $AA,$AA,$AA,$AA,$A5,$A5,$A5,$A5  ; $B7 mc ray bottom · A8 | A4
    .byte $AA,$AA,$AA,$AA,$AA,$AA,$A5,$A5  ; $B8 mc ray bottom · A8 | A6
    .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA  ; $B9 mc ray bottom · A8 | A8
    .byte $AF,$AF,$A5,$A5,$A5,$A5,$A5,$A5  ; $BA mc ray bottom · A8 | B2
    .byte $AF,$AF,$AF,$AF,$A5,$A5,$A5,$A5  ; $BB mc ray bottom · A8 | B4
    .byte $AF,$AF,$AF,$AF,$AF,$AF,$A5,$A5  ; $BC mc ray bottom · A8 | B6
    .byte $AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF  ; $BD mc ray bottom · A8 | B8
    .byte $F5,$F5,$55,$55,$55,$55,$55,$55  ; $BE mc ray bottom · B2 | empty
    .byte $FA,$FA,$55,$55,$55,$55,$55,$55  ; $BF mc ray bottom · B2 | A2
    .byte $FA,$FA,$5A,$5A,$55,$55,$55,$55  ; $C0 mc ray bottom · B2 | A4
    .byte $FA,$FA,$5A,$5A,$5A,$5A,$55,$55  ; $C1 mc ray bottom · B2 | A6
    .byte $FA,$FA,$5A,$5A,$5A,$5A,$5A,$5A  ; $C2 mc ray bottom · B2 | A8
    .byte $FF,$FF,$55,$55,$55,$55,$55,$55  ; $C3 mc ray bottom · B2 | B2
    .byte $FF,$FF,$5F,$5F,$55,$55,$55,$55  ; $C4 mc ray bottom · B2 | B4
    .byte $FF,$FF,$5F,$5F,$5F,$5F,$55,$55  ; $C5 mc ray bottom · B2 | B6
    .byte $FF,$FF,$5F,$5F,$5F,$5F,$5F,$5F  ; $C6 mc ray bottom · B2 | B8
    .byte $F5,$F5,$F5,$F5,$55,$55,$55,$55  ; $C7 mc ray bottom · B4 | empty
    .byte $FA,$FA,$F5,$F5,$55,$55,$55,$55  ; $C8 mc ray bottom · B4 | A2
    .byte $FA,$FA,$FA,$FA,$55,$55,$55,$55  ; $C9 mc ray bottom · B4 | A4
    .byte $FA,$FA,$FA,$FA,$5A,$5A,$55,$55  ; $CA mc ray bottom · B4 | A6
    .byte $FA,$FA,$FA,$FA,$5A,$5A,$5A,$5A  ; $CB mc ray bottom · B4 | A8
    .byte $FF,$FF,$F5,$F5,$55,$55,$55,$55  ; $CC mc ray bottom · B4 | B2
    .byte $FF,$FF,$FF,$FF,$55,$55,$55,$55  ; $CD mc ray bottom · B4 | B4
    .byte $FF,$FF,$FF,$FF,$5F,$5F,$55,$55  ; $CE mc ray bottom · B4 | B6
    .byte $FF,$FF,$FF,$FF,$5F,$5F,$5F,$5F  ; $CF mc ray bottom · B4 | B8
    .byte $F5,$F5,$F5,$F5,$F5,$F5,$55,$55  ; $D0 mc ray bottom · B6 | empty
    .byte $FA,$FA,$F5,$F5,$F5,$F5,$55,$55  ; $D1 mc ray bottom · B6 | A2
    .byte $FA,$FA,$FA,$FA,$F5,$F5,$55,$55  ; $D2 mc ray bottom · B6 | A4
    .byte $FA,$FA,$FA,$FA,$FA,$FA,$55,$55  ; $D3 mc ray bottom · B6 | A6
    .byte $FA,$FA,$FA,$FA,$FA,$FA,$5A,$5A  ; $D4 mc ray bottom · B6 | A8
    .byte $FF,$FF,$F5,$F5,$F5,$F5,$55,$55  ; $D5 mc ray bottom · B6 | B2
    .byte $FF,$FF,$FF,$FF,$F5,$F5,$55,$55  ; $D6 mc ray bottom · B6 | B4
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$55,$55  ; $D7 mc ray bottom · B6 | B6
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$5F,$5F  ; $D8 mc ray bottom · B6 | B8
    .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5  ; $D9 mc ray bottom · B8 | empty
    .byte $FA,$FA,$F5,$F5,$F5,$F5,$F5,$F5  ; $DA mc ray bottom · B8 | A2
    .byte $FA,$FA,$FA,$FA,$F5,$F5,$F5,$F5  ; $DB mc ray bottom · B8 | A4
    .byte $FA,$FA,$FA,$FA,$FA,$FA,$F5,$F5  ; $DC mc ray bottom · B8 | A6
    .byte $FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA  ; $DD mc ray bottom · B8 | A8
    .byte $FF,$FF,$F5,$F5,$F5,$F5,$F5,$F5  ; $DE mc ray bottom · B8 | B2
    .byte $FF,$FF,$FF,$FF,$F5,$F5,$F5,$F5  ; $DF mc ray bottom · B8 | B4
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$F5,$F5  ; $E0 mc ray bottom · B8 | B6
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ; $E1 mc ray bottom · B8 | B8
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
