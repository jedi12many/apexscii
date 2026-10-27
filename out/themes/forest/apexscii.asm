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
    .byte $FF,$DF,$AF,$FF,$FD,$FA,$FF,$FF  ; $40 forest-grass · top face
    .byte $AA,$5D,$BE,$5D,$AA,$55,$EA,$D5  ; $41 forest-grass · left face
    .byte $AA,$55,$AA,$55,$AA,$55,$AA,$55  ; $42 forest-grass · right face
    .byte $03,$0F,$2F,$FF,$FD,$FA,$FF,$FF  ; $43 forest-grass · / upper · empty over top
    .byte $02,$0D,$3E,$5D,$AA,$55,$EA,$D5  ; $44 forest-grass · / upper · empty over left
    .byte $02,$05,$2A,$55,$AA,$55,$AA,$55  ; $45 forest-grass · / upper · empty over right
    .byte $FC,$D0,$80,$00,$00,$00,$00,$00  ; $46 forest-grass · / upper · top over empty
    .byte $FE,$DD,$BE,$5D,$AA,$55,$EA,$D5  ; $47 forest-grass · / upper · top over left
    .byte $FE,$D5,$AA,$55,$AA,$55,$AA,$55  ; $48 forest-grass · / upper · top over right
    .byte $A8,$50,$80,$00,$00,$00,$00,$00  ; $49 forest-grass · / upper · left over empty
    .byte $AB,$5F,$AF,$FF,$FD,$FA,$FF,$FF  ; $4A forest-grass · / upper · left over top
    .byte $AA,$55,$AA,$55,$AA,$55,$AA,$55  ; $4B forest-grass · / upper · left over right
    .byte $A8,$50,$80,$00,$00,$00,$00,$00  ; $4C forest-grass · / upper · right over empty
    .byte $AB,$5F,$AF,$FF,$FD,$FA,$FF,$FF  ; $4D forest-grass · / upper · right over top
    .byte $AA,$5D,$BE,$5D,$AA,$55,$EA,$D5  ; $4E forest-grass · / upper · right over left
    .byte $00,$00,$00,$00,$01,$0A,$3F,$FF  ; $4F forest-grass · / lower · empty over top
    .byte $00,$00,$00,$00,$02,$05,$2A,$D5  ; $50 forest-grass · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$05,$2A,$55  ; $51 forest-grass · / lower · empty over right
    .byte $FF,$DF,$AF,$FF,$FC,$F0,$C0,$00  ; $52 forest-grass · / lower · top over empty
    .byte $FF,$DF,$AF,$FF,$FE,$F5,$EA,$D5  ; $53 forest-grass · / lower · top over left
    .byte $FF,$DF,$AF,$FF,$FE,$F5,$EA,$55  ; $54 forest-grass · / lower · top over right
    .byte $AA,$5D,$BE,$5D,$A8,$50,$C0,$00  ; $55 forest-grass · / lower · left over empty
    .byte $AA,$5D,$BE,$5D,$A9,$5A,$FF,$FF  ; $56 forest-grass · / lower · left over top
    .byte $AA,$5D,$BE,$5D,$AA,$55,$EA,$55  ; $57 forest-grass · / lower · left over right
    .byte $AA,$55,$AA,$55,$A8,$50,$80,$00  ; $58 forest-grass · / lower · right over empty
    .byte $AA,$55,$AA,$55,$A9,$5A,$BF,$FF  ; $59 forest-grass · / lower · right over top
    .byte $AA,$55,$AA,$55,$AA,$55,$AA,$D5  ; $5A forest-grass · / lower · right over left
    .byte $C0,$D0,$AC,$FF,$FD,$FA,$FF,$FF  ; $5B forest-grass · \ upper · empty over top
    .byte $80,$50,$BC,$5D,$AA,$55,$EA,$D5  ; $5C forest-grass · \ upper · empty over left
    .byte $80,$50,$A8,$55,$AA,$55,$AA,$55  ; $5D forest-grass · \ upper · empty over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $5E forest-grass · \ upper · top over empty
    .byte $BF,$5F,$BF,$5D,$AA,$55,$EA,$D5  ; $5F forest-grass · \ upper · top over left
    .byte $BF,$5F,$AB,$55,$AA,$55,$AA,$55  ; $60 forest-grass · \ upper · top over right
    .byte $2A,$0D,$02,$00,$00,$00,$00,$00  ; $61 forest-grass · \ upper · left over empty
    .byte $EA,$DD,$AE,$FF,$FD,$FA,$FF,$FF  ; $62 forest-grass · \ upper · left over top
    .byte $AA,$5D,$AA,$55,$AA,$55,$AA,$55  ; $63 forest-grass · \ upper · left over right
    .byte $2A,$05,$02,$00,$00,$00,$00,$00  ; $64 forest-grass · \ upper · right over empty
    .byte $EA,$D5,$AE,$FF,$FD,$FA,$FF,$FF  ; $65 forest-grass · \ upper · right over top
    .byte $AA,$55,$BE,$5D,$AA,$55,$EA,$D5  ; $66 forest-grass · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$FF  ; $67 forest-grass · \ lower · empty over top
    .byte $00,$00,$00,$00,$80,$50,$E8,$D5  ; $68 forest-grass · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$50,$A8,$55  ; $69 forest-grass · \ lower · empty over right
    .byte $FF,$DF,$AF,$FF,$3D,$0A,$03,$00  ; $6A forest-grass · \ lower · top over empty
    .byte $FF,$DF,$AF,$FF,$BD,$5A,$EB,$D5  ; $6B forest-grass · \ lower · top over left
    .byte $FF,$DF,$AF,$FF,$BD,$5A,$AB,$55  ; $6C forest-grass · \ lower · top over right
    .byte $AA,$5D,$BE,$5D,$2A,$05,$02,$00  ; $6D forest-grass · \ lower · left over empty
    .byte $AA,$5D,$BE,$5D,$EA,$F5,$FE,$FF  ; $6E forest-grass · \ lower · left over top
    .byte $AA,$5D,$BE,$5D,$AA,$55,$AA,$55  ; $6F forest-grass · \ lower · left over right
    .byte $AA,$55,$AA,$55,$2A,$05,$02,$00  ; $70 forest-grass · \ lower · right over empty
    .byte $AA,$55,$AA,$55,$EA,$F5,$FE,$FF  ; $71 forest-grass · \ lower · right over top
    .byte $AA,$55,$AA,$55,$AA,$55,$EA,$D5  ; $72 forest-grass · \ lower · right over left
    .byte $FE,$FE,$00,$EF,$EF,$00,$FB,$00  ; $73 forest-wood · top face
    .byte $B7,$B7,$BB,$BB,$D7,$D7,$B5,$B7  ; $74 forest-wood · left face
    .byte $A2,$15,$AA,$11,$82,$55,$A0,$15  ; $75 forest-wood · right face
    .byte $02,$0E,$00,$EF,$EF,$00,$FB,$00  ; $76 forest-wood · / upper · empty over top
    .byte $03,$07,$3B,$BB,$D7,$D7,$B5,$B7  ; $77 forest-wood · / upper · empty over left
    .byte $02,$05,$2A,$11,$82,$55,$A0,$15  ; $78 forest-wood · / upper · empty over right
    .byte $FC,$F0,$00,$00,$00,$00,$00,$00  ; $79 forest-wood · / upper · top over empty
    .byte $FF,$F7,$3B,$BB,$D7,$D7,$B5,$B7  ; $7A forest-wood · / upper · top over left
    .byte $FE,$F5,$2A,$11,$82,$55,$A0,$15  ; $7B forest-wood · / upper · top over right
    .byte $B4,$B0,$80,$00,$00,$00,$00,$00  ; $7C forest-wood · / upper · left over empty
    .byte $B6,$BE,$80,$EF,$EF,$00,$FB,$00  ; $7D forest-wood · / upper · left over top
    .byte $B6,$B5,$AA,$11,$82,$55,$A0,$15  ; $7E forest-wood · / upper · left over right
    .byte $A0,$10,$80,$00,$00,$00,$00,$00  ; $7F forest-wood · / upper · right over empty
    .byte $A2,$1E,$80,$EF,$EF,$00,$FB,$00  ; $80 forest-wood · / upper · right over top
    .byte $A3,$17,$BB,$BB,$D7,$D7,$B5,$B7  ; $81 forest-wood · / upper · right over left
    .byte $00,$00,$00,$00,$03,$00,$3B,$00  ; $82 forest-wood · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$07,$35,$B7  ; $83 forest-wood · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$05,$20,$15  ; $84 forest-wood · / lower · empty over right
    .byte $FE,$FE,$00,$EF,$EC,$00,$C0,$00  ; $85 forest-wood · / lower · top over empty
    .byte $FE,$FE,$00,$EF,$EF,$07,$F5,$B7  ; $86 forest-wood · / lower · top over left
    .byte $FE,$FE,$00,$EF,$EE,$05,$E0,$15  ; $87 forest-wood · / lower · top over right
    .byte $B7,$B7,$BB,$BB,$D4,$D0,$80,$00  ; $88 forest-wood · / lower · left over empty
    .byte $B7,$B7,$BB,$BB,$D7,$D0,$BB,$00  ; $89 forest-wood · / lower · left over top
    .byte $B7,$B7,$BB,$BB,$D6,$D5,$A0,$15  ; $8A forest-wood · / lower · left over right
    .byte $A2,$15,$AA,$11,$80,$50,$80,$00  ; $8B forest-wood · / lower · right over empty
    .byte $A2,$15,$AA,$11,$83,$50,$BB,$00  ; $8C forest-wood · / lower · right over top
    .byte $A2,$15,$AA,$11,$83,$57,$B5,$B7  ; $8D forest-wood · / lower · right over left
    .byte $C0,$F0,$00,$EF,$EF,$00,$FB,$00  ; $8E forest-wood · \ upper · empty over top
    .byte $80,$B0,$B8,$BB,$D7,$D7,$B5,$B7  ; $8F forest-wood · \ upper · empty over left
    .byte $80,$10,$A8,$11,$82,$55,$A0,$15  ; $90 forest-wood · \ upper · empty over right
    .byte $3E,$0E,$00,$00,$00,$00,$00,$00  ; $91 forest-wood · \ upper · top over empty
    .byte $BE,$BE,$B8,$BB,$D7,$D7,$B5,$B7  ; $92 forest-wood · \ upper · top over left
    .byte $BE,$1E,$A8,$11,$82,$55,$A0,$15  ; $93 forest-wood · \ upper · top over right
    .byte $37,$07,$03,$00,$00,$00,$00,$00  ; $94 forest-wood · \ upper · left over empty
    .byte $F7,$F7,$03,$EF,$EF,$00,$FB,$00  ; $95 forest-wood · \ upper · left over top
    .byte $B7,$17,$AB,$11,$82,$55,$A0,$15  ; $96 forest-wood · \ upper · left over right
    .byte $22,$05,$02,$00,$00,$00,$00,$00  ; $97 forest-wood · \ upper · right over empty
    .byte $E2,$F5,$02,$EF,$EF,$00,$FB,$00  ; $98 forest-wood · \ upper · right over top
    .byte $A2,$B5,$BA,$BB,$D7,$D7,$B5,$B7  ; $99 forest-wood · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$00,$F8,$00  ; $9A forest-wood · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$D0,$B4,$B7  ; $9B forest-wood · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$50,$A0,$15  ; $9C forest-wood · \ lower · empty over right
    .byte $FE,$FE,$00,$EF,$2F,$00,$03,$00  ; $9D forest-wood · \ lower · top over empty
    .byte $FE,$FE,$00,$EF,$EF,$D0,$B7,$B7  ; $9E forest-wood · \ lower · top over left
    .byte $FE,$FE,$00,$EF,$AF,$50,$A3,$15  ; $9F forest-wood · \ lower · top over right
    .byte $B7,$B7,$BB,$BB,$17,$07,$01,$00  ; $A0 forest-wood · \ lower · left over empty
    .byte $B7,$B7,$BB,$BB,$D7,$07,$F9,$00  ; $A1 forest-wood · \ lower · left over top
    .byte $B7,$B7,$BB,$BB,$97,$57,$A1,$15  ; $A2 forest-wood · \ lower · left over right
    .byte $A2,$15,$AA,$11,$02,$05,$00,$00  ; $A3 forest-wood · \ lower · right over empty
    .byte $A2,$15,$AA,$11,$C2,$05,$F8,$00  ; $A4 forest-wood · \ lower · right over top
    .byte $A2,$15,$AA,$11,$C2,$D5,$B4,$B7  ; $A5 forest-wood · \ lower · right over left
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
