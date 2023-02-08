lbl_8018D8C8:
/* 8018D8C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8018D8CC  7C 08 02 A6 */	mflr r0
/* 8018D8D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8018D8D4  39 61 00 50 */	addi r11, r1, 0x50
/* 8018D8D8  48 1D 48 F5 */	bl _savegpr_25
/* 8018D8DC  7C 79 1B 78 */	mr r25, r3
/* 8018D8E0  3B E0 00 00 */	li r31, 0
/* 8018D8E4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8018D8E8  54 9A 15 BA */	rlwinm r26, r4, 2, 0x16, 0x1d
/* 8018D8EC  7C 79 D2 14 */	add r3, r25, r26
/* 8018D8F0  80 63 03 64 */	lwz r3, 0x364(r3)
/* 8018D8F4  7F 79 02 14 */	add r27, r25, r0
/* 8018D8F8  88 9B 03 8E */	lbz r4, 0x38e(r27)
/* 8018D8FC  88 BB 03 88 */	lbz r5, 0x388(r27)
/* 8018D900  88 DB 03 8B */	lbz r6, 0x38b(r27)
/* 8018D904  38 E0 00 00 */	li r7, 0
/* 8018D908  48 0C 7F 71 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D90C  7C 7C 1B 78 */	mr r28, r3
/* 8018D910  7C 79 D2 14 */	add r3, r25, r26
/* 8018D914  80 63 03 70 */	lwz r3, 0x370(r3)
/* 8018D918  88 9B 03 8E */	lbz r4, 0x38e(r27)
/* 8018D91C  88 BB 03 88 */	lbz r5, 0x388(r27)
/* 8018D920  88 DB 03 8B */	lbz r6, 0x38b(r27)
/* 8018D924  38 E0 00 00 */	li r7, 0
/* 8018D928  48 0C 7F 51 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D92C  7C 7D 1B 78 */	mr r29, r3
/* 8018D930  7C 79 D2 14 */	add r3, r25, r26
/* 8018D934  80 63 03 7C */	lwz r3, 0x37c(r3)
/* 8018D938  88 9B 03 8E */	lbz r4, 0x38e(r27)
/* 8018D93C  88 BB 03 88 */	lbz r5, 0x388(r27)
/* 8018D940  88 DB 03 8B */	lbz r6, 0x38b(r27)
/* 8018D944  38 E0 00 00 */	li r7, 0
/* 8018D948  48 0C 7F 31 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018D94C  7C 7E 1B 78 */	mr r30, r3
/* 8018D950  38 00 00 96 */	li r0, 0x96
/* 8018D954  98 01 00 08 */	stb r0, 8(r1)
/* 8018D958  98 01 00 09 */	stb r0, 9(r1)
/* 8018D95C  98 01 00 0A */	stb r0, 0xa(r1)
/* 8018D960  38 60 00 FF */	li r3, 0xff
/* 8018D964  98 61 00 0B */	stb r3, 0xb(r1)
/* 8018D968  80 01 00 08 */	lwz r0, 8(r1)
/* 8018D96C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018D970  98 61 00 10 */	stb r3, 0x10(r1)
/* 8018D974  98 61 00 11 */	stb r3, 0x11(r1)
/* 8018D978  98 61 00 12 */	stb r3, 0x12(r1)
/* 8018D97C  98 61 00 13 */	stb r3, 0x13(r1)
/* 8018D980  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8018D984  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018D988  7C 99 D2 14 */	add r4, r25, r26
/* 8018D98C  80 64 03 94 */	lwz r3, 0x394(r4)
/* 8018D990  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 8018D994  90 01 00 18 */	stw r0, 0x18(r1)
/* 8018D998  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8018D99C  80 64 03 94 */	lwz r3, 0x394(r4)
/* 8018D9A0  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 8018D9A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8018D9A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018D9AC  80 64 03 94 */	lwz r3, 0x394(r4)
/* 8018D9B0  88 9B 03 8E */	lbz r4, 0x38e(r27)
/* 8018D9B4  38 A1 00 24 */	addi r5, r1, 0x24
/* 8018D9B8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8018D9BC  38 E1 00 14 */	addi r7, r1, 0x14
/* 8018D9C0  39 01 00 0C */	addi r8, r1, 0xc
/* 8018D9C4  39 20 00 00 */	li r9, 0
/* 8018D9C8  48 0C 6E F5 */	bl colorAnime__8CPaneMgrFsQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorUc
/* 8018D9CC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8018D9D0  28 00 00 01 */	cmplwi r0, 1
/* 8018D9D4  40 82 00 20 */	bne lbl_8018D9F4
/* 8018D9D8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8018D9DC  28 00 00 01 */	cmplwi r0, 1
/* 8018D9E0  40 82 00 14 */	bne lbl_8018D9F4
/* 8018D9E4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018D9E8  28 00 00 01 */	cmplwi r0, 1
/* 8018D9EC  40 82 00 08 */	bne lbl_8018D9F4
/* 8018D9F0  3B E0 00 01 */	li r31, 1
lbl_8018D9F4:
/* 8018D9F4  7F E3 FB 78 */	mr r3, r31
/* 8018D9F8  39 61 00 50 */	addi r11, r1, 0x50
/* 8018D9FC  48 1D 48 1D */	bl _restgpr_25
/* 8018DA00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8018DA04  7C 08 03 A6 */	mtlr r0
/* 8018DA08  38 21 00 50 */	addi r1, r1, 0x50
/* 8018DA0C  4E 80 00 20 */	blr 
