lbl_80D45718:
/* 80D45718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4571C  7C 08 02 A6 */	mflr r0
/* 80D45720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D45724  48 00 00 15 */	bl execute__13daPasserMng_cFv
/* 80D45728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4572C  7C 08 03 A6 */	mtlr r0
/* 80D45730  38 21 00 10 */	addi r1, r1, 0x10
/* 80D45734  4E 80 00 20 */	blr 
