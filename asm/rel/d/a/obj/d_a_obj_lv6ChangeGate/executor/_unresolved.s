lbl_80C70BB8:
/* 80C70BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70BBC  7C 08 02 A6 */	mflr r0
/* 80C70BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70BC4  4B 5F 24 CC */	b ModuleUnresolved
/* 80C70BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70BCC  7C 08 03 A6 */	mtlr r0
/* 80C70BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70BD4  4E 80 00 20 */	blr 
