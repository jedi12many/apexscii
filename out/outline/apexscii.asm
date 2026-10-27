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
    .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ; $40 outlined smooth · top face
    .byte $AA,$55,$AA,$55,$AA,$55,$AA,$55  ; $41 outlined smooth · left face
    .byte $AA,$00,$AA,$00,$AA,$00,$AA,$00  ; $42 outlined smooth · right face
    .byte $03,$0F,$3F,$FF,$FF,$FF,$FF,$FF  ; $43 outlined smooth · / upper · empty over top
    .byte $02,$05,$2A,$55,$AA,$55,$AA,$55  ; $44 outlined smooth · / upper · empty over left
    .byte $02,$00,$2A,$00,$AA,$00,$AA,$00  ; $45 outlined smooth · / upper · empty over right
    .byte $FC,$F0,$C0,$00,$00,$00,$00,$00  ; $46 outlined smooth · / upper · top over empty
    .byte $FE,$F1,$CA,$15,$AA,$55,$AA,$55  ; $47 outlined smooth · / upper · top over left
    .byte $FE,$F0,$CA,$00,$AA,$00,$AA,$00  ; $48 outlined smooth · / upper · top over right
    .byte $A8,$50,$80,$00,$00,$00,$00,$00  ; $49 outlined smooth · / upper · left over empty
    .byte $AB,$53,$8F,$3F,$FF,$FF,$FF,$FF  ; $4A outlined smooth · / upper · left over top
    .byte $AA,$50,$8A,$00,$AA,$00,$AA,$00  ; $4B outlined smooth · / upper · left over right
    .byte $A8,$00,$80,$00,$00,$00,$00,$00  ; $4C outlined smooth · / upper · right over empty
    .byte $AB,$03,$8F,$3F,$FF,$FF,$FF,$FF  ; $4D outlined smooth · / upper · right over top
    .byte $AA,$01,$8A,$15,$AA,$55,$AA,$55  ; $4E outlined smooth · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0F,$3F,$FF  ; $4F outlined smooth · / lower · empty over top
    .byte $00,$00,$00,$00,$02,$05,$2A,$55  ; $50 outlined smooth · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$00,$2A,$00  ; $51 outlined smooth · / lower · empty over right
    .byte $FF,$FF,$FF,$FF,$FC,$F0,$C0,$00  ; $52 outlined smooth · / lower · top over empty
    .byte $FF,$FF,$FF,$FF,$FC,$F1,$CA,$15  ; $53 outlined smooth · / lower · top over left
    .byte $FF,$FF,$FF,$FF,$FC,$F0,$CA,$00  ; $54 outlined smooth · / lower · top over right
    .byte $AA,$55,$AA,$55,$A8,$50,$80,$00  ; $55 outlined smooth · / lower · left over empty
    .byte $AA,$55,$AA,$55,$A8,$53,$8F,$3F  ; $56 outlined smooth · / lower · left over top
    .byte $AA,$55,$AA,$55,$A8,$50,$8A,$00  ; $57 outlined smooth · / lower · left over right
    .byte $AA,$00,$AA,$00,$A8,$00,$80,$00  ; $58 outlined smooth · / lower · right over empty
    .byte $AA,$00,$AA,$00,$A8,$03,$8F,$3F  ; $59 outlined smooth · / lower · right over top
    .byte $AA,$00,$AA,$00,$A8,$01,$8A,$15  ; $5A outlined smooth · / lower · right over left
    .byte $C0,$F0,$FC,$FF,$FF,$FF,$FF,$FF  ; $5B outlined smooth · \ upper · empty over top
    .byte $80,$50,$A8,$55,$AA,$55,$AA,$55  ; $5C outlined smooth · \ upper · empty over left
    .byte $80,$00,$A8,$00,$AA,$00,$AA,$00  ; $5D outlined smooth · \ upper · empty over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $5E outlined smooth · \ upper · top over empty
    .byte $BF,$4F,$A3,$54,$AA,$55,$AA,$55  ; $5F outlined smooth · \ upper · top over left
    .byte $BF,$0F,$A3,$00,$AA,$00,$AA,$00  ; $60 outlined smooth · \ upper · top over right
    .byte $2A,$05,$02,$00,$00,$00,$00,$00  ; $61 outlined smooth · \ upper · left over empty
    .byte $EA,$C5,$F2,$FC,$FF,$FF,$FF,$FF  ; $62 outlined smooth · \ upper · left over top
    .byte $AA,$05,$A2,$00,$AA,$00,$AA,$00  ; $63 outlined smooth · \ upper · left over right
    .byte $2A,$00,$02,$00,$00,$00,$00,$00  ; $64 outlined smooth · \ upper · right over empty
    .byte $EA,$C0,$F2,$FC,$FF,$FF,$FF,$FF  ; $65 outlined smooth · \ upper · right over top
    .byte $AA,$40,$A2,$54,$AA,$55,$AA,$55  ; $66 outlined smooth · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$FF  ; $67 outlined smooth · \ lower · empty over top
    .byte $00,$00,$00,$00,$80,$50,$A8,$55  ; $68 outlined smooth · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$00,$A8,$00  ; $69 outlined smooth · \ lower · empty over right
    .byte $FF,$FF,$FF,$FF,$3F,$0F,$03,$00  ; $6A outlined smooth · \ lower · top over empty
    .byte $FF,$FF,$FF,$FF,$3F,$4F,$A3,$54  ; $6B outlined smooth · \ lower · top over left
    .byte $FF,$FF,$FF,$FF,$3F,$0F,$A3,$00  ; $6C outlined smooth · \ lower · top over right
    .byte $AA,$55,$AA,$55,$2A,$05,$02,$00  ; $6D outlined smooth · \ lower · left over empty
    .byte $AA,$55,$AA,$55,$2A,$C5,$F2,$FC  ; $6E outlined smooth · \ lower · left over top
    .byte $AA,$55,$AA,$55,$2A,$05,$A2,$00  ; $6F outlined smooth · \ lower · left over right
    .byte $AA,$00,$AA,$00,$2A,$00,$02,$00  ; $70 outlined smooth · \ lower · right over empty
    .byte $AA,$00,$AA,$00,$2A,$C0,$F2,$FC  ; $71 outlined smooth · \ lower · right over top
    .byte $AA,$00,$AA,$00,$2A,$40,$A2,$54  ; $72 outlined smooth · \ lower · right over left
    .byte $77,$FF,$DD,$FF,$77,$FF,$DD,$FF  ; $73 outlined brick · top face
    .byte $7F,$7F,$7F,$00,$F7,$F7,$F7,$00  ; $74 outlined brick · left face
    .byte $2A,$55,$2A,$00,$A2,$55,$A2,$00  ; $75 outlined brick · right face
    .byte $03,$0F,$1D,$FF,$77,$FF,$DD,$FF  ; $76 outlined brick · / upper · empty over top
    .byte $03,$0F,$3F,$00,$F7,$F7,$F7,$00  ; $77 outlined brick · / upper · empty over left
    .byte $02,$05,$2A,$00,$A2,$55,$A2,$00  ; $78 outlined brick · / upper · empty over right
    .byte $74,$F0,$C0,$00,$00,$00,$00,$00  ; $79 outlined brick · / upper · top over empty
    .byte $77,$F3,$CF,$00,$F7,$F7,$F7,$00  ; $7A outlined brick · / upper · top over left
    .byte $76,$F1,$CA,$00,$A2,$55,$A2,$00  ; $7B outlined brick · / upper · top over right
    .byte $7C,$70,$40,$00,$00,$00,$00,$00  ; $7C outlined brick · / upper · left over empty
    .byte $7F,$73,$4D,$3F,$77,$FF,$DD,$FF  ; $7D outlined brick · / upper · left over top
    .byte $7E,$71,$4A,$00,$A2,$55,$A2,$00  ; $7E outlined brick · / upper · left over right
    .byte $28,$50,$00,$00,$00,$00,$00,$00  ; $7F outlined brick · / upper · right over empty
    .byte $2B,$53,$0D,$3F,$77,$FF,$DD,$FF  ; $80 outlined brick · / upper · right over top
    .byte $2B,$53,$0F,$00,$F7,$F7,$F7,$00  ; $81 outlined brick · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0F,$1D,$FF  ; $82 outlined brick · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$07,$37,$00  ; $83 outlined brick · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$05,$22,$00  ; $84 outlined brick · / lower · empty over right
    .byte $77,$FF,$DD,$FF,$74,$F0,$C0,$00  ; $85 outlined brick · / lower · top over empty
    .byte $77,$FF,$DD,$FF,$74,$F3,$C7,$00  ; $86 outlined brick · / lower · top over left
    .byte $77,$FF,$DD,$FF,$74,$F1,$C2,$00  ; $87 outlined brick · / lower · top over right
    .byte $7F,$7F,$7F,$00,$F4,$F0,$C0,$00  ; $88 outlined brick · / lower · left over empty
    .byte $7F,$7F,$7F,$00,$F4,$F3,$CD,$3F  ; $89 outlined brick · / lower · left over top
    .byte $7F,$7F,$7F,$00,$F4,$F1,$C2,$00  ; $8A outlined brick · / lower · left over right
    .byte $2A,$55,$2A,$00,$A0,$50,$80,$00  ; $8B outlined brick · / lower · right over empty
    .byte $2A,$55,$2A,$00,$A0,$53,$8D,$3F  ; $8C outlined brick · / lower · right over top
    .byte $2A,$55,$2A,$00,$A0,$53,$87,$00  ; $8D outlined brick · / lower · right over left
    .byte $40,$F0,$DC,$FF,$77,$FF,$DD,$FF  ; $8E outlined brick · \ upper · empty over top
    .byte $40,$70,$7C,$00,$F7,$F7,$F7,$00  ; $8F outlined brick · \ upper · empty over left
    .byte $00,$50,$28,$00,$A2,$55,$A2,$00  ; $90 outlined brick · \ upper · empty over right
    .byte $37,$0F,$01,$00,$00,$00,$00,$00  ; $91 outlined brick · \ upper · top over empty
    .byte $77,$4F,$71,$00,$F7,$F7,$F7,$00  ; $92 outlined brick · \ upper · top over left
    .byte $37,$4F,$21,$00,$A2,$55,$A2,$00  ; $93 outlined brick · \ upper · top over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $94 outlined brick · \ upper · left over empty
    .byte $7F,$CF,$D3,$FC,$77,$FF,$DD,$FF  ; $95 outlined brick · \ upper · left over top
    .byte $3F,$4F,$23,$00,$A2,$55,$A2,$00  ; $96 outlined brick · \ upper · left over right
    .byte $2A,$05,$02,$00,$00,$00,$00,$00  ; $97 outlined brick · \ upper · right over empty
    .byte $6A,$C5,$D2,$FC,$77,$FF,$DD,$FF  ; $98 outlined brick · \ upper · right over top
    .byte $6A,$45,$72,$00,$F7,$F7,$F7,$00  ; $99 outlined brick · \ upper · right over left
    .byte $00,$00,$00,$00,$40,$F0,$DC,$FF  ; $9A outlined brick · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$F0,$F4,$00  ; $9B outlined brick · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$50,$A0,$00  ; $9C outlined brick · \ lower · empty over right
    .byte $77,$FF,$DD,$FF,$37,$0F,$01,$00  ; $9D outlined brick · \ lower · top over empty
    .byte $77,$FF,$DD,$FF,$37,$CF,$F1,$00  ; $9E outlined brick · \ lower · top over left
    .byte $77,$FF,$DD,$FF,$37,$4F,$A1,$00  ; $9F outlined brick · \ lower · top over right
    .byte $7F,$7F,$7F,$00,$37,$07,$03,$00  ; $A0 outlined brick · \ lower · left over empty
    .byte $7F,$7F,$7F,$00,$37,$C7,$D3,$FC  ; $A1 outlined brick · \ lower · left over top
    .byte $7F,$7F,$7F,$00,$37,$47,$A3,$00  ; $A2 outlined brick · \ lower · left over right
    .byte $2A,$55,$2A,$00,$22,$05,$02,$00  ; $A3 outlined brick · \ lower · right over empty
    .byte $2A,$55,$2A,$00,$22,$C5,$D2,$FC  ; $A4 outlined brick · \ lower · right over top
    .byte $2A,$55,$2A,$00,$22,$C5,$F2,$00  ; $A5 outlined brick · \ lower · right over left
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
