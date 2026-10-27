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
    .byte $D1,$51,$51,$00,$34,$14,$14,$00  ; $40 mc town-cobble · top face
    .byte $AA,$95,$A5,$A5,$99,$99,$96,$96  ; $41 mc town-cobble · left face
    .byte $AA,$84,$A1,$A4,$99,$88,$92,$86  ; $42 mc town-cobble · right face
    .byte $01,$01,$11,$00,$34,$14,$14,$00  ; $43 mc town-cobble · / upper · empty over top
    .byte $02,$05,$25,$A5,$99,$99,$96,$96  ; $44 mc town-cobble · / upper · empty over left
    .byte $02,$04,$21,$A4,$99,$88,$92,$86  ; $45 mc town-cobble · / upper · empty over right
    .byte $D0,$50,$40,$00,$00,$00,$00,$00  ; $46 mc town-cobble · / upper · top over empty
    .byte $D2,$55,$65,$A5,$99,$99,$96,$96  ; $47 mc town-cobble · / upper · top over left
    .byte $D2,$54,$61,$A4,$99,$88,$92,$86  ; $48 mc town-cobble · / upper · top over right
    .byte $A8,$90,$80,$00,$00,$00,$00,$00  ; $49 mc town-cobble · / upper · left over empty
    .byte $A9,$91,$91,$00,$34,$14,$14,$00  ; $4A mc town-cobble · / upper · left over top
    .byte $AA,$94,$A1,$A4,$99,$88,$92,$86  ; $4B mc town-cobble · / upper · left over right
    .byte $A8,$80,$80,$00,$00,$00,$00,$00  ; $4C mc town-cobble · / upper · right over empty
    .byte $A9,$81,$91,$00,$34,$14,$14,$00  ; $4D mc town-cobble · / upper · right over top
    .byte $AA,$85,$A5,$A5,$99,$99,$96,$96  ; $4E mc town-cobble · / upper · right over left
    .byte $00,$00,$00,$00,$00,$04,$14,$00  ; $4F mc town-cobble · / lower · empty over top
    .byte $00,$00,$00,$00,$01,$09,$16,$96  ; $50 mc town-cobble · / lower · empty over left
    .byte $00,$00,$00,$00,$01,$08,$12,$86  ; $51 mc town-cobble · / lower · empty over right
    .byte $D1,$51,$51,$00,$34,$10,$00,$00  ; $52 mc town-cobble · / lower · top over empty
    .byte $D1,$51,$51,$00,$35,$19,$16,$96  ; $53 mc town-cobble · / lower · top over left
    .byte $D1,$51,$51,$00,$35,$18,$12,$86  ; $54 mc town-cobble · / lower · top over right
    .byte $AA,$95,$A5,$A5,$98,$90,$80,$00  ; $55 mc town-cobble · / lower · left over empty
    .byte $AA,$95,$A5,$A5,$98,$94,$94,$00  ; $56 mc town-cobble · / lower · left over top
    .byte $AA,$95,$A5,$A5,$99,$98,$92,$86  ; $57 mc town-cobble · / lower · left over right
    .byte $AA,$84,$A1,$A4,$98,$80,$80,$00  ; $58 mc town-cobble · / lower · right over empty
    .byte $AA,$84,$A1,$A4,$98,$84,$94,$00  ; $59 mc town-cobble · / lower · right over top
    .byte $AA,$84,$A1,$A4,$99,$89,$96,$96  ; $5A mc town-cobble · / lower · right over left
    .byte $C0,$50,$50,$00,$34,$14,$14,$00  ; $5B mc town-cobble · \ upper · empty over top
    .byte $80,$90,$A4,$A5,$99,$99,$96,$96  ; $5C mc town-cobble · \ upper · empty over left
    .byte $80,$80,$A0,$A4,$99,$88,$92,$86  ; $5D mc town-cobble · \ upper · empty over right
    .byte $11,$01,$01,$00,$00,$00,$00,$00  ; $5E mc town-cobble · \ upper · top over empty
    .byte $91,$91,$A5,$A5,$99,$99,$96,$96  ; $5F mc town-cobble · \ upper · top over left
    .byte $91,$81,$A1,$A4,$99,$88,$92,$86  ; $60 mc town-cobble · \ upper · top over right
    .byte $2A,$05,$01,$00,$00,$00,$00,$00  ; $61 mc town-cobble · \ upper · left over empty
    .byte $EA,$55,$51,$00,$34,$14,$14,$00  ; $62 mc town-cobble · \ upper · left over top
    .byte $AA,$85,$A1,$A4,$99,$88,$92,$86  ; $63 mc town-cobble · \ upper · left over right
    .byte $2A,$04,$01,$00,$00,$00,$00,$00  ; $64 mc town-cobble · \ upper · right over empty
    .byte $EA,$54,$51,$00,$34,$14,$14,$00  ; $65 mc town-cobble · \ upper · right over top
    .byte $AA,$94,$A5,$A5,$99,$99,$96,$96  ; $66 mc town-cobble · \ upper · right over left
    .byte $00,$00,$00,$00,$00,$10,$14,$00  ; $67 mc town-cobble · \ lower · empty over top
    .byte $00,$00,$00,$00,$80,$90,$94,$96  ; $68 mc town-cobble · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$80,$90,$86  ; $69 mc town-cobble · \ lower · empty over right
    .byte $D1,$51,$51,$00,$34,$04,$00,$00  ; $6A mc town-cobble · \ lower · top over empty
    .byte $D1,$51,$51,$00,$B4,$94,$94,$96  ; $6B mc town-cobble · \ lower · top over left
    .byte $D1,$51,$51,$00,$B4,$84,$90,$86  ; $6C mc town-cobble · \ lower · top over right
    .byte $AA,$95,$A5,$A5,$19,$09,$02,$00  ; $6D mc town-cobble · \ lower · left over empty
    .byte $AA,$95,$A5,$A5,$19,$19,$16,$00  ; $6E mc town-cobble · \ lower · left over top
    .byte $AA,$95,$A5,$A5,$99,$89,$92,$86  ; $6F mc town-cobble · \ lower · left over right
    .byte $AA,$84,$A1,$A4,$19,$08,$02,$00  ; $70 mc town-cobble · \ lower · right over empty
    .byte $AA,$84,$A1,$A4,$19,$18,$16,$00  ; $71 mc town-cobble · \ lower · right over top
    .byte $AA,$84,$A1,$A4,$99,$98,$96,$96  ; $72 mc town-cobble · \ lower · right over left
    .byte $3C,$FF,$FF,$77,$C3,$FF,$FF,$77  ; $73 mc town-roof · top face
    .byte $7F,$7F,$7F,$55,$F7,$F7,$F7,$55  ; $74 mc town-roof · left face
    .byte $3B,$2E,$3B,$00,$B3,$E2,$B3,$00  ; $75 mc town-roof · right face
    .byte $00,$0F,$3F,$77,$C3,$FF,$FF,$77  ; $76 mc town-roof · / upper · empty over top
    .byte $03,$0F,$3F,$55,$F7,$F7,$F7,$55  ; $77 mc town-roof · / upper · empty over left
    .byte $03,$0E,$3B,$00,$B3,$E2,$B3,$00  ; $78 mc town-roof · / upper · empty over right
    .byte $3C,$F0,$C0,$00,$00,$00,$00,$00  ; $79 mc town-roof · / upper · top over empty
    .byte $3F,$FF,$FF,$55,$F7,$F7,$F7,$55  ; $7A mc town-roof · / upper · top over left
    .byte $3F,$FE,$FB,$00,$B3,$E2,$B3,$00  ; $7B mc town-roof · / upper · top over right
    .byte $7C,$70,$40,$00,$00,$00,$00,$00  ; $7C mc town-roof · / upper · left over empty
    .byte $7C,$7F,$7F,$77,$C3,$FF,$FF,$77  ; $7D mc town-roof · / upper · left over top
    .byte $7F,$7E,$7B,$00,$B3,$E2,$B3,$00  ; $7E mc town-roof · / upper · left over right
    .byte $38,$20,$00,$00,$00,$00,$00,$00  ; $7F mc town-roof · / upper · right over empty
    .byte $38,$2F,$3F,$77,$C3,$FF,$FF,$77  ; $80 mc town-roof · / upper · right over top
    .byte $3B,$2F,$3F,$55,$F7,$F7,$F7,$55  ; $81 mc town-roof · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0F,$3F,$77  ; $82 mc town-roof · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$07,$37,$55  ; $83 mc town-roof · / lower · empty over left
    .byte $00,$00,$00,$00,$03,$02,$33,$00  ; $84 mc town-roof · / lower · empty over right
    .byte $3C,$FF,$FF,$77,$C0,$F0,$C0,$00  ; $85 mc town-roof · / lower · top over empty
    .byte $3C,$FF,$FF,$77,$C3,$F7,$F7,$55  ; $86 mc town-roof · / lower · top over left
    .byte $3C,$FF,$FF,$77,$C3,$F2,$F3,$00  ; $87 mc town-roof · / lower · top over right
    .byte $7F,$7F,$7F,$55,$F4,$F0,$C0,$00  ; $88 mc town-roof · / lower · left over empty
    .byte $7F,$7F,$7F,$55,$F7,$FF,$FF,$77  ; $89 mc town-roof · / lower · left over top
    .byte $7F,$7F,$7F,$55,$F7,$F2,$F3,$00  ; $8A mc town-roof · / lower · left over right
    .byte $3B,$2E,$3B,$00,$B0,$E0,$80,$00  ; $8B mc town-roof · / lower · right over empty
    .byte $3B,$2E,$3B,$00,$B3,$EF,$BF,$77  ; $8C mc town-roof · / lower · right over top
    .byte $3B,$2E,$3B,$00,$B3,$E7,$B7,$55  ; $8D mc town-roof · / lower · right over left
    .byte $00,$F0,$FC,$77,$C3,$FF,$FF,$77  ; $8E mc town-roof · \ upper · empty over top
    .byte $40,$70,$7C,$55,$F7,$F7,$F7,$55  ; $8F mc town-roof · \ upper · empty over left
    .byte $00,$20,$38,$00,$B3,$E2,$B3,$00  ; $90 mc town-roof · \ upper · empty over right
    .byte $3C,$0F,$03,$00,$00,$00,$00,$00  ; $91 mc town-roof · \ upper · top over empty
    .byte $7C,$7F,$7F,$55,$F7,$F7,$F7,$55  ; $92 mc town-roof · \ upper · top over left
    .byte $3C,$2F,$3B,$00,$B3,$E2,$B3,$00  ; $93 mc town-roof · \ upper · top over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $94 mc town-roof · \ upper · left over empty
    .byte $3F,$FF,$FF,$77,$C3,$FF,$FF,$77  ; $95 mc town-roof · \ upper · left over top
    .byte $3F,$2F,$3B,$00,$B3,$E2,$B3,$00  ; $96 mc town-roof · \ upper · left over right
    .byte $3B,$0E,$03,$00,$00,$00,$00,$00  ; $97 mc town-roof · \ upper · right over empty
    .byte $3B,$FE,$FF,$77,$C3,$FF,$FF,$77  ; $98 mc town-roof · \ upper · right over top
    .byte $7B,$7E,$7F,$55,$F7,$F7,$F7,$55  ; $99 mc town-roof · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$77  ; $9A mc town-roof · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$F0,$F4,$55  ; $9B mc town-roof · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$E0,$B0,$00  ; $9C mc town-roof · \ lower · empty over right
    .byte $3C,$FF,$FF,$77,$03,$0F,$03,$00  ; $9D mc town-roof · \ lower · top over empty
    .byte $3C,$FF,$FF,$77,$C3,$FF,$F7,$55  ; $9E mc town-roof · \ lower · top over left
    .byte $3C,$FF,$FF,$77,$83,$EF,$B3,$00  ; $9F mc town-roof · \ lower · top over right
    .byte $7F,$7F,$7F,$55,$37,$07,$03,$00  ; $A0 mc town-roof · \ lower · left over empty
    .byte $7F,$7F,$7F,$55,$F7,$F7,$FF,$77  ; $A1 mc town-roof · \ lower · left over top
    .byte $7F,$7F,$7F,$55,$B7,$E7,$B3,$00  ; $A2 mc town-roof · \ lower · left over right
    .byte $3B,$2E,$3B,$00,$33,$02,$03,$00  ; $A3 mc town-roof · \ lower · right over empty
    .byte $3B,$2E,$3B,$00,$F3,$F2,$FF,$77  ; $A4 mc town-roof · \ lower · right over top
    .byte $3B,$2E,$3B,$00,$F3,$F2,$F7,$55  ; $A5 mc town-roof · \ lower · right over left
    .byte $03,$0C,$30,$C0,$00,$00,$00,$00  ; $A6 line · / upper
    .byte $00,$00,$00,$00,$03,$0C,$30,$C0  ; $A7 line · / lower
    .byte $C0,$30,$0C,$03,$00,$00,$00,$00  ; $A8 line · \ upper
    .byte $00,$00,$00,$00,$C0,$30,$0C,$03  ; $A9 line · \ lower
    .byte $80,$80,$80,$80,$80,$80,$80,$80  ; $AA line · left edge
    .byte $01,$01,$01,$01,$01,$01,$01,$01  ; $AB line · right edge
    .byte $FF,$00,$00,$00,$00,$00,$00,$00  ; $AC line · top edge
    .byte $00,$00,$00,$00,$00,$00,$00,$FF  ; $AD line · bottom edge
    .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00  ; $AE block · upper half
    .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF  ; $AF block · lower half
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0  ; $B0 block · left half
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F  ; $B1 block · right half
    .byte $F0,$F0,$F0,$F0,$00,$00,$00,$00  ; $B2 block · quad TL
    .byte $0F,$0F,$0F,$0F,$00,$00,$00,$00  ; $B3 block · quad TR
    .byte $00,$00,$00,$00,$F0,$F0,$F0,$F0  ; $B4 block · quad BL
    .byte $00,$00,$00,$00,$0F,$0F,$0F,$0F  ; $B5 block · quad BR
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
