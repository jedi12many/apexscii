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
    .byte $EE,$EE,$EE,$00,$BB,$BB,$BB,$00  ; $40 town-cobble · top face
    .byte $00,$3F,$5F,$6F,$77,$7B,$7D,$7E  ; $41 town-cobble · left face
    .byte $00,$15,$0A,$45,$22,$51,$28,$54  ; $42 town-cobble · right face
    .byte $02,$0E,$2E,$00,$BB,$BB,$BB,$00  ; $43 town-cobble · / upper · empty over top
    .byte $00,$0F,$1F,$6F,$77,$7B,$7D,$7E  ; $44 town-cobble · / upper · empty over left
    .byte $00,$05,$0A,$45,$22,$51,$28,$54  ; $45 town-cobble · / upper · empty over right
    .byte $EC,$E0,$C0,$00,$00,$00,$00,$00  ; $46 town-cobble · / upper · top over empty
    .byte $EC,$EF,$DF,$6F,$77,$7B,$7D,$7E  ; $47 town-cobble · / upper · top over left
    .byte $EC,$E5,$CA,$45,$22,$51,$28,$54  ; $48 town-cobble · / upper · top over right
    .byte $00,$30,$40,$00,$00,$00,$00,$00  ; $49 town-cobble · / upper · left over empty
    .byte $02,$3E,$6E,$00,$BB,$BB,$BB,$00  ; $4A town-cobble · / upper · left over top
    .byte $00,$35,$4A,$45,$22,$51,$28,$54  ; $4B town-cobble · / upper · left over right
    .byte $00,$10,$00,$00,$00,$00,$00,$00  ; $4C town-cobble · / upper · right over empty
    .byte $02,$1E,$2E,$00,$BB,$BB,$BB,$00  ; $4D town-cobble · / upper · right over top
    .byte $00,$1F,$1F,$6F,$77,$7B,$7D,$7E  ; $4E town-cobble · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0B,$3B,$00  ; $4F town-cobble · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$0B,$3D,$7E  ; $50 town-cobble · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$01,$28,$54  ; $51 town-cobble · / lower · empty over right
    .byte $EE,$EE,$EE,$00,$B8,$B0,$80,$00  ; $52 town-cobble · / lower · top over empty
    .byte $EE,$EE,$EE,$00,$BB,$BB,$BD,$7E  ; $53 town-cobble · / lower · top over left
    .byte $EE,$EE,$EE,$00,$BA,$B1,$A8,$54  ; $54 town-cobble · / lower · top over right
    .byte $00,$3F,$5F,$6F,$74,$70,$40,$00  ; $55 town-cobble · / lower · left over empty
    .byte $00,$3F,$5F,$6F,$77,$7B,$7B,$00  ; $56 town-cobble · / lower · left over top
    .byte $00,$3F,$5F,$6F,$76,$71,$68,$54  ; $57 town-cobble · / lower · left over right
    .byte $00,$15,$0A,$45,$20,$50,$00,$00  ; $58 town-cobble · / lower · right over empty
    .byte $00,$15,$0A,$45,$23,$5B,$3B,$00  ; $59 town-cobble · / lower · right over top
    .byte $00,$15,$0A,$45,$23,$5B,$3D,$7E  ; $5A town-cobble · / lower · right over left
    .byte $C0,$E0,$EC,$00,$BB,$BB,$BB,$00  ; $5B town-cobble · \ upper · empty over top
    .byte $00,$30,$5C,$6F,$77,$7B,$7D,$7E  ; $5C town-cobble · \ upper · empty over left
    .byte $00,$10,$08,$45,$22,$51,$28,$54  ; $5D town-cobble · \ upper · empty over right
    .byte $2E,$0E,$02,$00,$00,$00,$00,$00  ; $5E town-cobble · \ upper · top over empty
    .byte $2E,$3E,$5E,$6F,$77,$7B,$7D,$7E  ; $5F town-cobble · \ upper · top over left
    .byte $2E,$1E,$0A,$45,$22,$51,$28,$54  ; $60 town-cobble · \ upper · top over right
    .byte $00,$0F,$03,$00,$00,$00,$00,$00  ; $61 town-cobble · \ upper · left over empty
    .byte $C0,$EF,$EF,$00,$BB,$BB,$BB,$00  ; $62 town-cobble · \ upper · left over top
    .byte $00,$1F,$0B,$45,$22,$51,$28,$54  ; $63 town-cobble · \ upper · left over right
    .byte $00,$05,$02,$00,$00,$00,$00,$00  ; $64 town-cobble · \ upper · right over empty
    .byte $C0,$E5,$EE,$00,$BB,$BB,$BB,$00  ; $65 town-cobble · \ upper · right over top
    .byte $00,$35,$5E,$6F,$77,$7B,$7D,$7E  ; $66 town-cobble · \ upper · right over left
    .byte $00,$00,$00,$00,$80,$B0,$B8,$00  ; $67 town-cobble · \ lower · empty over top
    .byte $00,$00,$00,$00,$40,$70,$7C,$7E  ; $68 town-cobble · \ lower · empty over left
    .byte $00,$00,$00,$00,$00,$50,$28,$54  ; $69 town-cobble · \ lower · empty over right
    .byte $EE,$EE,$EE,$00,$3B,$0B,$03,$00  ; $6A town-cobble · \ lower · top over empty
    .byte $EE,$EE,$EE,$00,$7B,$7B,$7F,$7E  ; $6B town-cobble · \ lower · top over left
    .byte $EE,$EE,$EE,$00,$3B,$5B,$2B,$54  ; $6C town-cobble · \ lower · top over right
    .byte $00,$3F,$5F,$6F,$37,$0B,$01,$00  ; $6D town-cobble · \ lower · left over empty
    .byte $00,$3F,$5F,$6F,$B7,$BB,$B9,$00  ; $6E town-cobble · \ lower · left over top
    .byte $00,$3F,$5F,$6F,$37,$5B,$29,$54  ; $6F town-cobble · \ lower · left over right
    .byte $00,$15,$0A,$45,$22,$01,$00,$00  ; $70 town-cobble · \ lower · right over empty
    .byte $00,$15,$0A,$45,$A2,$B1,$B8,$00  ; $71 town-cobble · \ lower · right over top
    .byte $00,$15,$0A,$45,$62,$71,$7C,$7E  ; $72 town-cobble · \ lower · right over left
    .byte $7E,$FF,$FF,$AA,$E7,$FF,$FF,$AA  ; $73 town-roof · top face
    .byte $7F,$7F,$7F,$00,$F7,$F7,$F7,$00  ; $74 town-roof · left face
    .byte $2A,$55,$2A,$00,$A2,$55,$A2,$00  ; $75 town-roof · right face
    .byte $02,$0F,$3F,$AA,$E7,$FF,$FF,$AA  ; $76 town-roof · / upper · empty over top
    .byte $03,$0F,$3F,$00,$F7,$F7,$F7,$00  ; $77 town-roof · / upper · empty over left
    .byte $02,$05,$2A,$00,$A2,$55,$A2,$00  ; $78 town-roof · / upper · empty over right
    .byte $7C,$F0,$C0,$00,$00,$00,$00,$00  ; $79 town-roof · / upper · top over empty
    .byte $7F,$FF,$FF,$00,$F7,$F7,$F7,$00  ; $7A town-roof · / upper · top over left
    .byte $7E,$F5,$EA,$00,$A2,$55,$A2,$00  ; $7B town-roof · / upper · top over right
    .byte $7C,$70,$40,$00,$00,$00,$00,$00  ; $7C town-roof · / upper · left over empty
    .byte $7E,$7F,$7F,$AA,$E7,$FF,$FF,$AA  ; $7D town-roof · / upper · left over top
    .byte $7E,$75,$6A,$00,$A2,$55,$A2,$00  ; $7E town-roof · / upper · left over right
    .byte $28,$50,$00,$00,$00,$00,$00,$00  ; $7F town-roof · / upper · right over empty
    .byte $2A,$5F,$3F,$AA,$E7,$FF,$FF,$AA  ; $80 town-roof · / upper · right over top
    .byte $2B,$5F,$3F,$00,$F7,$F7,$F7,$00  ; $81 town-roof · / upper · right over left
    .byte $00,$00,$00,$00,$03,$0F,$3F,$AA  ; $82 town-roof · / lower · empty over top
    .byte $00,$00,$00,$00,$03,$07,$37,$00  ; $83 town-roof · / lower · empty over left
    .byte $00,$00,$00,$00,$02,$05,$22,$00  ; $84 town-roof · / lower · empty over right
    .byte $7E,$FF,$FF,$AA,$E4,$F0,$C0,$00  ; $85 town-roof · / lower · top over empty
    .byte $7E,$FF,$FF,$AA,$E7,$F7,$F7,$00  ; $86 town-roof · / lower · top over left
    .byte $7E,$FF,$FF,$AA,$E6,$F5,$E2,$00  ; $87 town-roof · / lower · top over right
    .byte $7F,$7F,$7F,$00,$F4,$F0,$C0,$00  ; $88 town-roof · / lower · left over empty
    .byte $7F,$7F,$7F,$00,$F7,$FF,$FF,$AA  ; $89 town-roof · / lower · left over top
    .byte $7F,$7F,$7F,$00,$F6,$F5,$E2,$00  ; $8A town-roof · / lower · left over right
    .byte $2A,$55,$2A,$00,$A0,$50,$80,$00  ; $8B town-roof · / lower · right over empty
    .byte $2A,$55,$2A,$00,$A3,$5F,$BF,$AA  ; $8C town-roof · / lower · right over top
    .byte $2A,$55,$2A,$00,$A3,$57,$B7,$00  ; $8D town-roof · / lower · right over left
    .byte $40,$F0,$FC,$AA,$E7,$FF,$FF,$AA  ; $8E town-roof · \ upper · empty over top
    .byte $40,$70,$7C,$00,$F7,$F7,$F7,$00  ; $8F town-roof · \ upper · empty over left
    .byte $00,$50,$28,$00,$A2,$55,$A2,$00  ; $90 town-roof · \ upper · empty over right
    .byte $3E,$0F,$03,$00,$00,$00,$00,$00  ; $91 town-roof · \ upper · top over empty
    .byte $7E,$7F,$7F,$00,$F7,$F7,$F7,$00  ; $92 town-roof · \ upper · top over left
    .byte $3E,$5F,$2B,$00,$A2,$55,$A2,$00  ; $93 town-roof · \ upper · top over right
    .byte $3F,$0F,$03,$00,$00,$00,$00,$00  ; $94 town-roof · \ upper · left over empty
    .byte $7F,$FF,$FF,$AA,$E7,$FF,$FF,$AA  ; $95 town-roof · \ upper · left over top
    .byte $3F,$5F,$2B,$00,$A2,$55,$A2,$00  ; $96 town-roof · \ upper · left over right
    .byte $2A,$05,$02,$00,$00,$00,$00,$00  ; $97 town-roof · \ upper · right over empty
    .byte $6A,$F5,$FE,$AA,$E7,$FF,$FF,$AA  ; $98 town-roof · \ upper · right over top
    .byte $6A,$75,$7E,$00,$F7,$F7,$F7,$00  ; $99 town-roof · \ upper · right over left
    .byte $00,$00,$00,$00,$C0,$F0,$FC,$AA  ; $9A town-roof · \ lower · empty over top
    .byte $00,$00,$00,$00,$C0,$F0,$F4,$00  ; $9B town-roof · \ lower · empty over left
    .byte $00,$00,$00,$00,$80,$50,$A0,$00  ; $9C town-roof · \ lower · empty over right
    .byte $7E,$FF,$FF,$AA,$27,$0F,$03,$00  ; $9D town-roof · \ lower · top over empty
    .byte $7E,$FF,$FF,$AA,$E7,$FF,$F7,$00  ; $9E town-roof · \ lower · top over left
    .byte $7E,$FF,$FF,$AA,$A7,$5F,$A3,$00  ; $9F town-roof · \ lower · top over right
    .byte $7F,$7F,$7F,$00,$37,$07,$03,$00  ; $A0 town-roof · \ lower · left over empty
    .byte $7F,$7F,$7F,$00,$F7,$F7,$FF,$AA  ; $A1 town-roof · \ lower · left over top
    .byte $7F,$7F,$7F,$00,$B7,$57,$A3,$00  ; $A2 town-roof · \ lower · left over right
    .byte $2A,$55,$2A,$00,$22,$05,$02,$00  ; $A3 town-roof · \ lower · right over empty
    .byte $2A,$55,$2A,$00,$E2,$F5,$FE,$AA  ; $A4 town-roof · \ lower · right over top
    .byte $2A,$55,$2A,$00,$E2,$F5,$F6,$00  ; $A5 town-roof · \ lower · right over left
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
