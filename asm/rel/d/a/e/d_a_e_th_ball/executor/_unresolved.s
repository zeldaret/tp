lbl_807B48F8:
/* 807B48F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B48FC  7C 08 02 A6 */	mflr r0
/* 807B4900  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B4904  4B AA E7 8C */	b ModuleUnresolved
/* 807B4908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B490C  7C 08 03 A6 */	mtlr r0
/* 807B4910  38 21 00 10 */	addi r1, r1, 0x10
/* 807B4914  4E 80 00 20 */	blr 
