lbl_802CFCE8:
/* 802CFCE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CFCEC  7C 08 02 A6 */	mflr r0
/* 802CFCF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CFCF4  39 61 00 20 */	addi r11, r1, 0x20
/* 802CFCF8  48 09 24 E5 */	bl _savegpr_29
/* 802CFCFC  7C 7D 1B 78 */	mr r29, r3
/* 802CFD00  7C 9E 23 78 */	mr r30, r4
/* 802CFD04  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CFD08  48 06 F3 39 */	bl OSLockMutex
/* 802CFD0C  3B E0 00 00 */	li r31, 0
/* 802CFD10  80 9D 00 80 */	lwz r4, 0x80(r29)
/* 802CFD14  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802CFD18  48 00 00 20 */	b lbl_802CFD38
lbl_802CFD1C:
/* 802CFD1C  88 04 00 03 */	lbz r0, 3(r4)
/* 802CFD20  7C 00 18 40 */	cmplw r0, r3
/* 802CFD24  40 82 00 10 */	bne lbl_802CFD34
/* 802CFD28  80 04 00 04 */	lwz r0, 4(r4)
/* 802CFD2C  7F E0 FA 14 */	add r31, r0, r31
/* 802CFD30  3B FF 00 10 */	addi r31, r31, 0x10
lbl_802CFD34:
/* 802CFD34  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802CFD38:
/* 802CFD38  28 04 00 00 */	cmplwi r4, 0
/* 802CFD3C  40 82 FF E0 */	bne lbl_802CFD1C
/* 802CFD40  38 7D 00 18 */	addi r3, r29, 0x18
/* 802CFD44  48 06 F3 D9 */	bl OSUnlockMutex
/* 802CFD48  7F E3 FB 78 */	mr r3, r31
/* 802CFD4C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CFD50  48 09 24 D9 */	bl _restgpr_29
/* 802CFD54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CFD58  7C 08 03 A6 */	mtlr r0
/* 802CFD5C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CFD60  4E 80 00 20 */	blr 
