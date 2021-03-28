lbl_80CA66F8:
/* 80CA66F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA66FC  7C 08 02 A6 */	mflr r0
/* 80CA6700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6704  4B 5B C9 8C */	b ModuleUnresolved
/* 80CA6708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA670C  7C 08 03 A6 */	mtlr r0
/* 80CA6710  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6714  4E 80 00 20 */	blr 
