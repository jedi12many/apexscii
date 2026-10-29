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
    .byte $FF,$C3,$BD,$BD,$BD,$BD,$C3,$FF  ; $40 brick-stud · top face
    .byte $FE,$BE,$FE,$FE,$FE,$FE,$FE,$00  ; $41 brick-stud · left face
    .byte $AA,$14,$AA,$54,$AA,$54,$AA,$00  ; $42 brick-stud · right face
    .byte $03,$03,$3D,$BD,$BD,$BD,$C3,$FF  ; $43 brick-stud · / upper · empty over top
    .byte $02,$0E,$3E,$FE,$FE,$FE,$FE,$00  ; $44 brick-stud · / upper · empty over left
    .byte $02,$04,$2A,$54,$AA,$54,$AA,$00  ; $45 brick-stud · / upper · empty over right
    .byte $FC,$C0,$80,$00,$00,$00,$00,$00  ; $46 brick-stud · / upper · top over empty
    .byte $FE,$CE,$BE,$FE,$FE,$FE,$FE,$00  ; $47 brick-stud · / upper · top over left
    .byte $FE,$C4,$AA,$54,$AA,$54,$AA,$00  ; $48 brick-stud · / upper · top over right
    .byte $FC,$B0,$C0,$00,$00,$00,$00,$00  ; $49 brick-stud · / upper · left over empty
    .byte $FF,$B3,$FD,$BD,$BD,$BD,$C3,$FF  ; $4A brick-stud · / upper · left over top
    .byte $FE,$B4,$EA,$54,$AA,$54,$AA,$00  ; $4B brick-stud · / upper · left over right
    .byte $A8,$10,$80,$00,$00,$00,$00,$00  ; $4C brick-stud · / upper · right over empty
    .byte $AB,$13,$BD,$BD,$BD,$BD,$C3,$FF  ; $4D brick-stud · / upper · right over top
    .byte $AA,$1E,$BE,$FE,$FE,$FE,$FE,$00  ; $4E brick-stud · / upper · right over left
    .byte $00,$00,$00,$00,$01,$0D,$03,$FF  ; $4F brick-stud · / lower · empty over top
    .byte $00,$00,$00,$00,$02,$0E,$3E,$00  ; $50 brick-stud · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$04,$2A,$00  ; $51 brick-stud · / lower · empty over right
    .byte $FF,$C3,$BD,$BD,$BC,$B0,$C0,$00  ; $52 brick-stud · / lower · top over empty
    .byte $FF,$C3,$BD,$BD,$BE,$BE,$FE,$00  ; $53 brick-stud · / lower · top over left
    .byte $FF,$C3,$BD,$BD,$BE,$B4,$EA,$00  ; $54 brick-stud · / lower · top over right
    .byte $FE,$BE,$FE,$FE,$FC,$F0,$C0,$00  ; $55 brick-stud · / lower · left over empty
    .byte $FE,$BE,$FE,$FE,$FD,$FD,$C3,$FF  ; $56 brick-stud · / lower · left over top
    .byte $FE,$BE,$FE,$FE,$FE,$F4,$EA,$00  ; $57 brick-stud · / lower · left over right
    .byte $AA,$14,$AA,$54,$A8,$50,$80,$00  ; $58 brick-stud · / lower · right over empty
    .byte $AA,$14,$AA,$54,$A9,$5D,$83,$FF  ; $59 brick-stud · / lower · right over top
    .byte $AA,$14,$AA,$54,$AA,$5E,$BE,$00  ; $5A brick-stud · / lower · right over left
    .byte $C0,$C0,$BC,$BD,$BD,$BD,$C3,$FF  ; $5B brick-stud · \ upper · empty over top
    .byte $C0,$B0,$FC,$FE,$FE,$FE,$FE,$00  ; $5C brick-stud · \ upper · empty over left
    .byte $80,$10,$A8,$54,$AA,$54,$AA,$00  ; $5D brick-stud · \ upper · empty over right
    .byte $3F,$03,$01,$00,$00,$00,$00,$00  ; $5E brick-stud · \ upper · top over empty
    .byte $FF,$B3,$FD,$FE,$FE,$FE,$FE,$00  ; $5F brick-stud · \ upper · top over left
    .byte $BF,$13,$A9,$54,$AA,$54,$AA,$00  ; $60 brick-stud · \ upper · top over right
    .byte $3E,$0E,$02,$00,$00,$00,$00,$00  ; $61 brick-stud · \ upper · left over empty
    .byte $FE,$CE,$BE,$BD,$BD,$BD,$C3,$FF  ; $62 brick-stud · \ upper · left over top
    .byte $BE,$1E,$AA,$54,$AA,$54,$AA,$00  ; $63 brick-stud · \ upper · left over right
    .byte $2A,$04,$02,$00,$00,$00,$00,$00  ; $64 brick-stud · \ upper · right over empty
    .byte $EA,$C4,$BE,$BD,$BD,$BD,$C3,$FF  ; $65 brick-stud · \ upper · right over top
    .byte $EA,$B4,$FE,$FE,$FE,$FE,$FE,$00  ; $66 brick-stud · \ upper · right over left
    .byte $00,$00,$00,$00,$80,$B0,$C0,$FF  ; $67 brick-stud · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$00  ; $68 brick-stud · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$50,$A8,$00  ; $69 brick-stud · \ lower · empty over right
    .byte $FF,$C3,$BD,$BD,$3D,$0D,$03,$00  ; $6A brick-stud · \ lower · top over empty
    .byte $FF,$C3,$BD,$BD,$FD,$FD,$FF,$00  ; $6B brick-stud · \ lower · top over left
    .byte $FF,$C3,$BD,$BD,$BD,$5D,$AB,$00  ; $6C brick-stud · \ lower · top over right
    .byte $FE,$BE,$FE,$FE,$3E,$0E,$02,$00  ; $6D brick-stud · \ lower · left over empty
    .byte $FE,$BE,$FE,$FE,$BE,$BE,$C2,$FF  ; $6E brick-stud · \ lower · left over top
    .byte $FE,$BE,$FE,$FE,$BE,$5E,$AA,$00  ; $6F brick-stud · \ lower · left over right
    .byte $AA,$14,$AA,$54,$2A,$04,$02,$00  ; $70 brick-stud · \ lower · right over empty
    .byte $AA,$14,$AA,$54,$AA,$B4,$C2,$FF  ; $71 brick-stud · \ lower · right over top
    .byte $AA,$14,$AA,$54,$EA,$F4,$FE,$00  ; $72 brick-stud · \ lower · right over left
    .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$00  ; $73 brick-tile · top face
    .byte $FE,$BE,$FE,$FE,$FE,$FE,$FE,$00  ; $74 brick-tile · left face
    .byte $AA,$14,$AA,$54,$AA,$54,$AA,$00  ; $75 brick-tile · right face
    .byte $02,$0E,$3E,$FE,$FE,$FE,$FE,$00  ; $76 brick-tile · / upper · empty over top
    .byte $02,$0E,$3E,$FE,$FE,$FE,$FE,$00  ; $77 brick-tile · / upper · empty over left
    .byte $02,$04,$2A,$54,$AA,$54,$AA,$00  ; $78 brick-tile · / upper · empty over right
    .byte $FC,$F0,$C0,$00,$00,$00,$00,$00  ; $79 brick-tile · / upper · top over empty
    .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$00  ; $7A brick-tile · / upper · top over left
    .byte $FE,$F4,$EA,$54,$AA,$54,$AA,$00  ; $7B brick-tile · / upper · top over right
    .byte $FC,$B0,$C0,$00,$00,$00,$00,$00  ; $7C brick-tile · / upper · left over empty
    .byte $FE,$BE,$FE,$FE,$FE,$FE,$FE,$00  ; $7D brick-tile · / upper · left over top
    .byte $FE,$B4,$EA,$54,$AA,$54,$AA,$00  ; $7E brick-tile · / upper · left over right
    .byte $A8,$10,$80,$00,$00,$00,$00,$00  ; $7F brick-tile · / upper · right over empty
    .byte $AA,$1E,$BE,$FE,$FE,$FE,$FE,$00  ; $80 brick-tile · / upper · right over top
    .byte $AA,$1E,$BE,$FE,$FE,$FE,$FE,$00  ; $81 brick-tile · / upper · right over left
    .byte $00,$00,$00,$00,$02,$0E,$3E,$00  ; $82 brick-tile · / lower · empty over top
    .byte $00,$00,$00,$00,$02,$0E,$3E,$00  ; $83 brick-tile · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$04,$2A,$00  ; $84 brick-tile · / lower · empty over right
    .byte $FE,$FE,$FE,$FE,$FC,$F0,$C0,$00  ; $85 brick-tile · / lower · top over empty
    .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$00  ; $86 brick-tile · / lower · top over left
    .byte $FE,$FE,$FE,$FE,$FE,$F4,$EA,$00  ; $87 brick-tile · / lower · top over right
    .byte $FE,$BE,$FE,$FE,$FC,$F0,$C0,$00  ; $88 brick-tile · / lower · left over empty
    .byte $FE,$BE,$FE,$FE,$FE,$FE,$FE,$00  ; $89 brick-tile · / lower · left over top
    .byte $FE,$BE,$FE,$FE,$FE,$F4,$EA,$00  ; $8A brick-tile · / lower · left over right
    .byte $AA,$14,$AA,$54,$A8,$50,$80,$00  ; $8B brick-tile · / lower · right over empty
    .byte $AA,$14,$AA,$54,$AA,$5E,$BE,$00  ; $8C brick-tile · / lower · right over top
    .byte $AA,$14,$AA,$54,$AA,$5E,$BE,$00  ; $8D brick-tile · / lower · right over left
    .byte $C0,$F0,$FC,$FE,$FE,$FE,$FE,$00  ; $8E brick-tile · \ upper · empty over top
    .byte $C0,$B0,$FC,$FE,$FE,$FE,$FE,$00  ; $8F brick-tile · \ upper · empty over left
    .byte $80,$10,$A8,$54,$AA,$54,$AA,$00  ; $90 brick-tile · \ upper · empty over right
    .byte $3E,$0E,$02,$00,$00,$00,$00,$00  ; $91 brick-tile · \ upper · top over empty
    .byte $FE,$BE,$FE,$FE,$FE,$FE,$FE,$00  ; $92 brick-tile · \ upper · top over left
    .byte $BE,$1E,$AA,$54,$AA,$54,$AA,$00  ; $93 brick-tile · \ upper · top over right
    .byte $3E,$0E,$02,$00,$00,$00,$00,$00  ; $94 brick-tile · \ upper · left over empty
    .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$00  ; $95 brick-tile · \ upper · left over top
    .byte $BE,$1E,$AA,$54,$AA,$54,$AA,$00  ; $96 brick-tile · \ upper · left over right
    .byte $2A,$04,$02,$00,$00,$00,$00,$00  ; $97 brick-tile · \ upper · right over empty
    .byte $EA,$F4,$FE,$FE,$FE,$FE,$FE,$00  ; $98 brick-tile · \ upper · right over top
    .byte $EA,$B4,$FE,$FE,$FE,$FE,$FE,$00  ; $99 brick-tile · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$00  ; $9A brick-tile · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$00  ; $9B brick-tile · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$50,$A8,$00  ; $9C brick-tile · \ lower · empty over right
    .byte $FE,$FE,$FE,$FE,$3E,$0E,$02,$00  ; $9D brick-tile · \ lower · top over empty
    .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$00  ; $9E brick-tile · \ lower · top over left
    .byte $FE,$FE,$FE,$FE,$BE,$5E,$AA,$00  ; $9F brick-tile · \ lower · top over right
    .byte $FE,$BE,$FE,$FE,$3E,$0E,$02,$00  ; $A0 brick-tile · \ lower · left over empty
    .byte $FE,$BE,$FE,$FE,$FE,$FE,$FE,$00  ; $A1 brick-tile · \ lower · left over top
    .byte $FE,$BE,$FE,$FE,$BE,$5E,$AA,$00  ; $A2 brick-tile · \ lower · left over right
    .byte $AA,$14,$AA,$54,$2A,$04,$02,$00  ; $A3 brick-tile · \ lower · right over empty
    .byte $AA,$14,$AA,$54,$EA,$F4,$FE,$00  ; $A4 brick-tile · \ lower · right over top
    .byte $AA,$14,$AA,$54,$EA,$F4,$FE,$00  ; $A5 brick-tile · \ lower · right over left
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
