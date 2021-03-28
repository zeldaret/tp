lbl_807F2B98:
/* 807F2B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F2B9C  7C 08 02 A6 */	mflr r0
/* 807F2BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F2BA4  4B A7 04 EC */	b ModuleUnresolved
/* 807F2BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F2BAC  7C 08 03 A6 */	mtlr r0
/* 807F2BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 807F2BB4  4E 80 00 20 */	blr 
