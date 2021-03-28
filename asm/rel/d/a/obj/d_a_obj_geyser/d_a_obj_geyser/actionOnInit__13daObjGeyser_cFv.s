lbl_80BF83E4:
/* 80BF83E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF83E8  7C 08 02 A6 */	mflr r0
/* 80BF83EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF83F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF83F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF83F8  7C 7E 1B 78 */	mr r30, r3
/* 80BF83FC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BF8400  54 00 46 3E */	srwi r0, r0, 0x18
/* 80BF8404  7C 1F 03 78 */	mr r31, r0
/* 80BF8408  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF840C  40 82 00 08 */	bne lbl_80BF8414
/* 80BF8410  3B E0 00 06 */	li r31, 6
lbl_80BF8414:
/* 80BF8414  38 00 00 FF */	li r0, 0xff
/* 80BF8418  98 1E 07 85 */	stb r0, 0x785(r30)
/* 80BF841C  98 1E 07 84 */	stb r0, 0x784(r30)
/* 80BF8420  7F C3 F3 78 */	mr r3, r30
/* 80BF8424  48 00 06 B5 */	bl setEmitterClm00__13daObjGeyser_cFv
/* 80BF8428  7F C3 F3 78 */	mr r3, r30
/* 80BF842C  48 00 07 45 */	bl setEmitterSmk01__13daObjGeyser_cFv
/* 80BF8430  7F C3 F3 78 */	mr r3, r30
/* 80BF8434  48 00 07 D5 */	bl setEmitterSmk02__13daObjGeyser_cFv
/* 80BF8438  7F C3 F3 78 */	mr r3, r30
/* 80BF843C  48 00 01 49 */	bl setPntWind__13daObjGeyser_cFv
/* 80BF8440  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80BF8444  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80BF8448  B0 1E 07 60 */	sth r0, 0x760(r30)
/* 80BF844C  38 00 00 02 */	li r0, 2
/* 80BF8450  98 1E 07 62 */	stb r0, 0x762(r30)
/* 80BF8454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF8458  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF845C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8460  7C 08 03 A6 */	mtlr r0
/* 80BF8464  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8468  4E 80 00 20 */	blr 
