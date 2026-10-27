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
    .byte $90,$42,$09,$A0,$04,$21,$88,$42  ; $40 forest-grass · ceiling face
    .byte $FF,$DF,$AF,$FF,$FD,$FA,$FF,$FF  ; $41 forest-grass · floor face
    .byte $AA,$5D,$BE,$5D,$AA,$55,$EA,$D5  ; $42 forest-grass · front wall face
    .byte $AA,$55,$AA,$55,$AA,$55,$AA,$55  ; $43 forest-grass · side wall face
    .byte $FF,$EE,$EE,$EE,$EE,$EE,$EE,$FF  ; $44 forest-grass · door face
    .byte $91,$43,$0F,$AF,$1D,$3A,$FF,$FF  ; $45 forest-grass · / 45° · ceiling over floor
    .byte $90,$41,$0E,$AD,$0A,$15,$EA,$D5  ; $46 forest-grass · / 45° · ceiling over front wall
    .byte $90,$41,$0A,$A5,$0A,$15,$AA,$55  ; $47 forest-grass · / 45° · ceiling over side wall
    .byte $FE,$DE,$A9,$F0,$E4,$E1,$88,$42  ; $48 forest-grass · / 45° · floor over ceiling
    .byte $FE,$DD,$AE,$FD,$EA,$D5,$EA,$D5  ; $49 forest-grass · / 45° · floor over front wall
    .byte $FE,$DD,$AA,$F5,$EA,$D5,$AA,$55  ; $4A forest-grass · / 45° · floor over side wall
    .byte $AA,$5E,$B9,$50,$A4,$61,$88,$42  ; $4B forest-grass · / 45° · front wall over ceiling
    .byte $AB,$5F,$BF,$5F,$BD,$7A,$FF,$FF  ; $4C forest-grass · / 45° · front wall over floor
    .byte $AA,$5D,$BA,$55,$AA,$55,$AA,$55  ; $4D forest-grass · / 45° · front wall over side wall
    .byte $AA,$56,$A9,$50,$A4,$61,$88,$42  ; $4E forest-grass · / 45° · side wall over ceiling
    .byte $AB,$57,$AF,$5F,$BD,$7A,$FF,$FF  ; $4F forest-grass · / 45° · side wall over floor
    .byte $AA,$55,$AE,$5D,$AA,$55,$EA,$D5  ; $50 forest-grass · / 45° · side wall over front wall
    .byte $90,$C2,$A9,$F0,$FC,$F9,$FE,$FF  ; $51 forest-grass · \ 45° · ceiling over floor
    .byte $90,$42,$A9,$50,$AC,$55,$EA,$D5  ; $52 forest-grass · \ 45° · ceiling over front wall
    .byte $90,$42,$A9,$50,$AC,$55,$AA,$55  ; $53 forest-grass · \ 45° · ceiling over side wall
    .byte $FF,$5F,$0F,$AF,$05,$22,$89,$42  ; $54 forest-grass · \ 45° · floor over ceiling
    .byte $FF,$5F,$AF,$5F,$AD,$56,$EB,$D5  ; $55 forest-grass · \ 45° · floor over front wall
    .byte $FF,$5F,$AF,$5F,$AD,$56,$AB,$55  ; $56 forest-grass · \ 45° · floor over side wall
    .byte $AA,$5D,$1E,$AD,$02,$21,$88,$42  ; $57 forest-grass · \ 45° · front wall over ceiling
    .byte $AA,$DD,$BE,$FD,$FA,$F9,$FE,$FF  ; $58 forest-grass · \ 45° · front wall over floor
    .byte $AA,$5D,$BE,$5D,$AA,$55,$AA,$55  ; $59 forest-grass · \ 45° · front wall over side wall
    .byte $AA,$55,$0A,$A5,$02,$21,$88,$42  ; $5A forest-grass · \ 45° · side wall over ceiling
    .byte $AA,$D5,$AA,$F5,$FA,$F9,$FE,$FF  ; $5B forest-grass · \ 45° · side wall over floor
    .byte $AA,$55,$AA,$55,$AA,$55,$EA,$D5  ; $5C forest-grass · \ 45° · side wall over front wall
    .byte $90,$42,$09,$A0,$04,$21,$88,$42  ; $5D forest-wood · ceiling face
    .byte $FE,$FE,$00,$EF,$EF,$00,$FB,$00  ; $5E forest-wood · floor face
    .byte $B7,$B7,$BB,$BB,$D7,$D7,$B5,$B7  ; $5F forest-wood · front wall face
    .byte $A2,$15,$AA,$11,$82,$55,$A0,$15  ; $60 forest-wood · side wall face
    .byte $FF,$EE,$EE,$EE,$EE,$EE,$EE,$FF  ; $61 forest-wood · door face
    .byte $90,$42,$08,$AF,$0F,$00,$FB,$00  ; $62 forest-wood · / 45° · ceiling over floor
    .byte $91,$43,$0B,$AB,$17,$17,$B5,$B7  ; $63 forest-wood · / 45° · ceiling over front wall
    .byte $90,$41,$0A,$A1,$02,$15,$A0,$15  ; $64 forest-wood · / 45° · ceiling over side wall
    .byte $FE,$FE,$01,$E0,$E4,$21,$88,$42  ; $65 forest-wood · / 45° · floor over ceiling
    .byte $FF,$FF,$03,$EB,$F7,$17,$B5,$B7  ; $66 forest-wood · / 45° · floor over front wall
    .byte $FE,$FD,$02,$E1,$E2,$15,$A0,$15  ; $67 forest-wood · / 45° · floor over side wall
    .byte $B6,$B6,$B9,$B0,$C4,$E1,$88,$42  ; $68 forest-wood · / 45° · front wall over ceiling
    .byte $B6,$B6,$B8,$BF,$CF,$C0,$FB,$00  ; $69 forest-wood · / 45° · front wall over floor
    .byte $B6,$B5,$BA,$B1,$C2,$D5,$A0,$15  ; $6A forest-wood · / 45° · front wall over side wall
    .byte $A2,$16,$A9,$10,$84,$61,$88,$42  ; $6B forest-wood · / 45° · side wall over ceiling
    .byte $A2,$16,$A8,$1F,$8F,$40,$FB,$00  ; $6C forest-wood · / 45° · side wall over floor
    .byte $A3,$17,$AB,$1B,$97,$57,$B5,$B7  ; $6D forest-wood · / 45° · side wall over front wall
    .byte $90,$C2,$09,$E0,$EC,$01,$FA,$00  ; $6E forest-wood · \ 45° · ceiling over floor
    .byte $90,$82,$A9,$B0,$D4,$D5,$B4,$B7  ; $6F forest-wood · \ 45° · ceiling over front wall
    .byte $90,$02,$A9,$10,$84,$55,$A0,$15  ; $70 forest-wood · \ 45° · ceiling over side wall
    .byte $FE,$7E,$00,$AF,$07,$20,$89,$42  ; $71 forest-wood · \ 45° · floor over ceiling
    .byte $FE,$BE,$A0,$BF,$D7,$D4,$B5,$B7  ; $72 forest-wood · \ 45° · floor over front wall
    .byte $FE,$3E,$A0,$1F,$87,$54,$A1,$15  ; $73 forest-wood · \ 45° · floor over side wall
    .byte $B7,$77,$1B,$AB,$07,$23,$89,$42  ; $74 forest-wood · \ 45° · front wall over ceiling
    .byte $B7,$F7,$1B,$EB,$EF,$03,$FB,$00  ; $75 forest-wood · \ 45° · front wall over floor
    .byte $B7,$37,$BB,$1B,$87,$57,$A1,$15  ; $76 forest-wood · \ 45° · front wall over side wall
    .byte $A2,$55,$0A,$A1,$02,$21,$88,$42  ; $77 forest-wood · \ 45° · side wall over ceiling
    .byte $A2,$D5,$0A,$E1,$EA,$01,$FA,$00  ; $78 forest-wood · \ 45° · side wall over floor
    .byte $A2,$95,$AA,$B1,$D2,$D5,$B4,$B7  ; $79 forest-wood · \ 45° · side wall over front wall
    .byte $01,$02,$04,$08,$10,$20,$40,$80  ; $7A line · / 45°
    .byte $80,$40,$20,$10,$08,$04,$02,$01  ; $7B line · \ 45°
    .byte $80,$80,$80,$80,$80,$80,$80,$80  ; $7C line · left edge
    .byte $01,$01,$01,$01,$01,$01,$01,$01  ; $7D line · right edge
    .byte $FF,$00,$00,$00,$00,$00,$00,$00  ; $7E line · top edge
    .byte $00,$00,$00,$00,$00,$00,$00,$FF  ; $7F line · bottom edge
    .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00  ; $80 block · upper half
    .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF  ; $81 block · lower half
    .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0  ; $82 block · left half
    .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F  ; $83 block · right half
    .byte $F0,$F0,$F0,$F0,$00,$00,$00,$00  ; $84 block · quad TL
    .byte $0F,$0F,$0F,$0F,$00,$00,$00,$00  ; $85 block · quad TR
    .byte $00,$00,$00,$00,$F0,$F0,$F0,$F0  ; $86 block · quad BL
    .byte $00,$00,$00,$00,$0F,$0F,$0F,$0F  ; $87 block · quad BR
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
