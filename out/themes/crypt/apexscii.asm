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
    .byte $FE,$FE,$BE,$00,$EF,$EF,$ED,$00  ; $40 crypt-stone · top face
    .byte $FE,$BF,$FE,$00,$EF,$ED,$EF,$00  ; $41 crypt-stone · left face
    .byte $AA,$15,$AA,$00,$AA,$45,$AA,$00  ; $42 crypt-stone · right face
    .byte $02,$0E,$3E,$00,$EF,$EF,$ED,$00  ; $43 crypt-stone · / upper · empty over top
    .byte $02,$0F,$3E,$00,$EF,$ED,$EF,$00  ; $44 crypt-stone · / upper · empty over left
    .byte $02,$05,$2A,$00,$AA,$45,$AA,$00  ; $45 crypt-stone · / upper · empty over right
    .byte $FC,$F0,$80,$00,$00,$00,$00,$00  ; $46 crypt-stone · / upper · top over empty
    .byte $FE,$FF,$BE,$00,$EF,$ED,$EF,$00  ; $47 crypt-stone · / upper · top over left
    .byte $FE,$F5,$AA,$00,$AA,$45,$AA,$00  ; $48 crypt-stone · / upper · top over right
    .byte $FC,$B0,$C0,$00,$00,$00,$00,$00  ; $49 crypt-stone · / upper · left over empty
    .byte $FE,$BE,$FE,$00,$EF,$EF,$ED,$00  ; $4A crypt-stone · / upper · left over top
    .byte $FE,$B5,$EA,$00,$AA,$45,$AA,$00  ; $4B crypt-stone · / upper · left over right
    .byte $A8,$10,$80,$00,$00,$00,$00,$00  ; $4C crypt-stone · / upper · right over empty
    .byte $AA,$1E,$BE,$00,$EF,$EF,$ED,$00  ; $4D crypt-stone · / upper · right over top
    .byte $AA,$1F,$BE,$00,$EF,$ED,$EF,$00  ; $4E crypt-stone · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0F,$2D,$00  ; $4F crypt-stone · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$0D,$2F,$00  ; $50 crypt-stone · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$05,$2A,$00  ; $51 crypt-stone · / lower · empty over right
    .byte $FE,$FE,$BE,$00,$EC,$E0,$C0,$00  ; $52 crypt-stone · / lower · top over empty
    .byte $FE,$FE,$BE,$00,$EF,$ED,$EF,$00  ; $53 crypt-stone · / lower · top over left
    .byte $FE,$FE,$BE,$00,$EE,$E5,$EA,$00  ; $54 crypt-stone · / lower · top over right
    .byte $FE,$BF,$FE,$00,$EC,$E0,$C0,$00  ; $55 crypt-stone · / lower · left over empty
    .byte $FE,$BF,$FE,$00,$EF,$EF,$ED,$00  ; $56 crypt-stone · / lower · left over top
    .byte $FE,$BF,$FE,$00,$EE,$E5,$EA,$00  ; $57 crypt-stone · / lower · left over right
    .byte $AA,$15,$AA,$00,$A8,$40,$80,$00  ; $58 crypt-stone · / lower · right over empty
    .byte $AA,$15,$AA,$00,$AB,$4F,$AD,$00  ; $59 crypt-stone · / lower · right over top
    .byte $AA,$15,$AA,$00,$AB,$4D,$AF,$00  ; $5A crypt-stone · / lower · right over left
    .byte $C0,$F0,$BC,$00,$EF,$EF,$ED,$00  ; $5B crypt-stone · \ upper · empty over top
    .byte $C0,$B0,$FC,$00,$EF,$ED,$EF,$00  ; $5C crypt-stone · \ upper · empty over left
    .byte $80,$10,$A8,$00,$AA,$45,$AA,$00  ; $5D crypt-stone · \ upper · empty over right
    .byte $3E,$0E,$02,$00,$00,$00,$00,$00  ; $5E crypt-stone · \ upper · top over empty
    .byte $FE,$BE,$FE,$00,$EF,$ED,$EF,$00  ; $5F crypt-stone · \ upper · top over left
    .byte $BE,$1E,$AA,$00,$AA,$45,$AA,$00  ; $60 crypt-stone · \ upper · top over right
    .byte $3E,$0F,$02,$00,$00,$00,$00,$00  ; $61 crypt-stone · \ upper · left over empty
    .byte $FE,$FF,$BE,$00,$EF,$EF,$ED,$00  ; $62 crypt-stone · \ upper · left over top
    .byte $BE,$1F,$AA,$00,$AA,$45,$AA,$00  ; $63 crypt-stone · \ upper · left over right
    .byte $2A,$05,$02,$00,$00,$00,$00,$00  ; $64 crypt-stone · \ upper · right over empty
    .byte $EA,$F5,$BE,$00,$EF,$EF,$ED,$00  ; $65 crypt-stone · \ upper · right over top
    .byte $EA,$B5,$FE,$00,$EF,$ED,$EF,$00  ; $66 crypt-stone · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$E0,$EC,$00  ; $67 crypt-stone · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$E0,$EC,$00  ; $68 crypt-stone · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$40,$A8,$00  ; $69 crypt-stone · \ lower · empty over right
    .byte $FE,$FE,$BE,$00,$2F,$0F,$01,$00  ; $6A crypt-stone · \ lower · top over empty
    .byte $FE,$FE,$BE,$00,$EF,$EF,$ED,$00  ; $6B crypt-stone · \ lower · top over left
    .byte $FE,$FE,$BE,$00,$AF,$4F,$A9,$00  ; $6C crypt-stone · \ lower · top over right
    .byte $FE,$BF,$FE,$00,$2F,$0D,$03,$00  ; $6D crypt-stone · \ lower · left over empty
    .byte $FE,$BF,$FE,$00,$EF,$ED,$EF,$00  ; $6E crypt-stone · \ lower · left over top
    .byte $FE,$BF,$FE,$00,$AF,$4D,$AB,$00  ; $6F crypt-stone · \ lower · left over right
    .byte $AA,$15,$AA,$00,$2A,$05,$02,$00  ; $70 crypt-stone · \ lower · right over empty
    .byte $AA,$15,$AA,$00,$EA,$E5,$EE,$00  ; $71 crypt-stone · \ lower · right over top
    .byte $AA,$15,$AA,$00,$EA,$E5,$EE,$00  ; $72 crypt-stone · \ lower · right over left
    .byte $BE,$FE,$EC,$00,$ED,$AF,$EF,$00  ; $73 crypt-moss · top face
    .byte $BE,$BA,$FA,$00,$EB,$EB,$EF,$00  ; $74 crypt-moss · left face
    .byte $AA,$10,$AA,$00,$AA,$41,$AA,$00  ; $75 crypt-moss · right face
    .byte $02,$0E,$2C,$00,$ED,$AF,$EF,$00  ; $76 crypt-moss · / upper · empty over top
    .byte $02,$0A,$3A,$00,$EB,$EB,$EF,$00  ; $77 crypt-moss · / upper · empty over left
    .byte $02,$00,$2A,$00,$AA,$41,$AA,$00  ; $78 crypt-moss · / upper · empty over right
    .byte $BC,$F0,$C0,$00,$00,$00,$00,$00  ; $79 crypt-moss · / upper · top over empty
    .byte $BE,$FA,$FA,$00,$EB,$EB,$EF,$00  ; $7A crypt-moss · / upper · top over left
    .byte $BE,$F0,$EA,$00,$AA,$41,$AA,$00  ; $7B crypt-moss · / upper · top over right
    .byte $BC,$B0,$C0,$00,$00,$00,$00,$00  ; $7C crypt-moss · / upper · left over empty
    .byte $BE,$BE,$EC,$00,$ED,$AF,$EF,$00  ; $7D crypt-moss · / upper · left over top
    .byte $BE,$B0,$EA,$00,$AA,$41,$AA,$00  ; $7E crypt-moss · / upper · left over right
    .byte $A8,$10,$80,$00,$00,$00,$00,$00  ; $7F crypt-moss · / upper · right over empty
    .byte $AA,$1E,$AC,$00,$ED,$AF,$EF,$00  ; $80 crypt-moss · / upper · right over top
    .byte $AA,$1A,$BA,$00,$EB,$EB,$EF,$00  ; $81 crypt-moss · / upper · right over left
    .byte $00,$00,$00,$00,$01,$0F,$2F,$00  ; $82 crypt-moss · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$0B,$2F,$00  ; $83 crypt-moss · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$01,$2A,$00  ; $84 crypt-moss · / lower · empty over right
    .byte $BE,$FE,$EC,$00,$EC,$A0,$C0,$00  ; $85 crypt-moss · / lower · top over empty
    .byte $BE,$FE,$EC,$00,$EF,$AB,$EF,$00  ; $86 crypt-moss · / lower · top over left
    .byte $BE,$FE,$EC,$00,$EE,$A1,$EA,$00  ; $87 crypt-moss · / lower · top over right
    .byte $BE,$BA,$FA,$00,$E8,$E0,$C0,$00  ; $88 crypt-moss · / lower · left over empty
    .byte $BE,$BA,$FA,$00,$E9,$EF,$EF,$00  ; $89 crypt-moss · / lower · left over top
    .byte $BE,$BA,$FA,$00,$EA,$E1,$EA,$00  ; $8A crypt-moss · / lower · left over right
    .byte $AA,$10,$AA,$00,$A8,$40,$80,$00  ; $8B crypt-moss · / lower · right over empty
    .byte $AA,$10,$AA,$00,$A9,$4F,$AF,$00  ; $8C crypt-moss · / lower · right over top
    .byte $AA,$10,$AA,$00,$AB,$4B,$AF,$00  ; $8D crypt-moss · / lower · right over left
    .byte $80,$F0,$EC,$00,$ED,$AF,$EF,$00  ; $8E crypt-moss · \ upper · empty over top
    .byte $80,$B0,$F8,$00,$EB,$EB,$EF,$00  ; $8F crypt-moss · \ upper · empty over left
    .byte $80,$10,$A8,$00,$AA,$41,$AA,$00  ; $90 crypt-moss · \ upper · empty over right
    .byte $3E,$0E,$00,$00,$00,$00,$00,$00  ; $91 crypt-moss · \ upper · top over empty
    .byte $BE,$BE,$F8,$00,$EB,$EB,$EF,$00  ; $92 crypt-moss · \ upper · top over left
    .byte $BE,$1E,$A8,$00,$AA,$41,$AA,$00  ; $93 crypt-moss · \ upper · top over right
    .byte $3E,$0A,$02,$00,$00,$00,$00,$00  ; $94 crypt-moss · \ upper · left over empty
    .byte $BE,$FA,$EE,$00,$ED,$AF,$EF,$00  ; $95 crypt-moss · \ upper · left over top
    .byte $BE,$1A,$AA,$00,$AA,$41,$AA,$00  ; $96 crypt-moss · \ upper · left over right
    .byte $2A,$00,$02,$00,$00,$00,$00,$00  ; $97 crypt-moss · \ upper · right over empty
    .byte $AA,$F0,$EE,$00,$ED,$AF,$EF,$00  ; $98 crypt-moss · \ upper · right over top
    .byte $AA,$B0,$FA,$00,$EB,$EB,$EF,$00  ; $99 crypt-moss · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$A0,$EC,$00  ; $9A crypt-moss · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$E0,$EC,$00  ; $9B crypt-moss · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$40,$A8,$00  ; $9C crypt-moss · \ lower · empty over right
    .byte $BE,$FE,$EC,$00,$2D,$0F,$03,$00  ; $9D crypt-moss · \ lower · top over empty
    .byte $BE,$FE,$EC,$00,$ED,$EF,$EF,$00  ; $9E crypt-moss · \ lower · top over left
    .byte $BE,$FE,$EC,$00,$AD,$4F,$AB,$00  ; $9F crypt-moss · \ lower · top over right
    .byte $BE,$BA,$FA,$00,$2B,$0B,$03,$00  ; $A0 crypt-moss · \ lower · left over empty
    .byte $BE,$BA,$FA,$00,$EB,$AB,$EF,$00  ; $A1 crypt-moss · \ lower · left over top
    .byte $BE,$BA,$FA,$00,$AB,$4B,$AB,$00  ; $A2 crypt-moss · \ lower · left over right
    .byte $AA,$10,$AA,$00,$2A,$01,$02,$00  ; $A3 crypt-moss · \ lower · right over empty
    .byte $AA,$10,$AA,$00,$EA,$A1,$EE,$00  ; $A4 crypt-moss · \ lower · right over top
    .byte $AA,$10,$AA,$00,$EA,$E1,$EE,$00  ; $A5 crypt-moss · \ lower · right over left
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
