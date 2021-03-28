lbl_807F82B8:
/* 807F82B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F82BC  7C 08 02 A6 */	mflr r0
/* 807F82C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F82C4  4B A6 AD CC */	b ModuleUnresolved
/* 807F82C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F82CC  7C 08 03 A6 */	mtlr r0
/* 807F82D0  38 21 00 10 */	addi r1, r1, 0x10
/* 807F82D4  4E 80 00 20 */	blr 
