lbl_80D2BE7C:
/* 80D2BE7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BE80  7C 08 02 A6 */	mflr r0
/* 80D2BE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BE88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2BE8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2BE90  7C 7E 1B 78 */	mr r30, r3
/* 80D2BE94  7C 9F 23 78 */	mr r31, r4
/* 80D2BE98  48 00 00 35 */	bl move__10daWtGate_cFv
/* 80D2BE9C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D2BEA0  38 03 00 24 */	addi r0, r3, 0x24
/* 80D2BEA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2BEA8  7F C3 F3 78 */	mr r3, r30
/* 80D2BEAC  4B FF FD 61 */	bl setBaseMtx__10daWtGate_cFv
/* 80D2BEB0  38 60 00 01 */	li r3, 1
/* 80D2BEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2BEB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2BEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2BEC0  7C 08 03 A6 */	mtlr r0
/* 80D2BEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2BEC8  4E 80 00 20 */	blr 
