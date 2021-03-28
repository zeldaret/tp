lbl_8029D9A4:
/* 8029D9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D9A8  7C 08 02 A6 */	mflr r0
/* 8029D9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D9B0  48 00 0B 31 */	bl DSPReleaseHalt2__FUl
/* 8029D9B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D9B8  7C 08 03 A6 */	mtlr r0
/* 8029D9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D9C0  4E 80 00 20 */	blr 
