lbl_8028ACA4:
/* 8028ACA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028ACA8  7C 08 02 A6 */	mflr r0
/* 8028ACAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028ACB0  7C 66 1B 78 */	mr r6, r3
/* 8028ACB4  2C 04 00 02 */	cmpwi r4, 2
/* 8028ACB8  41 82 00 08 */	beq lbl_8028ACC0
/* 8028ACBC  48 00 00 30 */	b lbl_8028ACEC
lbl_8028ACC0:
/* 8028ACC0  80 66 01 2C */	lwz r3, 0x12c(r6)
/* 8028ACC4  80 85 00 00 */	lwz r4, 0(r5)
/* 8028ACC8  30 04 FF FF */	addic r0, r4, -1
/* 8028ACCC  7C 00 21 10 */	subfe r0, r0, r4
/* 8028ACD0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8028ACD4  80 A6 01 48 */	lwz r5, 0x148(r6)
/* 8028ACD8  80 C6 01 4C */	lwz r6, 0x14c(r6)
/* 8028ACDC  81 83 00 00 */	lwz r12, 0(r3)
/* 8028ACE0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8028ACE4  7D 89 03 A6 */	mtctr r12
/* 8028ACE8  4E 80 04 21 */	bctrl 
lbl_8028ACEC:
/* 8028ACEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028ACF0  7C 08 03 A6 */	mtlr r0
/* 8028ACF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8028ACF8  4E 80 00 20 */	blr 
