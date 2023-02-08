lbl_80CE4BF0:
/* 80CE4BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4BF4  7C 08 02 A6 */	mflr r0
/* 80CE4BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4BFC  4B FF F3 21 */	bl create__12daSpinLift_cFv
/* 80CE4C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4C04  7C 08 03 A6 */	mtlr r0
/* 80CE4C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4C0C  4E 80 00 20 */	blr 
