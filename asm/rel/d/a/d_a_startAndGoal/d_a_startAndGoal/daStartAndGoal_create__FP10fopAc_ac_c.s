lbl_80D4DDE8:
/* 80D4DDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4DDEC  7C 08 02 A6 */	mflr r0
/* 80D4DDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4DDF4  4B FF FA 91 */	bl Create__16daStartAndGoal_cFv
/* 80D4DDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4DDFC  7C 08 03 A6 */	mtlr r0
/* 80D4DE00  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4DE04  4E 80 00 20 */	blr 
