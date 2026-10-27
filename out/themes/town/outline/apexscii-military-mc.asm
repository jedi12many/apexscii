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
    .byte $D1,$51,$51,$00,$34,$14,$14,$00  ; $40 mc outlined town-cobble · top face
    .byte $AA,$95,$A5,$A5,$99,$99,$96,$96  ; $41 mc outlined town-cobble · left face
    .byte $AA,$84,$A1,$A4,$99,$88,$92,$86  ; $42 mc outlined town-cobble · right face
    .byte $00,$01,$01,$00,$04,$14,$14,$00  ; $43 mc outlined town-cobble · / 45° · empty over top
    .byte $00,$01,$01,$05,$09,$19,$16,$96  ; $44 mc outlined town-cobble · / 45° · empty over left
    .byte $00,$00,$01,$04,$09,$08,$12,$86  ; $45 mc outlined town-cobble · / 45° · empty over right
    .byte $D1,$50,$50,$00,$30,$00,$00,$00  ; $46 mc outlined town-cobble · / 45° · top over empty
    .byte $D1,$50,$51,$01,$39,$09,$16,$16  ; $47 mc outlined town-cobble · / 45° · top over left
    .byte $D1,$50,$51,$00,$39,$08,$12,$06  ; $48 mc outlined town-cobble · / 45° · top over right
    .byte $AA,$94,$A4,$A0,$90,$80,$80,$00  ; $49 mc outlined town-cobble · / 45° · left over empty
    .byte $AA,$94,$A5,$A0,$94,$84,$94,$00  ; $4A mc outlined town-cobble · / 45° · left over top
    .byte $AA,$94,$A5,$A0,$99,$88,$92,$06  ; $4B mc outlined town-cobble · / 45° · left over right
    .byte $AA,$84,$A0,$A0,$90,$80,$80,$00  ; $4C mc outlined town-cobble · / 45° · right over empty
    .byte $AA,$84,$A1,$A0,$94,$84,$94,$00  ; $4D mc outlined town-cobble · / 45° · right over top
    .byte $AA,$84,$A1,$A1,$99,$89,$96,$16  ; $4E mc outlined town-cobble · / 45° · right over left
    .byte $C0,$40,$50,$00,$34,$14,$14,$00  ; $4F mc outlined town-cobble · \ 45° · empty over top
    .byte $80,$80,$A0,$A0,$98,$98,$96,$96  ; $50 mc outlined town-cobble · \ 45° · empty over left
    .byte $80,$80,$A0,$A0,$98,$88,$92,$86  ; $51 mc outlined town-cobble · \ 45° · empty over right
    .byte $11,$11,$01,$00,$00,$00,$00,$00  ; $52 mc outlined town-cobble · \ 45° · top over empty
    .byte $91,$91,$81,$A0,$90,$98,$94,$96  ; $53 mc outlined town-cobble · \ 45° · top over left
    .byte $91,$91,$81,$A0,$90,$88,$90,$86  ; $54 mc outlined town-cobble · \ 45° · top over right
    .byte $2A,$15,$05,$05,$01,$01,$00,$00  ; $55 mc outlined town-cobble · \ 45° · left over empty
    .byte $EA,$55,$45,$05,$31,$15,$14,$00  ; $56 mc outlined town-cobble · \ 45° · left over top
    .byte $AA,$95,$85,$A5,$91,$89,$90,$86  ; $57 mc outlined town-cobble · \ 45° · left over right
    .byte $2A,$04,$01,$04,$01,$00,$00,$00  ; $58 mc outlined town-cobble · \ 45° · right over empty
    .byte $EA,$44,$41,$04,$31,$14,$14,$00  ; $59 mc outlined town-cobble · \ 45° · right over top
    .byte $AA,$84,$81,$A4,$91,$98,$94,$96  ; $5A mc outlined town-cobble · \ 45° · right over left
    .byte $3C,$FF,$FF,$77,$C3,$FF,$FF,$77  ; $5B mc outlined town-roof · top face
    .byte $7F,$7F,$7F,$55,$F7,$F7,$F7,$55  ; $5C mc outlined town-roof · left face
    .byte $3B,$2E,$3B,$00,$B3,$E2,$B3,$00  ; $5D mc outlined town-roof · right face
    .byte $00,$03,$03,$07,$03,$3F,$3F,$77  ; $5E mc outlined town-roof · / 45° · empty over top
    .byte $00,$03,$03,$05,$07,$37,$37,$55  ; $5F mc outlined town-roof · / 45° · empty over left
    .byte $00,$02,$03,$00,$03,$22,$33,$00  ; $60 mc outlined town-roof · / 45° · empty over right
    .byte $3C,$FC,$FC,$70,$C0,$C0,$C0,$00  ; $61 mc outlined town-roof · / 45° · top over empty
    .byte $3C,$FC,$FF,$71,$C7,$C7,$F7,$15  ; $62 mc outlined town-roof · / 45° · top over left
    .byte $3C,$FC,$FF,$70,$C3,$C2,$F3,$00  ; $63 mc outlined town-roof · / 45° · top over right
    .byte $7F,$7C,$7C,$50,$F0,$C0,$C0,$00  ; $64 mc outlined town-roof · / 45° · left over empty
    .byte $7F,$7C,$7F,$53,$F3,$CF,$FF,$37  ; $65 mc outlined town-roof · / 45° · left over top
    .byte $7F,$7C,$7F,$50,$F3,$C2,$F3,$00  ; $66 mc outlined town-roof · / 45° · left over right
    .byte $3B,$2C,$38,$00,$B0,$C0,$80,$00  ; $67 mc outlined town-roof · / 45° · right over empty
    .byte $3B,$2C,$3B,$03,$B3,$CF,$BF,$37  ; $68 mc outlined town-roof · / 45° · right over top
    .byte $3B,$2C,$3B,$01,$B7,$C7,$B7,$15  ; $69 mc outlined town-roof · / 45° · right over left
    .byte $00,$C0,$F0,$70,$C0,$FC,$FF,$77  ; $6A mc outlined town-roof · \ 45° · empty over top
    .byte $40,$40,$70,$50,$F4,$F4,$F7,$55  ; $6B mc outlined town-roof · \ 45° · empty over left
    .byte $00,$00,$30,$00,$B0,$E0,$B3,$00  ; $6C mc outlined town-roof · \ 45° · empty over right
    .byte $3C,$3F,$0F,$07,$03,$03,$00,$00  ; $6D mc outlined town-roof · \ 45° · top over empty
    .byte $7C,$7F,$4F,$57,$F3,$F7,$F4,$55  ; $6E mc outlined town-roof · \ 45° · top over left
    .byte $3C,$3F,$0F,$07,$B3,$E3,$B0,$00  ; $6F mc outlined town-roof · \ 45° · top over right
    .byte $3F,$3F,$0F,$05,$03,$03,$00,$00  ; $70 mc outlined town-roof · \ 45° · left over empty
    .byte $3F,$FF,$CF,$75,$C3,$FF,$FC,$77  ; $71 mc outlined town-roof · \ 45° · left over top
    .byte $3F,$3F,$0F,$05,$B3,$E3,$B0,$00  ; $72 mc outlined town-roof · \ 45° · left over right
    .byte $3B,$2E,$0B,$00,$03,$02,$00,$00  ; $73 mc outlined town-roof · \ 45° · right over empty
    .byte $3B,$EE,$CB,$70,$C3,$FE,$FC,$77  ; $74 mc outlined town-roof · \ 45° · right over top
    .byte $7B,$6E,$4B,$50,$F3,$F6,$F4,$55  ; $75 mc outlined town-roof · \ 45° · right over left
    .byte $01,$02,$04,$08,$10,$20,$40,$80  ; $76 line · / 45°
    .byte $80,$40,$20,$10,$08,$04,$02,$01  ; $77 line · \ 45°
    .byte $80,$80,$80,$80,$80,$80,$80,$80  ; $78 line · left edge
    .byte $01,$01,$01,$01,$01,$01,$01,$01  ; $79 line · right edge
    .byte $FF,$00,$00,$00,$00,$00,$00,$00  ; $7A line · top edge
    .byte $00,$00,$00,$00,$00,$00,$00,$FF  ; $7B line · bottom edge
    .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00  ; $7C block · upper half
    .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF  ; $7D block · lower half
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0  ; $7E block · left half
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F  ; $7F block · right half
    .byte $F0,$F0,$F0,$F0,$00,$00,$00,$00  ; $80 block · quad TL
    .byte $0F,$0F,$0F,$0F,$00,$00,$00,$00  ; $81 block · quad TR
    .byte $00,$00,$00,$00,$F0,$F0,$F0,$F0  ; $82 block · quad BL
    .byte $00,$00,$00,$00,$0F,$0F,$0F,$0F  ; $83 block · quad BR
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $84 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $85 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $86 free
    .byte $00,$00,$00,$00,$00,$00,$00,$00  ; $87 free
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
