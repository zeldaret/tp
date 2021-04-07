lbl_802250F4:
/* 802250F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802250F8  7C 08 02 A6 */	mflr r0
/* 802250FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80225100  39 61 00 20 */	addi r11, r1, 0x20
/* 80225104  48 13 D0 D1 */	bl _savegpr_27
/* 80225108  7C 7E 1B 78 */	mr r30, r3
/* 8022510C  3B E0 00 00 */	li r31, 0
/* 80225110  80 83 01 24 */	lwz r4, 0x124(r3)
/* 80225114  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80225118  40 82 00 64 */	bne lbl_8022517C
/* 8022511C  54 85 05 EF */	rlwinm. r5, r4, 0, 0x17, 0x17
/* 80225120  41 82 00 1C */	beq lbl_8022513C
/* 80225124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80225128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022512C  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80225130  88 03 04 CF */	lbz r0, 0x4cf(r3)
/* 80225134  28 00 00 00 */	cmplwi r0, 0
/* 80225138  40 82 00 44 */	bne lbl_8022517C
lbl_8022513C:
/* 8022513C  54 80 00 43 */	rlwinm. r0, r4, 0, 1, 1
/* 80225140  41 82 00 0C */	beq lbl_8022514C
/* 80225144  28 05 00 00 */	cmplwi r5, 0
/* 80225148  41 82 00 34 */	beq lbl_8022517C
lbl_8022514C:
/* 8022514C  54 80 00 01 */	rlwinm. r0, r4, 0, 0, 0
/* 80225150  40 82 00 2C */	bne lbl_8022517C
/* 80225154  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80225158  40 82 00 24 */	bne lbl_8022517C
/* 8022515C  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80225160  40 82 00 1C */	bne lbl_8022517C
/* 80225164  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80225168  40 82 00 14 */	bne lbl_8022517C
/* 8022516C  54 80 01 4B */	rlwinm. r0, r4, 0, 5, 5
/* 80225170  40 82 00 0C */	bne lbl_8022517C
/* 80225174  54 80 00 C7 */	rlwinm. r0, r4, 0, 3, 3
/* 80225178  41 82 00 20 */	beq lbl_80225198
lbl_8022517C:
/* 8022517C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225180  4B FF 3E 9D */	bl setAlphaButtonAnimeMin__13dMeter2Draw_cFv
/* 80225184  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225188  4B FF 3F ED */	bl setAlphaButtonAAnimeMin__13dMeter2Draw_cFv
/* 8022518C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225190  4B FF 41 95 */	bl setAlphaButtonBAnimeMin__13dMeter2Draw_cFv
/* 80225194  48 00 00 AC */	b lbl_80225240
lbl_80225198:
/* 80225198  54 80 01 CF */	rlwinm. r0, r4, 0, 7, 7
/* 8022519C  40 82 00 78 */	bne lbl_80225214
/* 802251A0  28 05 00 00 */	cmplwi r5, 0
/* 802251A4  40 82 00 60 */	bne lbl_80225204
/* 802251A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802251AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802251B0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 802251B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 802251B8  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 802251BC  7D 89 03 A6 */	mtctr r12
/* 802251C0  4E 80 04 21 */	bctrl 
/* 802251C4  2C 03 00 00 */	cmpwi r3, 0
/* 802251C8  40 82 00 3C */	bne lbl_80225204
/* 802251CC  80 1E 01 24 */	lwz r0, 0x124(r30)
/* 802251D0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 802251D4  41 82 00 40 */	beq lbl_80225214
/* 802251D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802251DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802251E0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 802251E4  28 00 00 00 */	cmplwi r0, 0
/* 802251E8  41 82 00 10 */	beq lbl_802251F8
/* 802251EC  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 802251F0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802251F4  48 00 00 08 */	b lbl_802251FC
lbl_802251F8:
/* 802251F8  38 00 00 00 */	li r0, 0
lbl_802251FC:
/* 802251FC  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80225200  41 82 00 14 */	beq lbl_80225214
lbl_80225204:
/* 80225204  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225208  4B FF 3E 15 */	bl setAlphaButtonAnimeMin__13dMeter2Draw_cFv
/* 8022520C  3B E0 00 01 */	li r31, 1
/* 80225210  48 00 00 30 */	b lbl_80225240
lbl_80225214:
/* 80225214  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80225218  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8022521C  88 03 00 E8 */	lbz r0, 0xe8(r3)
/* 80225220  28 00 00 00 */	cmplwi r0, 0
/* 80225224  41 82 00 14 */	beq lbl_80225238
/* 80225228  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 8022522C  4B FF 3D F1 */	bl setAlphaButtonAnimeMin__13dMeter2Draw_cFv
/* 80225230  3B E0 00 01 */	li r31, 1
/* 80225234  48 00 00 0C */	b lbl_80225240
lbl_80225238:
/* 80225238  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 8022523C  4B FF 3E 6D */	bl setAlphaButtonAnimeMax__13dMeter2Draw_cFv
lbl_80225240:
/* 80225240  38 00 00 00 */	li r0, 0
/* 80225244  98 1E 01 E6 */	stb r0, 0x1e6(r30)
/* 80225248  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8022524C  28 00 00 01 */	cmplwi r0, 1
/* 80225250  40 82 00 D4 */	bne lbl_80225324
/* 80225254  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80225258  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8022525C  88 03 00 E8 */	lbz r0, 0xe8(r3)
/* 80225260  28 00 00 00 */	cmplwi r0, 0
/* 80225264  41 82 00 10 */	beq lbl_80225274
/* 80225268  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 8022526C  4B FF 3F 09 */	bl setAlphaButtonAAnimeMin__13dMeter2Draw_cFv
/* 80225270  48 00 00 80 */	b lbl_802252F0
lbl_80225274:
/* 80225274  80 1E 01 24 */	lwz r0, 0x124(r30)
/* 80225278  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8022527C  40 82 00 54 */	bne lbl_802252D0
/* 80225280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80225284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80225288  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8022528C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80225290  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80225294  7D 89 03 A6 */	mtctr r12
/* 80225298  4E 80 04 21 */	bctrl 
/* 8022529C  2C 03 00 00 */	cmpwi r3, 0
/* 802252A0  40 82 00 30 */	bne lbl_802252D0
/* 802252A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802252A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802252AC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 802252B0  28 00 00 00 */	cmplwi r0, 0
/* 802252B4  41 82 00 10 */	beq lbl_802252C4
/* 802252B8  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 802252BC  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802252C0  48 00 00 08 */	b lbl_802252C8
lbl_802252C4:
/* 802252C4  38 00 00 00 */	li r0, 0
lbl_802252C8:
/* 802252C8  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 802252CC  40 82 00 1C */	bne lbl_802252E8
lbl_802252D0:
/* 802252D0  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802252D4  4B FF 3F 85 */	bl setAlphaButtonAAnimeMax__13dMeter2Draw_cFv
/* 802252D8  88 1E 01 E6 */	lbz r0, 0x1e6(r30)
/* 802252DC  60 00 00 01 */	ori r0, r0, 1
/* 802252E0  98 1E 01 E6 */	stb r0, 0x1e6(r30)
/* 802252E4  48 00 00 0C */	b lbl_802252F0
lbl_802252E8:
/* 802252E8  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802252EC  4B FF 3E 89 */	bl setAlphaButtonAAnimeMin__13dMeter2Draw_cFv
lbl_802252F0:
/* 802252F0  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802252F4  38 80 00 00 */	li r4, 0
/* 802252F8  4B FF 69 C9 */	bl isBButtonShow__13dMeter2Draw_cFb
/* 802252FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80225300  41 82 00 1C */	beq lbl_8022531C
/* 80225304  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225308  4B FF 41 6D */	bl setAlphaButtonBAnimeMax__13dMeter2Draw_cFv
/* 8022530C  88 1E 01 E6 */	lbz r0, 0x1e6(r30)
/* 80225310  60 00 00 02 */	ori r0, r0, 2
/* 80225314  98 1E 01 E6 */	stb r0, 0x1e6(r30)
/* 80225318  48 00 00 0C */	b lbl_80225324
lbl_8022531C:
/* 8022531C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225320  4B FF 40 05 */	bl setAlphaButtonBAnimeMin__13dMeter2Draw_cFv
lbl_80225324:
/* 80225324  88 1E 01 E6 */	lbz r0, 0x1e6(r30)
/* 80225328  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8022532C  40 82 00 20 */	bne lbl_8022534C
/* 80225330  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225334  88 9E 01 C4 */	lbz r4, 0x1c4(r30)
/* 80225338  80 BE 01 24 */	lwz r5, 0x124(r30)
/* 8022533C  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 80225340  7C 00 00 34 */	cntlzw r0, r0
/* 80225344  54 06 D9 7E */	srwi r6, r0, 5
/* 80225348  4B FF 42 5D */	bl setButtonIconAAlpha__13dMeter2Draw_cFUcUlb
lbl_8022534C:
/* 8022534C  88 1E 01 E6 */	lbz r0, 0x1e6(r30)
/* 80225350  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80225354  40 82 00 20 */	bne lbl_80225374
/* 80225358  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 8022535C  88 9E 01 C5 */	lbz r4, 0x1c5(r30)
/* 80225360  80 BE 01 24 */	lwz r5, 0x124(r30)
/* 80225364  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 80225368  7C 00 00 34 */	cntlzw r0, r0
/* 8022536C  54 06 D9 7E */	srwi r6, r0, 5
/* 80225370  4B FF 44 19 */	bl setButtonIconBAlpha__13dMeter2Draw_cFUcUlb
lbl_80225374:
/* 80225374  3B 60 00 00 */	li r27, 0
/* 80225378  3B E0 00 00 */	li r31, 0
/* 8022537C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80225380  3B A3 01 88 */	addi r29, r3, g_meter2_info@l /* 0x80430188@l */
lbl_80225384:
/* 80225384  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 80225388  7C 00 00 34 */	cntlzw r0, r0
/* 8022538C  54 07 D9 7E */	srwi r7, r0, 5
/* 80225390  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225394  7F 64 DB 78 */	mr r4, r27
/* 80225398  3B 9F 01 D2 */	addi r28, r31, 0x1d2
/* 8022539C  7C BE E0 AE */	lbzx r5, r30, r28
/* 802253A0  80 DE 01 24 */	lwz r6, 0x124(r30)
/* 802253A4  4B FF 4A F5 */	bl setButtonIconAlpha__13dMeter2Draw_cFiUcUlb
/* 802253A8  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 802253AC  28 00 00 00 */	cmplwi r0, 0
/* 802253B0  40 82 00 90 */	bne lbl_80225440
/* 802253B4  88 1D 00 DD */	lbz r0, 0xdd(r29)
/* 802253B8  28 00 00 01 */	cmplwi r0, 1
/* 802253BC  41 82 00 84 */	beq lbl_80225440
/* 802253C0  7C 1E E0 AE */	lbzx r0, r30, r28
/* 802253C4  28 00 00 43 */	cmplwi r0, 0x43
/* 802253C8  41 82 00 64 */	beq lbl_8022542C
/* 802253CC  28 00 00 53 */	cmplwi r0, 0x53
/* 802253D0  41 82 00 5C */	beq lbl_8022542C
/* 802253D4  28 00 00 54 */	cmplwi r0, 0x54
/* 802253D8  41 82 00 54 */	beq lbl_8022542C
/* 802253DC  28 00 00 55 */	cmplwi r0, 0x55
/* 802253E0  41 82 00 4C */	beq lbl_8022542C
/* 802253E4  28 00 00 56 */	cmplwi r0, 0x56
/* 802253E8  41 82 00 44 */	beq lbl_8022542C
/* 802253EC  28 00 00 50 */	cmplwi r0, 0x50
/* 802253F0  41 82 00 3C */	beq lbl_8022542C
/* 802253F4  28 00 00 70 */	cmplwi r0, 0x70
/* 802253F8  41 82 00 34 */	beq lbl_8022542C
/* 802253FC  28 00 00 71 */	cmplwi r0, 0x71
/* 80225400  41 82 00 2C */	beq lbl_8022542C
/* 80225404  28 00 00 72 */	cmplwi r0, 0x72
/* 80225408  41 82 00 24 */	beq lbl_8022542C
/* 8022540C  28 00 00 5A */	cmplwi r0, 0x5a
/* 80225410  41 82 00 1C */	beq lbl_8022542C
/* 80225414  28 00 00 59 */	cmplwi r0, 0x59
/* 80225418  41 82 00 14 */	beq lbl_8022542C
/* 8022541C  28 00 00 4B */	cmplwi r0, 0x4b
/* 80225420  41 82 00 0C */	beq lbl_8022542C
/* 80225424  28 00 00 76 */	cmplwi r0, 0x76
/* 80225428  40 82 00 18 */	bne lbl_80225440
lbl_8022542C:
/* 8022542C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225430  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 80225434  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80225438  4B FF 5A 91 */	bl drawItemNum__13dMeter2Draw_cFUcf
/* 8022543C  48 00 00 14 */	b lbl_80225450
lbl_80225440:
/* 80225440  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225444  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 80225448  C0 22 AF C8 */	lfs f1, lit_4662(r2)
/* 8022544C  4B FF 5A 7D */	bl drawItemNum__13dMeter2Draw_cFUcf
lbl_80225450:
/* 80225450  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 80225454  28 00 00 00 */	cmplwi r0, 0
/* 80225458  40 82 00 24 */	bne lbl_8022547C
/* 8022545C  7C 1E E0 AE */	lbzx r0, r30, r28
/* 80225460  28 00 00 48 */	cmplwi r0, 0x48
/* 80225464  40 82 00 18 */	bne lbl_8022547C
/* 80225468  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 8022546C  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 80225470  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80225474  4B FF 5B 05 */	bl drawKanteraMeter__13dMeter2Draw_cFUcf
/* 80225478  48 00 00 14 */	b lbl_8022548C
lbl_8022547C:
/* 8022547C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80225480  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 80225484  C0 22 AF C8 */	lfs f1, lit_4662(r2)
/* 80225488  4B FF 5A F1 */	bl drawKanteraMeter__13dMeter2Draw_cFUcf
lbl_8022548C:
/* 8022548C  3B 7B 00 01 */	addi r27, r27, 1
/* 80225490  2C 1B 00 02 */	cmpwi r27, 2
/* 80225494  3B FF 00 02 */	addi r31, r31, 2
/* 80225498  41 80 FE EC */	blt lbl_80225384
/* 8022549C  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802254A0  38 80 00 00 */	li r4, 0
/* 802254A4  4B FF 32 E5 */	bl setAlphaButtonChange__13dMeter2Draw_cFb
/* 802254A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802254AC  48 13 CD 75 */	bl _restgpr_27
/* 802254B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802254B4  7C 08 03 A6 */	mtlr r0
/* 802254B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802254BC  4E 80 00 20 */	blr 
