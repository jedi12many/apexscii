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
    .byte $48,$12,$84,$21,$48,$12,$84,$21  ; $40 mc outlined forest-grass · ceiling face
    .byte $FF,$EF,$FF,$FE,$FF,$FB,$FF,$BF  ; $41 mc outlined forest-grass · floor face
    .byte $59,$55,$95,$56,$55,$65,$55,$59  ; $42 mc outlined forest-grass · front wall face
    .byte $A2,$AA,$2A,$A8,$AA,$8A,$AA,$A2  ; $43 mc outlined forest-grass · side wall face
    .byte $AA,$F3,$F3,$F3,$F3,$F3,$F3,$AA  ; $44 mc outlined forest-grass · door face
    .byte $48,$10,$87,$22,$4F,$0B,$BF,$3F  ; $45 mc outlined forest-grass · / 45° · ceiling over floor
    .byte $48,$10,$85,$22,$45,$05,$95,$19  ; $46 mc outlined forest-grass · / 45° · ceiling over front wall
    .byte $48,$10,$86,$20,$4A,$0A,$AA,$22  ; $47 mc outlined forest-grass · / 45° · ceiling over side wall
    .byte $FF,$EC,$FC,$F1,$F8,$C2,$C4,$21  ; $48 mc outlined forest-grass · / 45° · floor over ceiling
    .byte $FF,$EC,$FD,$F2,$F5,$C5,$D5,$19  ; $49 mc outlined forest-grass · / 45° · floor over front wall
    .byte $FF,$EC,$FE,$F0,$FA,$CA,$EA,$22  ; $4A mc outlined forest-grass · / 45° · floor over side wall
    .byte $59,$54,$94,$51,$58,$42,$44,$21  ; $4B mc outlined forest-grass · / 45° · front wall over ceiling
    .byte $59,$54,$97,$52,$5F,$4B,$7F,$3F  ; $4C mc outlined forest-grass · / 45° · front wall over floor
    .byte $59,$54,$96,$50,$5A,$4A,$6A,$22  ; $4D mc outlined forest-grass · / 45° · front wall over side wall
    .byte $A2,$A8,$28,$A1,$A8,$82,$84,$21  ; $4E mc outlined forest-grass · / 45° · side wall over ceiling
    .byte $A2,$A8,$2B,$A2,$AF,$8B,$BF,$3F  ; $4F mc outlined forest-grass · / 45° · side wall over floor
    .byte $A2,$A8,$29,$A2,$A5,$85,$95,$19  ; $50 mc outlined forest-grass · / 45° · side wall over front wall
    .byte $C8,$D2,$C4,$F1,$F0,$FA,$FC,$BF  ; $51 mc outlined forest-grass · \ 45° · ceiling over floor
    .byte $48,$52,$84,$51,$50,$66,$54,$59  ; $52 mc outlined forest-grass · \ 45° · ceiling over front wall
    .byte $88,$92,$04,$A1,$A0,$8A,$A8,$A2  ; $53 mc outlined forest-grass · \ 45° · ceiling over side wall
    .byte $7F,$2F,$8F,$2E,$43,$13,$84,$21  ; $54 mc outlined forest-grass · \ 45° · floor over ceiling
    .byte $7F,$6F,$8F,$5E,$53,$67,$54,$59  ; $55 mc outlined forest-grass · \ 45° · floor over front wall
    .byte $BF,$AF,$0F,$AE,$A3,$8B,$A8,$A2  ; $56 mc outlined forest-grass · \ 45° · floor over side wall
    .byte $59,$15,$85,$26,$41,$11,$84,$21  ; $57 mc outlined forest-grass · \ 45° · front wall over ceiling
    .byte $D9,$D5,$C5,$F6,$F1,$F9,$FC,$BF  ; $58 mc outlined forest-grass · \ 45° · front wall over floor
    .byte $99,$95,$05,$A6,$A1,$89,$A8,$A2  ; $59 mc outlined forest-grass · \ 45° · front wall over side wall
    .byte $62,$2A,$8A,$28,$42,$12,$84,$21  ; $5A mc outlined forest-grass · \ 45° · side wall over ceiling
    .byte $E2,$EA,$CA,$F8,$F2,$FA,$FC,$BF  ; $5B mc outlined forest-grass · \ 45° · side wall over floor
    .byte $62,$6A,$8A,$58,$52,$66,$54,$59  ; $5C mc outlined forest-grass · \ 45° · side wall over front wall
    .byte $48,$12,$84,$21,$48,$12,$84,$21  ; $5D mc outlined forest-wood · ceiling face
    .byte $FC,$FC,$00,$CF,$CF,$00,$F3,$00  ; $5E mc outlined forest-wood · floor face
    .byte $DD,$DD,$D7,$D7,$77,$77,$DD,$DD  ; $5F mc outlined forest-wood · front wall face
    .byte $88,$88,$82,$82,$22,$22,$88,$88  ; $60 mc outlined forest-wood · side wall face
    .byte $AA,$F3,$F3,$F3,$F3,$F3,$F3,$AA  ; $61 mc outlined forest-wood · door face
    .byte $48,$10,$84,$23,$4F,$00,$B3,$00  ; $62 mc outlined forest-wood · / 45° · ceiling over floor
    .byte $48,$10,$87,$23,$47,$07,$9D,$1D  ; $63 mc outlined forest-wood · / 45° · ceiling over front wall
    .byte $48,$10,$86,$22,$42,$02,$88,$08  ; $64 mc outlined forest-wood · / 45° · ceiling over side wall
    .byte $FC,$FC,$00,$C1,$C8,$02,$C4,$21  ; $65 mc outlined forest-wood · / 45° · floor over ceiling
    .byte $FC,$FC,$03,$C3,$C7,$07,$DD,$1D  ; $66 mc outlined forest-wood · / 45° · floor over front wall
    .byte $FC,$FC,$02,$C2,$C2,$02,$C8,$08  ; $67 mc outlined forest-wood · / 45° · floor over side wall
    .byte $DD,$DC,$D4,$D1,$78,$42,$C4,$21  ; $68 mc outlined forest-wood · / 45° · front wall over ceiling
    .byte $DD,$DC,$D4,$D3,$7F,$40,$F3,$00  ; $69 mc outlined forest-wood · / 45° · front wall over floor
    .byte $DD,$DC,$D6,$D2,$72,$42,$C8,$08  ; $6A mc outlined forest-wood · / 45° · front wall over side wall
    .byte $88,$88,$80,$81,$28,$02,$84,$21  ; $6B mc outlined forest-wood · / 45° · side wall over ceiling
    .byte $88,$88,$80,$83,$2F,$00,$B3,$00  ; $6C mc outlined forest-wood · / 45° · side wall over floor
    .byte $88,$88,$83,$83,$27,$07,$9D,$1D  ; $6D mc outlined forest-wood · / 45° · side wall over front wall
    .byte $C8,$D2,$04,$C1,$C0,$02,$F0,$00  ; $6E mc outlined forest-wood · \ 45° · ceiling over floor
    .byte $C8,$D2,$C4,$D1,$70,$76,$DC,$DD  ; $6F mc outlined forest-wood · \ 45° · ceiling over front wall
    .byte $88,$92,$84,$81,$20,$22,$88,$88  ; $70 mc outlined forest-wood · \ 45° · ceiling over side wall
    .byte $7C,$3C,$80,$2F,$43,$10,$84,$21  ; $71 mc outlined forest-wood · \ 45° · floor over ceiling
    .byte $FC,$FC,$C0,$DF,$73,$74,$DC,$DD  ; $72 mc outlined forest-wood · \ 45° · floor over front wall
    .byte $BC,$BC,$80,$8F,$23,$20,$88,$88  ; $73 mc outlined forest-wood · \ 45° · floor over side wall
    .byte $5D,$1D,$87,$27,$43,$13,$84,$21  ; $74 mc outlined forest-wood · \ 45° · front wall over ceiling
    .byte $DD,$DD,$07,$C7,$C3,$03,$F0,$00  ; $75 mc outlined forest-wood · \ 45° · front wall over floor
    .byte $9D,$9D,$87,$87,$23,$23,$88,$88  ; $76 mc outlined forest-wood · \ 45° · front wall over side wall
    .byte $48,$08,$82,$22,$42,$12,$84,$21  ; $77 mc outlined forest-wood · \ 45° · side wall over ceiling
    .byte $C8,$C8,$02,$C2,$C2,$02,$F0,$00  ; $78 mc outlined forest-wood · \ 45° · side wall over floor
    .byte $C8,$C8,$C2,$D2,$72,$76,$DC,$DD  ; $79 mc outlined forest-wood · \ 45° · side wall over front wall
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
