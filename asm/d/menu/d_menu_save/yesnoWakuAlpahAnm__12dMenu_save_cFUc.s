lbl_801F6654:
/* 801F6654  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801F6658  7C 08 02 A6 */	mflr r0
/* 801F665C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801F6660  39 61 00 50 */	addi r11, r1, 0x50
/* 801F6664  48 16 BB 69 */	bl _savegpr_25
/* 801F6668  7C 79 1B 78 */	mr r25, r3
/* 801F666C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801F6670  28 00 00 FF */	cmplwi r0, 0xff
/* 801F6674  40 82 00 0C */	bne lbl_801F6680
/* 801F6678  38 60 00 01 */	li r3, 1
/* 801F667C  48 00 01 24 */	b lbl_801F67A0
lbl_801F6680:
/* 801F6680  3B E0 00 00 */	li r31, 0
/* 801F6684  54 9A 15 BA */	rlwinm r26, r4, 2, 0x16, 0x1d
/* 801F6688  7C 79 D2 14 */	add r3, r25, r26
/* 801F668C  80 63 01 18 */	lwz r3, 0x118(r3)
/* 801F6690  7F 79 02 14 */	add r27, r25, r0
/* 801F6694  88 9B 01 34 */	lbz r4, 0x134(r27)
/* 801F6698  88 BB 01 30 */	lbz r5, 0x130(r27)
/* 801F669C  88 DB 01 32 */	lbz r6, 0x132(r27)
/* 801F66A0  38 E0 00 00 */	li r7, 0
/* 801F66A4  48 05 F1 D5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F66A8  7C 7C 1B 78 */	mr r28, r3
/* 801F66AC  7C 79 D2 14 */	add r3, r25, r26
/* 801F66B0  80 63 01 20 */	lwz r3, 0x120(r3)
/* 801F66B4  88 9B 01 34 */	lbz r4, 0x134(r27)
/* 801F66B8  88 BB 01 30 */	lbz r5, 0x130(r27)
/* 801F66BC  88 DB 01 32 */	lbz r6, 0x132(r27)
/* 801F66C0  38 E0 00 00 */	li r7, 0
/* 801F66C4  48 05 F1 B5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F66C8  7C 7D 1B 78 */	mr r29, r3
/* 801F66CC  7C 79 D2 14 */	add r3, r25, r26
/* 801F66D0  80 63 01 28 */	lwz r3, 0x128(r3)
/* 801F66D4  88 9B 01 34 */	lbz r4, 0x134(r27)
/* 801F66D8  88 BB 01 30 */	lbz r5, 0x130(r27)
/* 801F66DC  88 DB 01 32 */	lbz r6, 0x132(r27)
/* 801F66E0  38 E0 00 00 */	li r7, 0
/* 801F66E4  48 05 F1 95 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F66E8  7C 7E 1B 78 */	mr r30, r3
/* 801F66EC  38 00 00 96 */	li r0, 0x96
/* 801F66F0  98 01 00 08 */	stb r0, 8(r1)
/* 801F66F4  98 01 00 09 */	stb r0, 9(r1)
/* 801F66F8  98 01 00 0A */	stb r0, 0xa(r1)
/* 801F66FC  38 60 00 FF */	li r3, 0xff
/* 801F6700  98 61 00 0B */	stb r3, 0xb(r1)
/* 801F6704  80 01 00 08 */	lwz r0, 8(r1)
/* 801F6708  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F670C  98 61 00 10 */	stb r3, 0x10(r1)
/* 801F6710  98 61 00 11 */	stb r3, 0x11(r1)
/* 801F6714  98 61 00 12 */	stb r3, 0x12(r1)
/* 801F6718  98 61 00 13 */	stb r3, 0x13(r1)
/* 801F671C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801F6720  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F6724  7C 99 D2 14 */	add r4, r25, r26
/* 801F6728  80 64 01 38 */	lwz r3, 0x138(r4)
/* 801F672C  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 801F6730  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F6734  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801F6738  80 64 01 38 */	lwz r3, 0x138(r4)
/* 801F673C  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 801F6740  90 01 00 20 */	stw r0, 0x20(r1)
/* 801F6744  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F6748  80 64 01 38 */	lwz r3, 0x138(r4)
/* 801F674C  88 9B 01 34 */	lbz r4, 0x134(r27)
/* 801F6750  38 A1 00 24 */	addi r5, r1, 0x24
/* 801F6754  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801F6758  38 E1 00 14 */	addi r7, r1, 0x14
/* 801F675C  39 01 00 0C */	addi r8, r1, 0xc
/* 801F6760  39 20 00 00 */	li r9, 0
/* 801F6764  48 05 E1 59 */	bl colorAnime__8CPaneMgrFsQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorUc
/* 801F6768  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801F676C  28 00 00 01 */	cmplwi r0, 1
/* 801F6770  40 82 00 2C */	bne lbl_801F679C
/* 801F6774  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F6778  28 00 00 01 */	cmplwi r0, 1
/* 801F677C  40 82 00 20 */	bne lbl_801F679C
/* 801F6780  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F6784  28 00 00 01 */	cmplwi r0, 1
/* 801F6788  40 82 00 14 */	bne lbl_801F679C
/* 801F678C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F6790  28 00 00 01 */	cmplwi r0, 1
/* 801F6794  40 82 00 08 */	bne lbl_801F679C
/* 801F6798  3B E0 00 01 */	li r31, 1
lbl_801F679C:
/* 801F679C  7F E3 FB 78 */	mr r3, r31
lbl_801F67A0:
/* 801F67A0  39 61 00 50 */	addi r11, r1, 0x50
/* 801F67A4  48 16 BA 75 */	bl _restgpr_25
/* 801F67A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801F67AC  7C 08 03 A6 */	mtlr r0
/* 801F67B0  38 21 00 50 */	addi r1, r1, 0x50
/* 801F67B4  4E 80 00 20 */	blr 
