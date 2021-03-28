lbl_802CFBA4:
/* 802CFBA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CFBA8  7C 08 02 A6 */	mflr r0
/* 802CFBAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CFBB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CFBB4  93 C1 00 08 */	stw r30, 8(r1)
/* 802CFBB8  7C 7E 1B 78 */	mr r30, r3
/* 802CFBBC  38 7E 00 18 */	addi r3, r30, 0x18
/* 802CFBC0  48 06 F4 81 */	bl OSLockMutex
/* 802CFBC4  3B E0 00 00 */	li r31, 0
/* 802CFBC8  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 802CFBCC  48 00 00 18 */	b lbl_802CFBE4
lbl_802CFBD0:
/* 802CFBD0  80 03 00 04 */	lwz r0, 4(r3)
/* 802CFBD4  7C 1F 00 00 */	cmpw r31, r0
/* 802CFBD8  40 80 00 08 */	bge lbl_802CFBE0
/* 802CFBDC  7C 1F 03 78 */	mr r31, r0
lbl_802CFBE0:
/* 802CFBE0  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802CFBE4:
/* 802CFBE4  28 03 00 00 */	cmplwi r3, 0
/* 802CFBE8  40 82 FF E8 */	bne lbl_802CFBD0
/* 802CFBEC  38 7E 00 18 */	addi r3, r30, 0x18
/* 802CFBF0  48 06 F5 2D */	bl OSUnlockMutex
/* 802CFBF4  7F E3 FB 78 */	mr r3, r31
/* 802CFBF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CFBFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CFC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CFC04  7C 08 03 A6 */	mtlr r0
/* 802CFC08  38 21 00 10 */	addi r1, r1, 0x10
/* 802CFC0C  4E 80 00 20 */	blr 
