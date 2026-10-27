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
    .byte $FC,$FC,$DC,$00,$CF,$CF,$CD,$00  ; $40 mc outlined crypt-stone · top face
    .byte $54,$64,$54,$00,$45,$45,$46,$00  ; $41 mc outlined crypt-stone · left face
    .byte $A8,$88,$A8,$00,$8A,$8A,$88,$00  ; $42 mc outlined crypt-stone · right face
    .byte $00,$0C,$1C,$00,$CF,$CF,$CD,$00  ; $43 mc outlined crypt-stone · / upper · empty over top
    .byte $00,$04,$14,$00,$45,$45,$46,$00  ; $44 mc outlined crypt-stone · / upper · empty over left
    .byte $00,$08,$28,$00,$8A,$8A,$88,$00  ; $45 mc outlined crypt-stone · / upper · empty over right
    .byte $FC,$F0,$C0,$00,$00,$00,$00,$00  ; $46 mc outlined crypt-stone · / upper · top over empty
    .byte $FC,$F0,$C4,$00,$45,$45,$46,$00  ; $47 mc outlined crypt-stone · / upper · top over left
    .byte $FC,$F0,$C8,$00,$8A,$8A,$88,$00  ; $48 mc outlined crypt-stone · / upper · top over right
    .byte $54,$60,$40,$00,$00,$00,$00,$00  ; $49 mc outlined crypt-stone · / upper · left over empty
    .byte $54,$60,$4C,$00,$CF,$CF,$CD,$00  ; $4A mc outlined crypt-stone · / upper · left over top
    .byte $54,$60,$48,$00,$8A,$8A,$88,$00  ; $4B mc outlined crypt-stone · / upper · left over right
    .byte $A8,$80,$80,$00,$00,$00,$00,$00  ; $4C mc outlined crypt-stone · / upper · right over empty
    .byte $A8,$80,$8C,$00,$CF,$CF,$CD,$00  ; $4D mc outlined crypt-stone · / upper · right over top
    .byte $A8,$80,$84,$00,$45,$45,$46,$00  ; $4E mc outlined crypt-stone · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0F,$0D,$00  ; $4F mc outlined crypt-stone · / lower · empty over top
    .byte $00,$00,$00,$00,$01,$05,$06,$00  ; $50 mc outlined crypt-stone · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$0A,$08,$00  ; $51 mc outlined crypt-stone · / lower · empty over right
    .byte $FC,$FC,$DC,$00,$CC,$C0,$C0,$00  ; $52 mc outlined crypt-stone · / lower · top over empty
    .byte $FC,$FC,$DC,$00,$CC,$C1,$C6,$00  ; $53 mc outlined crypt-stone · / lower · top over left
    .byte $FC,$FC,$DC,$00,$CC,$C2,$C8,$00  ; $54 mc outlined crypt-stone · / lower · top over right
    .byte $54,$64,$54,$00,$44,$40,$40,$00  ; $55 mc outlined crypt-stone · / lower · left over empty
    .byte $54,$64,$54,$00,$44,$43,$4D,$00  ; $56 mc outlined crypt-stone · / lower · left over top
    .byte $54,$64,$54,$00,$44,$42,$48,$00  ; $57 mc outlined crypt-stone · / lower · left over right
    .byte $A8,$88,$A8,$00,$88,$80,$80,$00  ; $58 mc outlined crypt-stone · / lower · right over empty
    .byte $A8,$88,$A8,$00,$88,$83,$8D,$00  ; $59 mc outlined crypt-stone · / lower · right over top
    .byte $A8,$88,$A8,$00,$88,$81,$86,$00  ; $5A mc outlined crypt-stone · / lower · right over left
    .byte $C0,$F0,$DC,$00,$CF,$CF,$CD,$00  ; $5B mc outlined crypt-stone · \ upper · empty over top
    .byte $40,$60,$54,$00,$45,$45,$46,$00  ; $5C mc outlined crypt-stone · \ upper · empty over left
    .byte $80,$80,$A8,$00,$8A,$8A,$88,$00  ; $5D mc outlined crypt-stone · \ upper · empty over right
    .byte $3C,$0C,$00,$00,$00,$00,$00,$00  ; $5E mc outlined crypt-stone · \ upper · top over empty
    .byte $7C,$4C,$50,$00,$45,$45,$46,$00  ; $5F mc outlined crypt-stone · \ upper · top over left
    .byte $BC,$8C,$A0,$00,$8A,$8A,$88,$00  ; $60 mc outlined crypt-stone · \ upper · top over right
    .byte $14,$04,$00,$00,$00,$00,$00,$00  ; $61 mc outlined crypt-stone · \ upper · left over empty
    .byte $D4,$C4,$D0,$00,$CF,$CF,$CD,$00  ; $62 mc outlined crypt-stone · \ upper · left over top
    .byte $94,$84,$A0,$00,$8A,$8A,$88,$00  ; $63 mc outlined crypt-stone · \ upper · left over right
    .byte $28,$08,$00,$00,$00,$00,$00,$00  ; $64 mc outlined crypt-stone · \ upper · right over empty
    .byte $E8,$C8,$D0,$00,$CF,$CF,$CD,$00  ; $65 mc outlined crypt-stone · \ upper · right over top
    .byte $68,$48,$50,$00,$45,$45,$46,$00  ; $66 mc outlined crypt-stone · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$C0,$CC,$00  ; $67 mc outlined crypt-stone · \ lower · empty over top
    .byte $00,$00,$00,$00,$40,$40,$44,$00  ; $68 mc outlined crypt-stone · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$80,$88,$00  ; $69 mc outlined crypt-stone · \ lower · empty over right
    .byte $FC,$FC,$DC,$00,$0F,$0F,$01,$00  ; $6A mc outlined crypt-stone · \ lower · top over empty
    .byte $FC,$FC,$DC,$00,$0F,$4F,$41,$00  ; $6B mc outlined crypt-stone · \ lower · top over left
    .byte $FC,$FC,$DC,$00,$0F,$8F,$81,$00  ; $6C mc outlined crypt-stone · \ lower · top over right
    .byte $54,$64,$54,$00,$05,$05,$02,$00  ; $6D mc outlined crypt-stone · \ lower · left over empty
    .byte $54,$64,$54,$00,$05,$C5,$C2,$00  ; $6E mc outlined crypt-stone · \ lower · left over top
    .byte $54,$64,$54,$00,$05,$85,$82,$00  ; $6F mc outlined crypt-stone · \ lower · left over right
    .byte $A8,$88,$A8,$00,$0A,$0A,$00,$00  ; $70 mc outlined crypt-stone · \ lower · right over empty
    .byte $A8,$88,$A8,$00,$0A,$CA,$C0,$00  ; $71 mc outlined crypt-stone · \ lower · right over top
    .byte $A8,$88,$A8,$00,$0A,$4A,$40,$00  ; $72 mc outlined crypt-stone · \ lower · right over left
    .byte $DC,$FC,$F4,$00,$CD,$DF,$CF,$00  ; $73 mc outlined crypt-moss · top face
    .byte $64,$64,$54,$00,$49,$49,$45,$00  ; $74 mc outlined crypt-moss · left face
    .byte $88,$88,$A8,$00,$8A,$8A,$8A,$00  ; $75 mc outlined crypt-moss · right face
    .byte $00,$0C,$34,$00,$CD,$DF,$CF,$00  ; $76 mc outlined crypt-moss · / upper · empty over top
    .byte $00,$04,$14,$00,$49,$49,$45,$00  ; $77 mc outlined crypt-moss · / upper · empty over left
    .byte $00,$08,$28,$00,$8A,$8A,$8A,$00  ; $78 mc outlined crypt-moss · / upper · empty over right
    .byte $DC,$F0,$C0,$00,$00,$00,$00,$00  ; $79 mc outlined crypt-moss · / upper · top over empty
    .byte $DC,$F0,$C4,$00,$49,$49,$45,$00  ; $7A mc outlined crypt-moss · / upper · top over left
    .byte $DC,$F0,$C8,$00,$8A,$8A,$8A,$00  ; $7B mc outlined crypt-moss · / upper · top over right
    .byte $64,$60,$40,$00,$00,$00,$00,$00  ; $7C mc outlined crypt-moss · / upper · left over empty
    .byte $64,$60,$44,$00,$CD,$DF,$CF,$00  ; $7D mc outlined crypt-moss · / upper · left over top
    .byte $64,$60,$48,$00,$8A,$8A,$8A,$00  ; $7E mc outlined crypt-moss · / upper · left over right
    .byte $88,$80,$80,$00,$00,$00,$00,$00  ; $7F mc outlined crypt-moss · / upper · right over empty
    .byte $88,$80,$84,$00,$CD,$DF,$CF,$00  ; $80 mc outlined crypt-moss · / upper · right over top
    .byte $88,$80,$84,$00,$49,$49,$45,$00  ; $81 mc outlined crypt-moss · / upper · right over left
    .byte $00,$00,$00,$00,$01,$0F,$0F,$00  ; $82 mc outlined crypt-moss · / lower · empty over top
    .byte $00,$00,$00,$00,$01,$09,$05,$00  ; $83 mc outlined crypt-moss · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$0A,$0A,$00  ; $84 mc outlined crypt-moss · / lower · empty over right
    .byte $DC,$FC,$F4,$00,$CC,$D0,$C0,$00  ; $85 mc outlined crypt-moss · / lower · top over empty
    .byte $DC,$FC,$F4,$00,$CC,$D1,$C5,$00  ; $86 mc outlined crypt-moss · / lower · top over left
    .byte $DC,$FC,$F4,$00,$CC,$D2,$CA,$00  ; $87 mc outlined crypt-moss · / lower · top over right
    .byte $64,$64,$54,$00,$48,$40,$40,$00  ; $88 mc outlined crypt-moss · / lower · left over empty
    .byte $64,$64,$54,$00,$48,$43,$4F,$00  ; $89 mc outlined crypt-moss · / lower · left over top
    .byte $64,$64,$54,$00,$48,$42,$4A,$00  ; $8A mc outlined crypt-moss · / lower · left over right
    .byte $88,$88,$A8,$00,$88,$80,$80,$00  ; $8B mc outlined crypt-moss · / lower · right over empty
    .byte $88,$88,$A8,$00,$88,$83,$8F,$00  ; $8C mc outlined crypt-moss · / lower · right over top
    .byte $88,$88,$A8,$00,$88,$81,$85,$00  ; $8D mc outlined crypt-moss · / lower · right over left
    .byte $C0,$F0,$F4,$00,$CD,$DF,$CF,$00  ; $8E mc outlined crypt-moss · \ upper · empty over top
    .byte $40,$60,$54,$00,$49,$49,$45,$00  ; $8F mc outlined crypt-moss · \ upper · empty over left
    .byte $80,$80,$A8,$00,$8A,$8A,$8A,$00  ; $90 mc outlined crypt-moss · \ upper · empty over right
    .byte $1C,$0C,$00,$00,$00,$00,$00,$00  ; $91 mc outlined crypt-moss · \ upper · top over empty
    .byte $5C,$4C,$50,$00,$49,$49,$45,$00  ; $92 mc outlined crypt-moss · \ upper · top over left
    .byte $9C,$8C,$A0,$00,$8A,$8A,$8A,$00  ; $93 mc outlined crypt-moss · \ upper · top over right
    .byte $24,$04,$00,$00,$00,$00,$00,$00  ; $94 mc outlined crypt-moss · \ upper · left over empty
    .byte $E4,$C4,$F0,$00,$CD,$DF,$CF,$00  ; $95 mc outlined crypt-moss · \ upper · left over top
    .byte $A4,$84,$A0,$00,$8A,$8A,$8A,$00  ; $96 mc outlined crypt-moss · \ upper · left over right
    .byte $08,$08,$00,$00,$00,$00,$00,$00  ; $97 mc outlined crypt-moss · \ upper · right over empty
    .byte $C8,$C8,$F0,$00,$CD,$DF,$CF,$00  ; $98 mc outlined crypt-moss · \ upper · right over top
    .byte $48,$48,$50,$00,$49,$49,$45,$00  ; $99 mc outlined crypt-moss · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$D0,$CC,$00  ; $9A mc outlined crypt-moss · \ lower · empty over top
    .byte $00,$00,$00,$00,$40,$40,$44,$00  ; $9B mc outlined crypt-moss · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$80,$88,$00  ; $9C mc outlined crypt-moss · \ lower · empty over right
    .byte $DC,$FC,$F4,$00,$0D,$0F,$03,$00  ; $9D mc outlined crypt-moss · \ lower · top over empty
    .byte $DC,$FC,$F4,$00,$0D,$4F,$43,$00  ; $9E mc outlined crypt-moss · \ lower · top over left
    .byte $DC,$FC,$F4,$00,$0D,$8F,$83,$00  ; $9F mc outlined crypt-moss · \ lower · top over right
    .byte $64,$64,$54,$00,$09,$09,$01,$00  ; $A0 mc outlined crypt-moss · \ lower · left over empty
    .byte $64,$64,$54,$00,$09,$C9,$C1,$00  ; $A1 mc outlined crypt-moss · \ lower · left over top
    .byte $64,$64,$54,$00,$09,$89,$81,$00  ; $A2 mc outlined crypt-moss · \ lower · left over right
    .byte $88,$88,$A8,$00,$0A,$0A,$02,$00  ; $A3 mc outlined crypt-moss · \ lower · right over empty
    .byte $88,$88,$A8,$00,$0A,$CA,$C2,$00  ; $A4 mc outlined crypt-moss · \ lower · right over top
    .byte $88,$88,$A8,$00,$0A,$4A,$42,$00  ; $A5 mc outlined crypt-moss · \ lower · right over left
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
