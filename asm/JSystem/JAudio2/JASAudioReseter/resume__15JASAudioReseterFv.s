lbl_8029D1D4:
/* 8029D1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D1D8  7C 08 02 A6 */	mflr r0
/* 8029D1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D1E0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8029D1E4  48 00 0F 4D */	bl setDSPLevel__9JASDriverFf
/* 8029D1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D1EC  7C 08 03 A6 */	mtlr r0
/* 8029D1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D1F4  4E 80 00 20 */	blr 
