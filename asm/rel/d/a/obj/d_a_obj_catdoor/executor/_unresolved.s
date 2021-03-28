lbl_80BC4298:
/* 80BC4298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC429C  7C 08 02 A6 */	mflr r0
/* 80BC42A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC42A4  4B 69 ED EC */	b ModuleUnresolved
/* 80BC42A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC42AC  7C 08 03 A6 */	mtlr r0
/* 80BC42B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC42B4  4E 80 00 20 */	blr 
