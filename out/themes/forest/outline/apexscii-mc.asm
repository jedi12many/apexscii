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
    .byte $FF,$EF,$FF,$FE,$FF,$FB,$FF,$BF  ; $40 mc outlined forest-grass · top face
    .byte $59,$55,$95,$56,$55,$65,$55,$59  ; $41 mc outlined forest-grass · left face
    .byte $A2,$AA,$2A,$A8,$AA,$8A,$AA,$A2  ; $42 mc outlined forest-grass · right face
    .byte $03,$0F,$3F,$FE,$FF,$FB,$FF,$BF  ; $43 mc outlined forest-grass · / upper · empty over top
    .byte $01,$05,$15,$56,$55,$65,$55,$59  ; $44 mc outlined forest-grass · / upper · empty over left
    .byte $02,$0A,$2A,$A8,$AA,$8A,$AA,$A2  ; $45 mc outlined forest-grass · / upper · empty over right
    .byte $FC,$E0,$C0,$00,$00,$00,$00,$00  ; $46 mc outlined forest-grass · / upper · top over empty
    .byte $FD,$E1,$C5,$16,$55,$65,$55,$59  ; $47 mc outlined forest-grass · / upper · top over left
    .byte $FE,$E2,$CA,$28,$AA,$8A,$AA,$A2  ; $48 mc outlined forest-grass · / upper · top over right
    .byte $58,$50,$80,$00,$00,$00,$00,$00  ; $49 mc outlined forest-grass · / upper · left over empty
    .byte $5B,$53,$8F,$3E,$FF,$FB,$FF,$BF  ; $4A mc outlined forest-grass · / upper · left over top
    .byte $5A,$52,$8A,$28,$AA,$8A,$AA,$A2  ; $4B mc outlined forest-grass · / upper · left over right
    .byte $A0,$A0,$00,$00,$00,$00,$00,$00  ; $4C mc outlined forest-grass · / upper · right over empty
    .byte $A3,$A3,$0F,$3E,$FF,$FB,$FF,$BF  ; $4D mc outlined forest-grass · / upper · right over top
    .byte $A1,$A1,$05,$16,$55,$65,$55,$59  ; $4E mc outlined forest-grass · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0B,$3F,$BF  ; $4F mc outlined forest-grass · / lower · empty over top
    .byte $00,$00,$00,$00,$01,$05,$15,$59  ; $50 mc outlined forest-grass · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$0A,$2A,$A2  ; $51 mc outlined forest-grass · / lower · empty over right
    .byte $FF,$EF,$FF,$FE,$FC,$F0,$C0,$00  ; $52 mc outlined forest-grass · / lower · top over empty
    .byte $FF,$EF,$FF,$FE,$FC,$F1,$C5,$19  ; $53 mc outlined forest-grass · / lower · top over left
    .byte $FF,$EF,$FF,$FE,$FC,$F2,$CA,$22  ; $54 mc outlined forest-grass · / lower · top over right
    .byte $59,$55,$95,$56,$54,$60,$40,$00  ; $55 mc outlined forest-grass · / lower · left over empty
    .byte $59,$55,$95,$56,$54,$63,$4F,$3F  ; $56 mc outlined forest-grass · / lower · left over top
    .byte $59,$55,$95,$56,$54,$62,$4A,$22  ; $57 mc outlined forest-grass · / lower · left over right
    .byte $A2,$AA,$2A,$A8,$A8,$80,$80,$00  ; $58 mc outlined forest-grass · / lower · right over empty
    .byte $A2,$AA,$2A,$A8,$A8,$83,$8F,$3F  ; $59 mc outlined forest-grass · / lower · right over top
    .byte $A2,$AA,$2A,$A8,$A8,$81,$85,$19  ; $5A mc outlined forest-grass · / lower · right over left
    .byte $C0,$E0,$FC,$FE,$FF,$FB,$FF,$BF  ; $5B mc outlined forest-grass · \ upper · empty over top
    .byte $40,$50,$94,$56,$55,$65,$55,$59  ; $5C mc outlined forest-grass · \ upper · empty over left
    .byte $80,$A0,$28,$A8,$AA,$8A,$AA,$A2  ; $5D mc outlined forest-grass · \ upper · empty over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $5E mc outlined forest-grass · \ upper · top over empty
    .byte $7F,$4F,$93,$54,$55,$65,$55,$59  ; $5F mc outlined forest-grass · \ upper · top over left
    .byte $BF,$8F,$23,$A8,$AA,$8A,$AA,$A2  ; $60 mc outlined forest-grass · \ upper · top over right
    .byte $19,$05,$01,$00,$00,$00,$00,$00  ; $61 mc outlined forest-grass · \ upper · left over empty
    .byte $D9,$C5,$F1,$FC,$FF,$FB,$FF,$BF  ; $62 mc outlined forest-grass · \ upper · left over top
    .byte $99,$85,$21,$A8,$AA,$8A,$AA,$A2  ; $63 mc outlined forest-grass · \ upper · left over right
    .byte $22,$0A,$02,$00,$00,$00,$00,$00  ; $64 mc outlined forest-grass · \ upper · right over empty
    .byte $E2,$CA,$F2,$FC,$FF,$FB,$FF,$BF  ; $65 mc outlined forest-grass · \ upper · right over top
    .byte $62,$4A,$92,$54,$55,$65,$55,$59  ; $66 mc outlined forest-grass · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$BF  ; $67 mc outlined forest-grass · \ lower · empty over top
    .byte $00,$00,$00,$00,$40,$60,$54,$59  ; $68 mc outlined forest-grass · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$80,$A8,$A2  ; $69 mc outlined forest-grass · \ lower · empty over right
    .byte $FF,$EF,$FF,$FE,$3F,$0B,$03,$00  ; $6A mc outlined forest-grass · \ lower · top over empty
    .byte $FF,$EF,$FF,$FE,$3F,$4B,$53,$58  ; $6B mc outlined forest-grass · \ lower · top over left
    .byte $FF,$EF,$FF,$FE,$3F,$8B,$A3,$A0  ; $6C mc outlined forest-grass · \ lower · top over right
    .byte $59,$55,$95,$56,$15,$05,$01,$00  ; $6D mc outlined forest-grass · \ lower · left over empty
    .byte $59,$55,$95,$56,$15,$C5,$F1,$BC  ; $6E mc outlined forest-grass · \ lower · left over top
    .byte $59,$55,$95,$56,$15,$85,$A1,$A0  ; $6F mc outlined forest-grass · \ lower · left over right
    .byte $A2,$AA,$2A,$A8,$2A,$0A,$02,$00  ; $70 mc outlined forest-grass · \ lower · right over empty
    .byte $A2,$AA,$2A,$A8,$2A,$CA,$F2,$BC  ; $71 mc outlined forest-grass · \ lower · right over top
    .byte $A2,$AA,$2A,$A8,$2A,$4A,$52,$58  ; $72 mc outlined forest-grass · \ lower · right over left
    .byte $FC,$FC,$00,$CF,$CF,$00,$F3,$00  ; $73 mc outlined forest-wood · top face
    .byte $DD,$DD,$D7,$D7,$77,$77,$DD,$DD  ; $74 mc outlined forest-wood · left face
    .byte $88,$88,$82,$82,$22,$22,$88,$88  ; $75 mc outlined forest-wood · right face
    .byte $00,$0C,$00,$CF,$CF,$00,$F3,$00  ; $76 mc outlined forest-wood · / upper · empty over top
    .byte $01,$0D,$17,$D7,$77,$77,$DD,$DD  ; $77 mc outlined forest-wood · / upper · empty over left
    .byte $00,$08,$02,$82,$22,$22,$88,$88  ; $78 mc outlined forest-wood · / upper · empty over right
    .byte $FC,$F0,$00,$00,$00,$00,$00,$00  ; $79 mc outlined forest-wood · / upper · top over empty
    .byte $FD,$F1,$07,$17,$77,$77,$DD,$DD  ; $7A mc outlined forest-wood · / upper · top over left
    .byte $FC,$F0,$02,$02,$22,$22,$88,$88  ; $7B mc outlined forest-wood · / upper · top over right
    .byte $DC,$D0,$C0,$00,$00,$00,$00,$00  ; $7C mc outlined forest-wood · / upper · left over empty
    .byte $DC,$D0,$C0,$0F,$CF,$00,$F3,$00  ; $7D mc outlined forest-wood · / upper · left over top
    .byte $DC,$D0,$C2,$02,$22,$22,$88,$88  ; $7E mc outlined forest-wood · / upper · left over right
    .byte $88,$80,$80,$00,$00,$00,$00,$00  ; $7F mc outlined forest-wood · / upper · right over empty
    .byte $88,$80,$80,$0F,$CF,$00,$F3,$00  ; $80 mc outlined forest-wood · / upper · right over top
    .byte $89,$81,$87,$17,$77,$77,$DD,$DD  ; $81 mc outlined forest-wood · / upper · right over left
    .byte $00,$00,$00,$00,$03,$00,$33,$00  ; $82 mc outlined forest-wood · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$07,$1D,$DD  ; $83 mc outlined forest-wood · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$02,$08,$88  ; $84 mc outlined forest-wood · / lower · empty over right
    .byte $FC,$FC,$00,$CF,$CC,$00,$C0,$00  ; $85 mc outlined forest-wood · / lower · top over empty
    .byte $FC,$FC,$00,$CF,$CC,$03,$CD,$1D  ; $86 mc outlined forest-wood · / lower · top over left
    .byte $FC,$FC,$00,$CF,$CC,$02,$C8,$08  ; $87 mc outlined forest-wood · / lower · top over right
    .byte $DD,$DD,$D7,$D7,$74,$70,$C0,$00  ; $88 mc outlined forest-wood · / lower · left over empty
    .byte $DD,$DD,$D7,$D7,$74,$70,$C3,$00  ; $89 mc outlined forest-wood · / lower · left over top
    .byte $DD,$DD,$D7,$D7,$74,$72,$C8,$08  ; $8A mc outlined forest-wood · / lower · left over right
    .byte $88,$88,$82,$82,$20,$20,$80,$00  ; $8B mc outlined forest-wood · / lower · right over empty
    .byte $88,$88,$82,$82,$20,$20,$83,$00  ; $8C mc outlined forest-wood · / lower · right over top
    .byte $88,$88,$82,$82,$20,$23,$8D,$1D  ; $8D mc outlined forest-wood · / lower · right over left
    .byte $C0,$F0,$00,$CF,$CF,$00,$F3,$00  ; $8E mc outlined forest-wood · \ upper · empty over top
    .byte $C0,$D0,$D4,$D7,$77,$77,$DD,$DD  ; $8F mc outlined forest-wood · \ upper · empty over left
    .byte $80,$80,$80,$82,$22,$22,$88,$88  ; $90 mc outlined forest-wood · \ upper · empty over right
    .byte $3C,$0C,$00,$00,$00,$00,$00,$00  ; $91 mc outlined forest-wood · \ upper · top over empty
    .byte $FC,$CC,$D0,$D4,$77,$77,$DD,$DD  ; $92 mc outlined forest-wood · \ upper · top over left
    .byte $BC,$8C,$80,$80,$22,$22,$88,$88  ; $93 mc outlined forest-wood · \ upper · top over right
    .byte $1D,$0D,$03,$00,$00,$00,$00,$00  ; $94 mc outlined forest-wood · \ upper · left over empty
    .byte $DD,$CD,$03,$CC,$CF,$00,$F3,$00  ; $95 mc outlined forest-wood · \ upper · left over top
    .byte $9D,$8D,$83,$80,$22,$22,$88,$88  ; $96 mc outlined forest-wood · \ upper · left over right
    .byte $08,$08,$02,$00,$00,$00,$00,$00  ; $97 mc outlined forest-wood · \ upper · right over empty
    .byte $C8,$C8,$02,$CC,$CF,$00,$F3,$00  ; $98 mc outlined forest-wood · \ upper · right over top
    .byte $C8,$C8,$D2,$D4,$77,$77,$DD,$DD  ; $99 mc outlined forest-wood · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$00,$F0,$00  ; $9A mc outlined forest-wood · \ lower · empty over top
    .byte $00,$00,$00,$00,$40,$70,$DC,$DD  ; $9B mc outlined forest-wood · \ lower · empty over left
    .byte $00,$00,$00,$00,$00,$20,$88,$88  ; $9C mc outlined forest-wood · \ lower · empty over right
    .byte $FC,$FC,$00,$CF,$0F,$00,$03,$00  ; $9D mc outlined forest-wood · \ lower · top over empty
    .byte $FC,$FC,$00,$CF,$0F,$40,$D3,$DC  ; $9E mc outlined forest-wood · \ lower · top over left
    .byte $FC,$FC,$00,$CF,$0F,$00,$83,$88  ; $9F mc outlined forest-wood · \ lower · top over right
    .byte $DD,$DD,$D7,$D7,$37,$07,$01,$00  ; $A0 mc outlined forest-wood · \ lower · left over empty
    .byte $DD,$DD,$D7,$D7,$37,$07,$F1,$00  ; $A1 mc outlined forest-wood · \ lower · left over top
    .byte $DD,$DD,$D7,$D7,$37,$07,$81,$88  ; $A2 mc outlined forest-wood · \ lower · left over right
    .byte $88,$88,$82,$82,$22,$02,$00,$00  ; $A3 mc outlined forest-wood · \ lower · right over empty
    .byte $88,$88,$82,$82,$22,$02,$F0,$00  ; $A4 mc outlined forest-wood · \ lower · right over top
    .byte $88,$88,$82,$82,$22,$42,$D0,$DC  ; $A5 mc outlined forest-wood · \ lower · right over left
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
