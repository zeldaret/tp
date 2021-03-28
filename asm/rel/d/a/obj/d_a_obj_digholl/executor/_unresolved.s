lbl_80BDC5F8:
/* 80BDC5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC5FC  7C 08 02 A6 */	mflr r0
/* 80BDC600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC604  4B 68 6A 8C */	b ModuleUnresolved
/* 80BDC608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC60C  7C 08 03 A6 */	mtlr r0
/* 80BDC610  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC614  4E 80 00 20 */	blr 
