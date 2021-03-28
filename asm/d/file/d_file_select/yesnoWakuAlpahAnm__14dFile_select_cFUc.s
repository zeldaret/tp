lbl_8018DBCC:
/* 8018DBCC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8018DBD0  7C 08 02 A6 */	mflr r0
/* 8018DBD4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8018DBD8  39 61 00 50 */	addi r11, r1, 0x50
/* 8018DBDC  48 1D 45 F1 */	bl _savegpr_25
/* 8018DBE0  7C 79 1B 78 */	mr r25, r3
/* 8018DBE4  3B A0 00 00 */	li r29, 0
/* 8018DBE8  3B 80 00 01 */	li r28, 1
/* 8018DBEC  3B 60 00 01 */	li r27, 1
/* 8018DBF0  3B 40 00 01 */	li r26, 1
/* 8018DBF4  38 60 00 01 */	li r3, 1
/* 8018DBF8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8018DBFC  28 00 00 FF */	cmplwi r0, 0xff
/* 8018DC00  41 82 00 E8 */	beq lbl_8018DCE8
/* 8018DC04  54 9E 15 BA */	rlwinm r30, r4, 2, 0x16, 0x1d
/* 8018DC08  7C 79 F2 14 */	add r3, r25, r30
/* 8018DC0C  80 63 01 A0 */	lwz r3, 0x1a0(r3)
/* 8018DC10  7F F9 02 14 */	add r31, r25, r0
/* 8018DC14  88 9F 01 BC */	lbz r4, 0x1bc(r31)
/* 8018DC18  88 BF 01 B8 */	lbz r5, 0x1b8(r31)
/* 8018DC1C  88 DF 01 BA */	lbz r6, 0x1ba(r31)
/* 8018DC20  38 E0 00 00 */	li r7, 0
/* 8018DC24  48 0C 7C 55 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018DC28  7C 7C 1B 78 */	mr r28, r3
/* 8018DC2C  7C 79 F2 14 */	add r3, r25, r30
/* 8018DC30  80 63 01 A8 */	lwz r3, 0x1a8(r3)
/* 8018DC34  88 9F 01 BC */	lbz r4, 0x1bc(r31)
/* 8018DC38  88 BF 01 B8 */	lbz r5, 0x1b8(r31)
/* 8018DC3C  88 DF 01 BA */	lbz r6, 0x1ba(r31)
/* 8018DC40  38 E0 00 00 */	li r7, 0
/* 8018DC44  48 0C 7C 35 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018DC48  7C 7B 1B 78 */	mr r27, r3
/* 8018DC4C  7C 79 F2 14 */	add r3, r25, r30
/* 8018DC50  80 63 01 B0 */	lwz r3, 0x1b0(r3)
/* 8018DC54  88 9F 01 BC */	lbz r4, 0x1bc(r31)
/* 8018DC58  88 BF 01 B8 */	lbz r5, 0x1b8(r31)
/* 8018DC5C  88 DF 01 BA */	lbz r6, 0x1ba(r31)
/* 8018DC60  38 E0 00 00 */	li r7, 0
/* 8018DC64  48 0C 7C 15 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018DC68  7C 7A 1B 78 */	mr r26, r3
/* 8018DC6C  38 00 00 96 */	li r0, 0x96
/* 8018DC70  98 01 00 08 */	stb r0, 8(r1)
/* 8018DC74  98 01 00 09 */	stb r0, 9(r1)
/* 8018DC78  98 01 00 0A */	stb r0, 0xa(r1)
/* 8018DC7C  38 60 00 FF */	li r3, 0xff
/* 8018DC80  98 61 00 0B */	stb r3, 0xb(r1)
/* 8018DC84  80 01 00 08 */	lwz r0, 8(r1)
/* 8018DC88  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018DC8C  98 61 00 10 */	stb r3, 0x10(r1)
/* 8018DC90  98 61 00 11 */	stb r3, 0x11(r1)
/* 8018DC94  98 61 00 12 */	stb r3, 0x12(r1)
/* 8018DC98  98 61 00 13 */	stb r3, 0x13(r1)
/* 8018DC9C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8018DCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018DCA4  7C 99 F2 14 */	add r4, r25, r30
/* 8018DCA8  80 64 01 C0 */	lwz r3, 0x1c0(r4)
/* 8018DCAC  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 8018DCB0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8018DCB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8018DCB8  80 64 01 C0 */	lwz r3, 0x1c0(r4)
/* 8018DCBC  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 8018DCC0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8018DCC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018DCC8  80 64 01 C0 */	lwz r3, 0x1c0(r4)
/* 8018DCCC  88 9F 01 BC */	lbz r4, 0x1bc(r31)
/* 8018DCD0  38 A1 00 24 */	addi r5, r1, 0x24
/* 8018DCD4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8018DCD8  38 E1 00 14 */	addi r7, r1, 0x14
/* 8018DCDC  39 01 00 0C */	addi r8, r1, 0xc
/* 8018DCE0  39 20 00 00 */	li r9, 0
/* 8018DCE4  48 0C 6B D9 */	bl colorAnime__8CPaneMgrFsQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorUc
lbl_8018DCE8:
/* 8018DCE8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8018DCEC  28 00 00 01 */	cmplwi r0, 1
/* 8018DCF0  40 82 00 2C */	bne lbl_8018DD1C
/* 8018DCF4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8018DCF8  28 00 00 01 */	cmplwi r0, 1
/* 8018DCFC  40 82 00 20 */	bne lbl_8018DD1C
/* 8018DD00  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8018DD04  28 00 00 01 */	cmplwi r0, 1
/* 8018DD08  40 82 00 14 */	bne lbl_8018DD1C
/* 8018DD0C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018DD10  28 00 00 01 */	cmplwi r0, 1
/* 8018DD14  40 82 00 08 */	bne lbl_8018DD1C
/* 8018DD18  3B A0 00 01 */	li r29, 1
lbl_8018DD1C:
/* 8018DD1C  7F A3 EB 78 */	mr r3, r29
/* 8018DD20  39 61 00 50 */	addi r11, r1, 0x50
/* 8018DD24  48 1D 44 F5 */	bl _restgpr_25
/* 8018DD28  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8018DD2C  7C 08 03 A6 */	mtlr r0
/* 8018DD30  38 21 00 50 */	addi r1, r1, 0x50
/* 8018DD34  4E 80 00 20 */	blr 
