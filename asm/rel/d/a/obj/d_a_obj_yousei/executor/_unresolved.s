lbl_804CE718:
/* 804CE718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE71C  7C 08 02 A6 */	mflr r0
/* 804CE720  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE724  4B D9 49 6C */	b ModuleUnresolved
/* 804CE728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE72C  7C 08 03 A6 */	mtlr r0
/* 804CE730  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE734  4E 80 00 20 */	blr 
