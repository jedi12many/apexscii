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
    .byte $FF,$DF,$AF,$FF,$FD,$FA,$FF,$FF  ; $40 outlined forest-grass · top face
    .byte $AA,$5D,$BE,$5D,$AA,$55,$EA,$D5  ; $41 outlined forest-grass · left face
    .byte $AA,$55,$AA,$55,$AA,$55,$AA,$55  ; $42 outlined forest-grass · right face
    .byte $03,$0F,$2F,$FF,$FD,$FA,$FF,$FF  ; $43 outlined forest-grass · / upper · empty over top
    .byte $02,$0D,$3E,$5D,$AA,$55,$EA,$D5  ; $44 outlined forest-grass · / upper · empty over left
    .byte $02,$05,$2A,$55,$AA,$55,$AA,$55  ; $45 outlined forest-grass · / upper · empty over right
    .byte $FC,$D0,$80,$00,$00,$00,$00,$00  ; $46 outlined forest-grass · / upper · top over empty
    .byte $FE,$D1,$8E,$1D,$AA,$55,$EA,$D5  ; $47 outlined forest-grass · / upper · top over left
    .byte $FE,$D1,$8A,$15,$AA,$55,$AA,$55  ; $48 outlined forest-grass · / upper · top over right
    .byte $A8,$50,$80,$00,$00,$00,$00,$00  ; $49 outlined forest-grass · / upper · left over empty
    .byte $AB,$53,$8F,$3F,$FD,$FA,$FF,$FF  ; $4A outlined forest-grass · / upper · left over top
    .byte $AA,$51,$8A,$15,$AA,$55,$AA,$55  ; $4B outlined forest-grass · / upper · left over right
    .byte $A8,$50,$80,$00,$00,$00,$00,$00  ; $4C outlined forest-grass · / upper · right over empty
    .byte $AB,$53,$8F,$3F,$FD,$FA,$FF,$FF  ; $4D outlined forest-grass · / upper · right over top
    .byte $AA,$51,$8E,$1D,$AA,$55,$EA,$D5  ; $4E outlined forest-grass · / upper · right over left
    .byte $00,$00,$00,$00,$01,$0A,$3F,$FF  ; $4F outlined forest-grass · / lower · empty over top
    .byte $00,$00,$00,$00,$02,$05,$2A,$D5  ; $50 outlined forest-grass · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$05,$2A,$55  ; $51 outlined forest-grass · / lower · empty over right
    .byte $FF,$DF,$AF,$FF,$FC,$F0,$C0,$00  ; $52 outlined forest-grass · / lower · top over empty
    .byte $FF,$DF,$AF,$FF,$FC,$F1,$CA,$15  ; $53 outlined forest-grass · / lower · top over left
    .byte $FF,$DF,$AF,$FF,$FC,$F1,$CA,$15  ; $54 outlined forest-grass · / lower · top over right
    .byte $AA,$5D,$BE,$5D,$A8,$50,$C0,$00  ; $55 outlined forest-grass · / lower · left over empty
    .byte $AA,$5D,$BE,$5D,$A8,$52,$CF,$3F  ; $56 outlined forest-grass · / lower · left over top
    .byte $AA,$5D,$BE,$5D,$A8,$51,$CA,$15  ; $57 outlined forest-grass · / lower · left over right
    .byte $AA,$55,$AA,$55,$A8,$50,$80,$00  ; $58 outlined forest-grass · / lower · right over empty
    .byte $AA,$55,$AA,$55,$A8,$52,$8F,$3F  ; $59 outlined forest-grass · / lower · right over top
    .byte $AA,$55,$AA,$55,$A8,$51,$8A,$15  ; $5A outlined forest-grass · / lower · right over left
    .byte $C0,$D0,$AC,$FF,$FD,$FA,$FF,$FF  ; $5B outlined forest-grass · \ upper · empty over top
    .byte $80,$50,$BC,$5D,$AA,$55,$EA,$D5  ; $5C outlined forest-grass · \ upper · empty over left
    .byte $80,$50,$A8,$55,$AA,$55,$AA,$55  ; $5D outlined forest-grass · \ upper · empty over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $5E outlined forest-grass · \ upper · top over empty
    .byte $BF,$4F,$B3,$5C,$AA,$55,$EA,$D5  ; $5F outlined forest-grass · \ upper · top over left
    .byte $BF,$4F,$A3,$54,$AA,$55,$AA,$55  ; $60 outlined forest-grass · \ upper · top over right
    .byte $2A,$0D,$02,$00,$00,$00,$00,$00  ; $61 outlined forest-grass · \ upper · left over empty
    .byte $EA,$CD,$A2,$FC,$FD,$FA,$FF,$FF  ; $62 outlined forest-grass · \ upper · left over top
    .byte $AA,$4D,$A2,$54,$AA,$55,$AA,$55  ; $63 outlined forest-grass · \ upper · left over right
    .byte $2A,$05,$02,$00,$00,$00,$00,$00  ; $64 outlined forest-grass · \ upper · right over empty
    .byte $EA,$C5,$A2,$FC,$FD,$FA,$FF,$FF  ; $65 outlined forest-grass · \ upper · right over top
    .byte $AA,$45,$B2,$5C,$AA,$55,$EA,$D5  ; $66 outlined forest-grass · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$FF  ; $67 outlined forest-grass · \ lower · empty over top
    .byte $00,$00,$00,$00,$80,$50,$E8,$D5  ; $68 outlined forest-grass · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$50,$A8,$55  ; $69 outlined forest-grass · \ lower · empty over right
    .byte $FF,$DF,$AF,$FF,$3D,$0A,$03,$00  ; $6A outlined forest-grass · \ lower · top over empty
    .byte $FF,$DF,$AF,$FF,$3D,$4A,$E3,$D4  ; $6B outlined forest-grass · \ lower · top over left
    .byte $FF,$DF,$AF,$FF,$3D,$4A,$A3,$54  ; $6C outlined forest-grass · \ lower · top over right
    .byte $AA,$5D,$BE,$5D,$2A,$05,$02,$00  ; $6D outlined forest-grass · \ lower · left over empty
    .byte $AA,$5D,$BE,$5D,$2A,$C5,$F2,$FC  ; $6E outlined forest-grass · \ lower · left over top
    .byte $AA,$5D,$BE,$5D,$2A,$45,$A2,$54  ; $6F outlined forest-grass · \ lower · left over right
    .byte $AA,$55,$AA,$55,$2A,$05,$02,$00  ; $70 outlined forest-grass · \ lower · right over empty
    .byte $AA,$55,$AA,$55,$2A,$C5,$F2,$FC  ; $71 outlined forest-grass · \ lower · right over top
    .byte $AA,$55,$AA,$55,$2A,$45,$E2,$D4  ; $72 outlined forest-grass · \ lower · right over left
    .byte $FE,$FE,$00,$EF,$EF,$00,$FB,$00  ; $73 outlined forest-wood · top face
    .byte $B7,$B7,$BB,$BB,$D7,$D7,$B5,$B7  ; $74 outlined forest-wood · left face
    .byte $A2,$15,$AA,$11,$82,$55,$A0,$15  ; $75 outlined forest-wood · right face
    .byte $02,$0E,$00,$EF,$EF,$00,$FB,$00  ; $76 outlined forest-wood · / upper · empty over top
    .byte $03,$07,$3B,$BB,$D7,$D7,$B5,$B7  ; $77 outlined forest-wood · / upper · empty over left
    .byte $02,$05,$2A,$11,$82,$55,$A0,$15  ; $78 outlined forest-wood · / upper · empty over right
    .byte $FC,$F0,$00,$00,$00,$00,$00,$00  ; $79 outlined forest-wood · / upper · top over empty
    .byte $FF,$F3,$0B,$3B,$D7,$D7,$B5,$B7  ; $7A outlined forest-wood · / upper · top over left
    .byte $FE,$F1,$0A,$11,$82,$55,$A0,$15  ; $7B outlined forest-wood · / upper · top over right
    .byte $B4,$B0,$80,$00,$00,$00,$00,$00  ; $7C outlined forest-wood · / upper · left over empty
    .byte $B6,$B2,$80,$2F,$EF,$00,$FB,$00  ; $7D outlined forest-wood · / upper · left over top
    .byte $B6,$B1,$8A,$11,$82,$55,$A0,$15  ; $7E outlined forest-wood · / upper · left over right
    .byte $A0,$10,$80,$00,$00,$00,$00,$00  ; $7F outlined forest-wood · / upper · right over empty
    .byte $A2,$12,$80,$2F,$EF,$00,$FB,$00  ; $80 outlined forest-wood · / upper · right over top
    .byte $A3,$13,$8B,$3B,$D7,$D7,$B5,$B7  ; $81 outlined forest-wood · / upper · right over left
    .byte $00,$00,$00,$00,$03,$00,$3B,$00  ; $82 outlined forest-wood · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$07,$35,$B7  ; $83 outlined forest-wood · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$05,$20,$15  ; $84 outlined forest-wood · / lower · empty over right
    .byte $FE,$FE,$00,$EF,$EC,$00,$C0,$00  ; $85 outlined forest-wood · / lower · top over empty
    .byte $FE,$FE,$00,$EF,$EC,$03,$C5,$37  ; $86 outlined forest-wood · / lower · top over left
    .byte $FE,$FE,$00,$EF,$EC,$01,$C0,$15  ; $87 outlined forest-wood · / lower · top over right
    .byte $B7,$B7,$BB,$BB,$D4,$D0,$80,$00  ; $88 outlined forest-wood · / lower · left over empty
    .byte $B7,$B7,$BB,$BB,$D4,$D0,$8B,$00  ; $89 outlined forest-wood · / lower · left over top
    .byte $B7,$B7,$BB,$BB,$D4,$D1,$80,$15  ; $8A outlined forest-wood · / lower · left over right
    .byte $A2,$15,$AA,$11,$80,$50,$80,$00  ; $8B outlined forest-wood · / lower · right over empty
    .byte $A2,$15,$AA,$11,$80,$50,$8B,$00  ; $8C outlined forest-wood · / lower · right over top
    .byte $A2,$15,$AA,$11,$80,$53,$85,$37  ; $8D outlined forest-wood · / lower · right over left
    .byte $C0,$F0,$00,$EF,$EF,$00,$FB,$00  ; $8E outlined forest-wood · \ upper · empty over top
    .byte $80,$B0,$B8,$BB,$D7,$D7,$B5,$B7  ; $8F outlined forest-wood · \ upper · empty over left
    .byte $80,$10,$A8,$11,$82,$55,$A0,$15  ; $90 outlined forest-wood · \ upper · empty over right
    .byte $3E,$0E,$00,$00,$00,$00,$00,$00  ; $91 outlined forest-wood · \ upper · top over empty
    .byte $BE,$8E,$B0,$B8,$D7,$D7,$B5,$B7  ; $92 outlined forest-wood · \ upper · top over left
    .byte $BE,$0E,$A0,$10,$82,$55,$A0,$15  ; $93 outlined forest-wood · \ upper · top over right
    .byte $37,$07,$03,$00,$00,$00,$00,$00  ; $94 outlined forest-wood · \ upper · left over empty
    .byte $F7,$C7,$03,$EC,$EF,$00,$FB,$00  ; $95 outlined forest-wood · \ upper · left over top
    .byte $B7,$07,$A3,$10,$82,$55,$A0,$15  ; $96 outlined forest-wood · \ upper · left over right
    .byte $22,$05,$02,$00,$00,$00,$00,$00  ; $97 outlined forest-wood · \ upper · right over empty
    .byte $E2,$C5,$02,$EC,$EF,$00,$FB,$00  ; $98 outlined forest-wood · \ upper · right over top
    .byte $A2,$85,$B2,$B8,$D7,$D7,$B5,$B7  ; $99 outlined forest-wood · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$00,$F8,$00  ; $9A outlined forest-wood · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$D0,$B4,$B7  ; $9B outlined forest-wood · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$50,$A0,$15  ; $9C outlined forest-wood · \ lower · empty over right
    .byte $FE,$FE,$00,$EF,$2F,$00,$03,$00  ; $9D outlined forest-wood · \ lower · top over empty
    .byte $FE,$FE,$00,$EF,$2F,$C0,$B3,$B4  ; $9E outlined forest-wood · \ lower · top over left
    .byte $FE,$FE,$00,$EF,$2F,$40,$A3,$14  ; $9F outlined forest-wood · \ lower · top over right
    .byte $B7,$B7,$BB,$BB,$17,$07,$01,$00  ; $A0 outlined forest-wood · \ lower · left over empty
    .byte $B7,$B7,$BB,$BB,$17,$07,$F1,$00  ; $A1 outlined forest-wood · \ lower · left over top
    .byte $B7,$B7,$BB,$BB,$17,$47,$A1,$14  ; $A2 outlined forest-wood · \ lower · left over right
    .byte $A2,$15,$AA,$11,$02,$05,$00,$00  ; $A3 outlined forest-wood · \ lower · right over empty
    .byte $A2,$15,$AA,$11,$02,$05,$F0,$00  ; $A4 outlined forest-wood · \ lower · right over top
    .byte $A2,$15,$AA,$11,$02,$C5,$B0,$B4  ; $A5 outlined forest-wood · \ lower · right over left
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
