lbl_80C916F4:
/* 80C916F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C916F8  7C 08 02 A6 */	mflr r0
/* 80C916FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91700  48 00 00 15 */	bl draw__18daObjMasterSword_cFv
/* 80C91704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91708  7C 08 03 A6 */	mtlr r0
/* 80C9170C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C91710  4E 80 00 20 */	blr 
