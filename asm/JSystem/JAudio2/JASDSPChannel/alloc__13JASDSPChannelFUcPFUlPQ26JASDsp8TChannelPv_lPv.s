lbl_8029D44C:
/* 8029D44C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029D450  7C 08 02 A6 */	mflr r0
/* 8029D454  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029D458  39 61 00 20 */	addi r11, r1, 0x20
/* 8029D45C  48 0C 4D 7D */	bl _savegpr_28
/* 8029D460  7C 7C 1B 78 */	mr r28, r3
/* 8029D464  7C 9D 23 78 */	mr r29, r4
/* 8029D468  7C BE 2B 78 */	mr r30, r5
/* 8029D46C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8029D470  48 00 00 D1 */	bl getLowestChannel__13JASDSPChannelFi
/* 8029D474  7C 7F 1B 79 */	or. r31, r3, r3
/* 8029D478  40 82 00 0C */	bne lbl_8029D484
/* 8029D47C  38 60 00 00 */	li r3, 0
/* 8029D480  48 00 00 24 */	b lbl_8029D4A4
lbl_8029D484:
/* 8029D484  4B FF FE BD */	bl drop__13JASDSPChannelFv
/* 8029D488  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8029D48C  B0 1F 00 04 */	sth r0, 4(r31)
/* 8029D490  38 00 00 00 */	li r0, 0
/* 8029D494  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8029D498  93 BF 00 10 */	stw r29, 0x10(r31)
/* 8029D49C  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8029D4A0  7F E3 FB 78 */	mr r3, r31
lbl_8029D4A4:
/* 8029D4A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8029D4A8  48 0C 4D 7D */	bl _restgpr_28
/* 8029D4AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029D4B0  7C 08 03 A6 */	mtlr r0
/* 8029D4B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8029D4B8  4E 80 00 20 */	blr 
