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
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ; $40 mc smooth · top face
    .byte $55,$55,$55,$55,$55,$55,$55,$55  ; $41 mc smooth · left face
    .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA  ; $42 mc smooth · right face
    .byte $03,$0F,$3F,$FF,$FF,$FF,$FF,$FF  ; $43 mc smooth · / upper · empty over top
    .byte $01,$05,$15,$55,$55,$55,$55,$55  ; $44 mc smooth · / upper · empty over left
    .byte $02,$0A,$2A,$AA,$AA,$AA,$AA,$AA  ; $45 mc smooth · / upper · empty over right
    .byte $FC,$F0,$C0,$00,$00,$00,$00,$00  ; $46 mc smooth · / upper · top over empty
    .byte $FD,$F5,$D5,$55,$55,$55,$55,$55  ; $47 mc smooth · / upper · top over left
    .byte $FE,$FA,$EA,$AA,$AA,$AA,$AA,$AA  ; $48 mc smooth · / upper · top over right
    .byte $54,$50,$40,$00,$00,$00,$00,$00  ; $49 mc smooth · / upper · left over empty
    .byte $57,$5F,$7F,$FF,$FF,$FF,$FF,$FF  ; $4A mc smooth · / upper · left over top
    .byte $56,$5A,$6A,$AA,$AA,$AA,$AA,$AA  ; $4B mc smooth · / upper · left over right
    .byte $A8,$A0,$80,$00,$00,$00,$00,$00  ; $4C mc smooth · / upper · right over empty
    .byte $AB,$AF,$BF,$FF,$FF,$FF,$FF,$FF  ; $4D mc smooth · / upper · right over top
    .byte $A9,$A5,$95,$55,$55,$55,$55,$55  ; $4E mc smooth · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0F,$3F,$FF  ; $4F mc smooth · / lower · empty over top
    .byte $00,$00,$00,$00,$01,$05,$15,$55  ; $50 mc smooth · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$0A,$2A,$AA  ; $51 mc smooth · / lower · empty over right
    .byte $FF,$FF,$FF,$FF,$FC,$F0,$C0,$00  ; $52 mc smooth · / lower · top over empty
    .byte $FF,$FF,$FF,$FF,$FD,$F5,$D5,$55  ; $53 mc smooth · / lower · top over left
    .byte $FF,$FF,$FF,$FF,$FE,$FA,$EA,$AA  ; $54 mc smooth · / lower · top over right
    .byte $55,$55,$55,$55,$54,$50,$40,$00  ; $55 mc smooth · / lower · left over empty
    .byte $55,$55,$55,$55,$57,$5F,$7F,$FF  ; $56 mc smooth · / lower · left over top
    .byte $55,$55,$55,$55,$56,$5A,$6A,$AA  ; $57 mc smooth · / lower · left over right
    .byte $AA,$AA,$AA,$AA,$A8,$A0,$80,$00  ; $58 mc smooth · / lower · right over empty
    .byte $AA,$AA,$AA,$AA,$AB,$AF,$BF,$FF  ; $59 mc smooth · / lower · right over top
    .byte $AA,$AA,$AA,$AA,$A9,$A5,$95,$55  ; $5A mc smooth · / lower · right over left
    .byte $C0,$F0,$FC,$FF,$FF,$FF,$FF,$FF  ; $5B mc smooth · \ upper · empty over top
    .byte $40,$50,$54,$55,$55,$55,$55,$55  ; $5C mc smooth · \ upper · empty over left
    .byte $80,$A0,$A8,$AA,$AA,$AA,$AA,$AA  ; $5D mc smooth · \ upper · empty over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $5E mc smooth · \ upper · top over empty
    .byte $7F,$5F,$57,$55,$55,$55,$55,$55  ; $5F mc smooth · \ upper · top over left
    .byte $BF,$AF,$AB,$AA,$AA,$AA,$AA,$AA  ; $60 mc smooth · \ upper · top over right
    .byte $15,$05,$01,$00,$00,$00,$00,$00  ; $61 mc smooth · \ upper · left over empty
    .byte $D5,$F5,$FD,$FF,$FF,$FF,$FF,$FF  ; $62 mc smooth · \ upper · left over top
    .byte $95,$A5,$A9,$AA,$AA,$AA,$AA,$AA  ; $63 mc smooth · \ upper · left over right
    .byte $2A,$0A,$02,$00,$00,$00,$00,$00  ; $64 mc smooth · \ upper · right over empty
    .byte $EA,$FA,$FE,$FF,$FF,$FF,$FF,$FF  ; $65 mc smooth · \ upper · right over top
    .byte $6A,$5A,$56,$55,$55,$55,$55,$55  ; $66 mc smooth · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$FF  ; $67 mc smooth · \ lower · empty over top
    .byte $00,$00,$00,$00,$40,$50,$54,$55  ; $68 mc smooth · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$A0,$A8,$AA  ; $69 mc smooth · \ lower · empty over right
    .byte $FF,$FF,$FF,$FF,$3F,$0F,$03,$00  ; $6A mc smooth · \ lower · top over empty
    .byte $FF,$FF,$FF,$FF,$7F,$5F,$57,$55  ; $6B mc smooth · \ lower · top over left
    .byte $FF,$FF,$FF,$FF,$BF,$AF,$AB,$AA  ; $6C mc smooth · \ lower · top over right
    .byte $55,$55,$55,$55,$15,$05,$01,$00  ; $6D mc smooth · \ lower · left over empty
    .byte $55,$55,$55,$55,$D5,$F5,$FD,$FF  ; $6E mc smooth · \ lower · left over top
    .byte $55,$55,$55,$55,$95,$A5,$A9,$AA  ; $6F mc smooth · \ lower · left over right
    .byte $AA,$AA,$AA,$AA,$2A,$0A,$02,$00  ; $70 mc smooth · \ lower · right over empty
    .byte $AA,$AA,$AA,$AA,$EA,$FA,$FE,$FF  ; $71 mc smooth · \ lower · right over top
    .byte $AA,$AA,$AA,$AA,$6A,$5A,$56,$55  ; $72 mc smooth · \ lower · right over left
    .byte $99,$55,$55,$55,$66,$55,$55,$55  ; $73 mc brick · top face
    .byte $7F,$7F,$7F,$55,$F7,$F7,$F7,$55  ; $74 mc brick · left face
    .byte $3B,$2E,$3B,$00,$B3,$E2,$B3,$00  ; $75 mc brick · right face
    .byte $01,$05,$15,$55,$66,$55,$55,$55  ; $76 mc brick · / upper · empty over top
    .byte $03,$0F,$3F,$55,$F7,$F7,$F7,$55  ; $77 mc brick · / upper · empty over left
    .byte $03,$0E,$3B,$00,$B3,$E2,$B3,$00  ; $78 mc brick · / upper · empty over right
    .byte $98,$50,$40,$00,$00,$00,$00,$00  ; $79 mc brick · / upper · top over empty
    .byte $9B,$5F,$7F,$55,$F7,$F7,$F7,$55  ; $7A mc brick · / upper · top over left
    .byte $9B,$5E,$7B,$00,$B3,$E2,$B3,$00  ; $7B mc brick · / upper · top over right
    .byte $7C,$70,$40,$00,$00,$00,$00,$00  ; $7C mc brick · / upper · left over empty
    .byte $7D,$75,$55,$55,$66,$55,$55,$55  ; $7D mc brick · / upper · left over top
    .byte $7F,$7E,$7B,$00,$B3,$E2,$B3,$00  ; $7E mc brick · / upper · left over right
    .byte $38,$20,$00,$00,$00,$00,$00,$00  ; $7F mc brick · / upper · right over empty
    .byte $39,$25,$15,$55,$66,$55,$55,$55  ; $80 mc brick · / upper · right over top
    .byte $3B,$2F,$3F,$55,$F7,$F7,$F7,$55  ; $81 mc brick · / upper · right over left
    .byte $00,$00,$00,$00,$02,$05,$15,$55  ; $82 mc brick · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$07,$37,$55  ; $83 mc brick · / lower · empty over left
    .byte $00,$00,$00,$00,$03,$02,$33,$00  ; $84 mc brick · / lower · empty over right
    .byte $99,$55,$55,$55,$64,$50,$40,$00  ; $85 mc brick · / lower · top over empty
    .byte $99,$55,$55,$55,$67,$57,$77,$55  ; $86 mc brick · / lower · top over left
    .byte $99,$55,$55,$55,$67,$52,$73,$00  ; $87 mc brick · / lower · top over right
    .byte $7F,$7F,$7F,$55,$F4,$F0,$C0,$00  ; $88 mc brick · / lower · left over empty
    .byte $7F,$7F,$7F,$55,$F6,$F5,$D5,$55  ; $89 mc brick · / lower · left over top
    .byte $7F,$7F,$7F,$55,$F7,$F2,$F3,$00  ; $8A mc brick · / lower · left over right
    .byte $3B,$2E,$3B,$00,$B0,$E0,$80,$00  ; $8B mc brick · / lower · right over empty
    .byte $3B,$2E,$3B,$00,$B2,$E5,$95,$55  ; $8C mc brick · / lower · right over top
    .byte $3B,$2E,$3B,$00,$B3,$E7,$B7,$55  ; $8D mc brick · / lower · right over left
    .byte $80,$50,$54,$55,$66,$55,$55,$55  ; $8E mc brick · \ upper · empty over top
    .byte $40,$70,$7C,$55,$F7,$F7,$F7,$55  ; $8F mc brick · \ upper · empty over left
    .byte $00,$20,$38,$00,$B3,$E2,$B3,$00  ; $90 mc brick · \ upper · empty over right
    .byte $19,$05,$01,$00,$00,$00,$00,$00  ; $91 mc brick · \ upper · top over empty
    .byte $59,$75,$7D,$55,$F7,$F7,$F7,$55  ; $92 mc brick · \ upper · top over left
    .byte $19,$25,$39,$00,$B3,$E2,$B3,$00  ; $93 mc brick · \ upper · top over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $94 mc brick · \ upper · left over empty
    .byte $BF,$5F,$57,$55,$66,$55,$55,$55  ; $95 mc brick · \ upper · left over top
    .byte $3F,$2F,$3B,$00,$B3,$E2,$B3,$00  ; $96 mc brick · \ upper · left over right
    .byte $3B,$0E,$03,$00,$00,$00,$00,$00  ; $97 mc brick · \ upper · right over empty
    .byte $BB,$5E,$57,$55,$66,$55,$55,$55  ; $98 mc brick · \ upper · right over top
    .byte $7B,$7E,$7F,$55,$F7,$F7,$F7,$55  ; $99 mc brick · \ upper · right over left
    .byte $00,$00,$00,$00,$40,$50,$54,$55  ; $9A mc brick · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$F0,$F4,$55  ; $9B mc brick · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$E0,$B0,$00  ; $9C mc brick · \ lower · empty over right
    .byte $99,$55,$55,$55,$26,$05,$01,$00  ; $9D mc brick · \ lower · top over empty
    .byte $99,$55,$55,$55,$E6,$F5,$F5,$55  ; $9E mc brick · \ lower · top over left
    .byte $99,$55,$55,$55,$A6,$E5,$B1,$00  ; $9F mc brick · \ lower · top over right
    .byte $7F,$7F,$7F,$55,$37,$07,$03,$00  ; $A0 mc brick · \ lower · left over empty
    .byte $7F,$7F,$7F,$55,$77,$57,$57,$55  ; $A1 mc brick · \ lower · left over top
    .byte $7F,$7F,$7F,$55,$B7,$E7,$B3,$00  ; $A2 mc brick · \ lower · left over right
    .byte $3B,$2E,$3B,$00,$33,$02,$03,$00  ; $A3 mc brick · \ lower · right over empty
    .byte $3B,$2E,$3B,$00,$73,$52,$57,$55  ; $A4 mc brick · \ lower · right over top
    .byte $3B,$2E,$3B,$00,$F3,$F2,$F7,$55  ; $A5 mc brick · \ lower · right over left
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
