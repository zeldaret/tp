lbl_80BA25F8:
/* 80BA25F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA25FC  7C 08 02 A6 */	mflr r0
/* 80BA2600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA2604  4B 6C 0A 8C */	b ModuleUnresolved
/* 80BA2608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA260C  7C 08 03 A6 */	mtlr r0
/* 80BA2610  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA2614  4E 80 00 20 */	blr 
