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
    .byte $FE,$FE,$BE,$00,$EF,$EF,$ED,$00  ; $40 outlined crypt-stone · top face
    .byte $FE,$BF,$FE,$00,$EF,$ED,$EF,$00  ; $41 outlined crypt-stone · left face
    .byte $AA,$15,$AA,$00,$AA,$45,$AA,$00  ; $42 outlined crypt-stone · right face
    .byte $02,$0E,$3E,$00,$EF,$EF,$ED,$00  ; $43 outlined crypt-stone · / upper · empty over top
    .byte $02,$0F,$3E,$00,$EF,$ED,$EF,$00  ; $44 outlined crypt-stone · / upper · empty over left
    .byte $02,$05,$2A,$00,$AA,$45,$AA,$00  ; $45 outlined crypt-stone · / upper · empty over right
    .byte $FC,$F0,$80,$00,$00,$00,$00,$00  ; $46 outlined crypt-stone · / upper · top over empty
    .byte $FE,$F3,$8E,$00,$EF,$ED,$EF,$00  ; $47 outlined crypt-stone · / upper · top over left
    .byte $FE,$F1,$8A,$00,$AA,$45,$AA,$00  ; $48 outlined crypt-stone · / upper · top over right
    .byte $FC,$B0,$C0,$00,$00,$00,$00,$00  ; $49 outlined crypt-stone · / upper · left over empty
    .byte $FE,$B2,$CE,$00,$EF,$EF,$ED,$00  ; $4A outlined crypt-stone · / upper · left over top
    .byte $FE,$B1,$CA,$00,$AA,$45,$AA,$00  ; $4B outlined crypt-stone · / upper · left over right
    .byte $A8,$10,$80,$00,$00,$00,$00,$00  ; $4C outlined crypt-stone · / upper · right over empty
    .byte $AA,$12,$8E,$00,$EF,$EF,$ED,$00  ; $4D outlined crypt-stone · / upper · right over top
    .byte $AA,$13,$8E,$00,$EF,$ED,$EF,$00  ; $4E outlined crypt-stone · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0F,$2D,$00  ; $4F outlined crypt-stone · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$0D,$2F,$00  ; $50 outlined crypt-stone · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$05,$2A,$00  ; $51 outlined crypt-stone · / lower · empty over right
    .byte $FE,$FE,$BE,$00,$EC,$E0,$C0,$00  ; $52 outlined crypt-stone · / lower · top over empty
    .byte $FE,$FE,$BE,$00,$EC,$E1,$CF,$00  ; $53 outlined crypt-stone · / lower · top over left
    .byte $FE,$FE,$BE,$00,$EC,$E1,$CA,$00  ; $54 outlined crypt-stone · / lower · top over right
    .byte $FE,$BF,$FE,$00,$EC,$E0,$C0,$00  ; $55 outlined crypt-stone · / lower · left over empty
    .byte $FE,$BF,$FE,$00,$EC,$E3,$CD,$00  ; $56 outlined crypt-stone · / lower · left over top
    .byte $FE,$BF,$FE,$00,$EC,$E1,$CA,$00  ; $57 outlined crypt-stone · / lower · left over right
    .byte $AA,$15,$AA,$00,$A8,$40,$80,$00  ; $58 outlined crypt-stone · / lower · right over empty
    .byte $AA,$15,$AA,$00,$A8,$43,$8D,$00  ; $59 outlined crypt-stone · / lower · right over top
    .byte $AA,$15,$AA,$00,$A8,$41,$8F,$00  ; $5A outlined crypt-stone · / lower · right over left
    .byte $C0,$F0,$BC,$00,$EF,$EF,$ED,$00  ; $5B outlined crypt-stone · \ upper · empty over top
    .byte $C0,$B0,$FC,$00,$EF,$ED,$EF,$00  ; $5C outlined crypt-stone · \ upper · empty over left
    .byte $80,$10,$A8,$00,$AA,$45,$AA,$00  ; $5D outlined crypt-stone · \ upper · empty over right
    .byte $3E,$0E,$02,$00,$00,$00,$00,$00  ; $5E outlined crypt-stone · \ upper · top over empty
    .byte $FE,$8E,$F2,$00,$EF,$ED,$EF,$00  ; $5F outlined crypt-stone · \ upper · top over left
    .byte $BE,$0E,$A2,$00,$AA,$45,$AA,$00  ; $60 outlined crypt-stone · \ upper · top over right
    .byte $3E,$0F,$02,$00,$00,$00,$00,$00  ; $61 outlined crypt-stone · \ upper · left over empty
    .byte $FE,$CF,$B2,$00,$EF,$EF,$ED,$00  ; $62 outlined crypt-stone · \ upper · left over top
    .byte $BE,$0F,$A2,$00,$AA,$45,$AA,$00  ; $63 outlined crypt-stone · \ upper · left over right
    .byte $2A,$05,$02,$00,$00,$00,$00,$00  ; $64 outlined crypt-stone · \ upper · right over empty
    .byte $EA,$C5,$B2,$00,$EF,$EF,$ED,$00  ; $65 outlined crypt-stone · \ upper · right over top
    .byte $EA,$85,$F2,$00,$EF,$ED,$EF,$00  ; $66 outlined crypt-stone · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$E0,$EC,$00  ; $67 outlined crypt-stone · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$E0,$EC,$00  ; $68 outlined crypt-stone · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$40,$A8,$00  ; $69 outlined crypt-stone · \ lower · empty over right
    .byte $FE,$FE,$BE,$00,$2F,$0F,$01,$00  ; $6A outlined crypt-stone · \ lower · top over empty
    .byte $FE,$FE,$BE,$00,$2F,$CF,$E1,$00  ; $6B outlined crypt-stone · \ lower · top over left
    .byte $FE,$FE,$BE,$00,$2F,$4F,$A1,$00  ; $6C outlined crypt-stone · \ lower · top over right
    .byte $FE,$BF,$FE,$00,$2F,$0D,$03,$00  ; $6D outlined crypt-stone · \ lower · left over empty
    .byte $FE,$BF,$FE,$00,$2F,$CD,$E3,$00  ; $6E outlined crypt-stone · \ lower · left over top
    .byte $FE,$BF,$FE,$00,$2F,$4D,$A3,$00  ; $6F outlined crypt-stone · \ lower · left over right
    .byte $AA,$15,$AA,$00,$2A,$05,$02,$00  ; $70 outlined crypt-stone · \ lower · right over empty
    .byte $AA,$15,$AA,$00,$2A,$C5,$E2,$00  ; $71 outlined crypt-stone · \ lower · right over top
    .byte $AA,$15,$AA,$00,$2A,$C5,$E2,$00  ; $72 outlined crypt-stone · \ lower · right over left
    .byte $BE,$FE,$EC,$00,$ED,$AF,$EF,$00  ; $73 outlined crypt-moss · top face
    .byte $BE,$BA,$FA,$00,$EB,$EB,$EF,$00  ; $74 outlined crypt-moss · left face
    .byte $AA,$10,$AA,$00,$AA,$41,$AA,$00  ; $75 outlined crypt-moss · right face
    .byte $02,$0E,$2C,$00,$ED,$AF,$EF,$00  ; $76 outlined crypt-moss · / upper · empty over top
    .byte $02,$0A,$3A,$00,$EB,$EB,$EF,$00  ; $77 outlined crypt-moss · / upper · empty over left
    .byte $02,$00,$2A,$00,$AA,$41,$AA,$00  ; $78 outlined crypt-moss · / upper · empty over right
    .byte $BC,$F0,$C0,$00,$00,$00,$00,$00  ; $79 outlined crypt-moss · / upper · top over empty
    .byte $BE,$F2,$CA,$00,$EB,$EB,$EF,$00  ; $7A outlined crypt-moss · / upper · top over left
    .byte $BE,$F0,$CA,$00,$AA,$41,$AA,$00  ; $7B outlined crypt-moss · / upper · top over right
    .byte $BC,$B0,$C0,$00,$00,$00,$00,$00  ; $7C outlined crypt-moss · / upper · left over empty
    .byte $BE,$B2,$CC,$00,$ED,$AF,$EF,$00  ; $7D outlined crypt-moss · / upper · left over top
    .byte $BE,$B0,$CA,$00,$AA,$41,$AA,$00  ; $7E outlined crypt-moss · / upper · left over right
    .byte $A8,$10,$80,$00,$00,$00,$00,$00  ; $7F outlined crypt-moss · / upper · right over empty
    .byte $AA,$12,$8C,$00,$ED,$AF,$EF,$00  ; $80 outlined crypt-moss · / upper · right over top
    .byte $AA,$12,$8A,$00,$EB,$EB,$EF,$00  ; $81 outlined crypt-moss · / upper · right over left
    .byte $00,$00,$00,$00,$01,$0F,$2F,$00  ; $82 outlined crypt-moss · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$0B,$2F,$00  ; $83 outlined crypt-moss · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$01,$2A,$00  ; $84 outlined crypt-moss · / lower · empty over right
    .byte $BE,$FE,$EC,$00,$EC,$A0,$C0,$00  ; $85 outlined crypt-moss · / lower · top over empty
    .byte $BE,$FE,$EC,$00,$EC,$A3,$CF,$00  ; $86 outlined crypt-moss · / lower · top over left
    .byte $BE,$FE,$EC,$00,$EC,$A1,$CA,$00  ; $87 outlined crypt-moss · / lower · top over right
    .byte $BE,$BA,$FA,$00,$E8,$E0,$C0,$00  ; $88 outlined crypt-moss · / lower · left over empty
    .byte $BE,$BA,$FA,$00,$E8,$E3,$CF,$00  ; $89 outlined crypt-moss · / lower · left over top
    .byte $BE,$BA,$FA,$00,$E8,$E1,$CA,$00  ; $8A outlined crypt-moss · / lower · left over right
    .byte $AA,$10,$AA,$00,$A8,$40,$80,$00  ; $8B outlined crypt-moss · / lower · right over empty
    .byte $AA,$10,$AA,$00,$A8,$43,$8F,$00  ; $8C outlined crypt-moss · / lower · right over top
    .byte $AA,$10,$AA,$00,$A8,$43,$8F,$00  ; $8D outlined crypt-moss · / lower · right over left
    .byte $80,$F0,$EC,$00,$ED,$AF,$EF,$00  ; $8E outlined crypt-moss · \ upper · empty over top
    .byte $80,$B0,$F8,$00,$EB,$EB,$EF,$00  ; $8F outlined crypt-moss · \ upper · empty over left
    .byte $80,$10,$A8,$00,$AA,$41,$AA,$00  ; $90 outlined crypt-moss · \ upper · empty over right
    .byte $3E,$0E,$00,$00,$00,$00,$00,$00  ; $91 outlined crypt-moss · \ upper · top over empty
    .byte $BE,$8E,$F0,$00,$EB,$EB,$EF,$00  ; $92 outlined crypt-moss · \ upper · top over left
    .byte $BE,$0E,$A0,$00,$AA,$41,$AA,$00  ; $93 outlined crypt-moss · \ upper · top over right
    .byte $3E,$0A,$02,$00,$00,$00,$00,$00  ; $94 outlined crypt-moss · \ upper · left over empty
    .byte $BE,$CA,$E2,$00,$ED,$AF,$EF,$00  ; $95 outlined crypt-moss · \ upper · left over top
    .byte $BE,$0A,$A2,$00,$AA,$41,$AA,$00  ; $96 outlined crypt-moss · \ upper · left over right
    .byte $2A,$00,$02,$00,$00,$00,$00,$00  ; $97 outlined crypt-moss · \ upper · right over empty
    .byte $AA,$C0,$E2,$00,$ED,$AF,$EF,$00  ; $98 outlined crypt-moss · \ upper · right over top
    .byte $AA,$80,$F2,$00,$EB,$EB,$EF,$00  ; $99 outlined crypt-moss · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$A0,$EC,$00  ; $9A outlined crypt-moss · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$E0,$EC,$00  ; $9B outlined crypt-moss · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$40,$A8,$00  ; $9C outlined crypt-moss · \ lower · empty over right
    .byte $BE,$FE,$EC,$00,$2D,$0F,$03,$00  ; $9D outlined crypt-moss · \ lower · top over empty
    .byte $BE,$FE,$EC,$00,$2D,$CF,$E3,$00  ; $9E outlined crypt-moss · \ lower · top over left
    .byte $BE,$FE,$EC,$00,$2D,$4F,$A3,$00  ; $9F outlined crypt-moss · \ lower · top over right
    .byte $BE,$BA,$FA,$00,$2B,$0B,$03,$00  ; $A0 outlined crypt-moss · \ lower · left over empty
    .byte $BE,$BA,$FA,$00,$2B,$8B,$E3,$00  ; $A1 outlined crypt-moss · \ lower · left over top
    .byte $BE,$BA,$FA,$00,$2B,$4B,$A3,$00  ; $A2 outlined crypt-moss · \ lower · left over right
    .byte $AA,$10,$AA,$00,$2A,$01,$02,$00  ; $A3 outlined crypt-moss · \ lower · right over empty
    .byte $AA,$10,$AA,$00,$2A,$81,$E2,$00  ; $A4 outlined crypt-moss · \ lower · right over top
    .byte $AA,$10,$AA,$00,$2A,$C1,$E2,$00  ; $A5 outlined crypt-moss · \ lower · right over left
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
