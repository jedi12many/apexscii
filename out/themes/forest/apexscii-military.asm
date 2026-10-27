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
    .byte $01,$03,$07,$0F,$1D,$3A,$7F,$FF  ; $43 forest-grass · / 45° · empty over top
    .byte $00,$01,$06,$0D,$0A,$15,$6A,$D5  ; $44 forest-grass · / 45° · empty over left
    .byte $00,$01,$02,$05,$0A,$15,$2A,$55  ; $45 forest-grass · / 45° · empty over right
    .byte $FE,$DC,$A8,$F0,$E0,$C0,$80,$00  ; $46 forest-grass · / 45° · top over empty
    .byte $FE,$DD,$AE,$FD,$EA,$D5,$EA,$D5  ; $47 forest-grass · / 45° · top over left
    .byte $FE,$DD,$AA,$F5,$EA,$D5,$AA,$55  ; $48 forest-grass · / 45° · top over right
    .byte $AA,$5C,$B8,$50,$A0,$40,$80,$00  ; $49 forest-grass · / 45° · left over empty
    .byte $AB,$5F,$BF,$5F,$BD,$7A,$FF,$FF  ; $4A forest-grass · / 45° · left over top
    .byte $AA,$5D,$BA,$55,$AA,$55,$AA,$55  ; $4B forest-grass · / 45° · left over right
    .byte $AA,$54,$A8,$50,$A0,$40,$80,$00  ; $4C forest-grass · / 45° · right over empty
    .byte $AB,$57,$AF,$5F,$BD,$7A,$FF,$FF  ; $4D forest-grass · / 45° · right over top
    .byte $AA,$55,$AE,$5D,$AA,$55,$EA,$D5  ; $4E forest-grass · / 45° · right over left
    .byte $80,$C0,$A0,$F0,$F8,$F8,$FE,$FF  ; $4F forest-grass · \ 45° · empty over top
    .byte $80,$40,$A0,$50,$A8,$54,$EA,$D5  ; $50 forest-grass · \ 45° · empty over left
    .byte $80,$40,$A0,$50,$A8,$54,$AA,$55  ; $51 forest-grass · \ 45° · empty over right
    .byte $7F,$1F,$0F,$0F,$05,$02,$01,$00  ; $52 forest-grass · \ 45° · top over empty
    .byte $FF,$5F,$AF,$5F,$AD,$56,$EB,$D5  ; $53 forest-grass · \ 45° · top over left
    .byte $FF,$5F,$AF,$5F,$AD,$56,$AB,$55  ; $54 forest-grass · \ 45° · top over right
    .byte $2A,$1D,$1E,$0D,$02,$01,$00,$00  ; $55 forest-grass · \ 45° · left over empty
    .byte $AA,$DD,$BE,$FD,$FA,$F9,$FE,$FF  ; $56 forest-grass · \ 45° · left over top
    .byte $AA,$5D,$BE,$5D,$AA,$55,$AA,$55  ; $57 forest-grass · \ 45° · left over right
    .byte $2A,$15,$0A,$05,$02,$01,$00,$00  ; $58 forest-grass · \ 45° · right over empty
    .byte $AA,$D5,$AA,$F5,$FA,$F9,$FE,$FF  ; $59 forest-grass · \ 45° · right over top
    .byte $AA,$55,$AA,$55,$AA,$55,$EA,$D5  ; $5A forest-grass · \ 45° · right over left
    .byte $FE,$FE,$00,$EF,$EF,$00,$FB,$00  ; $5B forest-wood · top face
    .byte $B7,$B7,$BB,$BB,$D7,$D7,$B5,$B7  ; $5C forest-wood · left face
    .byte $A2,$15,$AA,$11,$82,$55,$A0,$15  ; $5D forest-wood · right face
    .byte $00,$02,$00,$0F,$0F,$00,$7B,$00  ; $5E forest-wood · / 45° · empty over top
    .byte $01,$03,$03,$0B,$17,$17,$35,$B7  ; $5F forest-wood · / 45° · empty over left
    .byte $00,$01,$02,$01,$02,$15,$20,$15  ; $60 forest-wood · / 45° · empty over right
    .byte $FE,$FC,$00,$E0,$E0,$00,$80,$00  ; $61 forest-wood · / 45° · top over empty
    .byte $FF,$FF,$03,$EB,$F7,$17,$B5,$B7  ; $62 forest-wood · / 45° · top over left
    .byte $FE,$FD,$02,$E1,$E2,$15,$A0,$15  ; $63 forest-wood · / 45° · top over right
    .byte $B6,$B4,$B8,$B0,$C0,$C0,$80,$00  ; $64 forest-wood · / 45° · left over empty
    .byte $B6,$B6,$B8,$BF,$CF,$C0,$FB,$00  ; $65 forest-wood · / 45° · left over top
    .byte $B6,$B5,$BA,$B1,$C2,$D5,$A0,$15  ; $66 forest-wood · / 45° · left over right
    .byte $A2,$14,$A8,$10,$80,$40,$80,$00  ; $67 forest-wood · / 45° · right over empty
    .byte $A2,$16,$A8,$1F,$8F,$40,$FB,$00  ; $68 forest-wood · / 45° · right over top
    .byte $A3,$17,$AB,$1B,$97,$57,$B5,$B7  ; $69 forest-wood · / 45° · right over left
    .byte $80,$C0,$00,$E0,$E8,$00,$FA,$00  ; $6A forest-wood · \ 45° · empty over top
    .byte $80,$80,$A0,$B0,$D0,$D4,$B4,$B7  ; $6B forest-wood · \ 45° · empty over left
    .byte $80,$00,$A0,$10,$80,$54,$A0,$15  ; $6C forest-wood · \ 45° · empty over right
    .byte $7E,$3E,$00,$0F,$07,$00,$01,$00  ; $6D forest-wood · \ 45° · top over empty
    .byte $FE,$BE,$A0,$BF,$D7,$D4,$B5,$B7  ; $6E forest-wood · \ 45° · top over left
    .byte $FE,$3E,$A0,$1F,$87,$54,$A1,$15  ; $6F forest-wood · \ 45° · top over right
    .byte $37,$37,$1B,$0B,$07,$03,$01,$00  ; $70 forest-wood · \ 45° · left over empty
    .byte $B7,$F7,$1B,$EB,$EF,$03,$FB,$00  ; $71 forest-wood · \ 45° · left over top
    .byte $B7,$37,$BB,$1B,$87,$57,$A1,$15  ; $72 forest-wood · \ 45° · left over right
    .byte $22,$15,$0A,$01,$02,$01,$00,$00  ; $73 forest-wood · \ 45° · right over empty
    .byte $A2,$D5,$0A,$E1,$EA,$01,$FA,$00  ; $74 forest-wood · \ 45° · right over top
    .byte $A2,$95,$AA,$B1,$D2,$D5,$B4,$B7  ; $75 forest-wood · \ 45° · right over left
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
