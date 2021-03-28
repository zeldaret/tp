lbl_807BD6C0:
/* 807BD6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD6C4  7C 08 02 A6 */	mflr r0
/* 807BD6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD6CC  3C 60 80 7C */	lis r3, data_807C1FA4@ha
/* 807BD6D0  38 63 1F A4 */	addi r3, r3, data_807C1FA4@l
/* 807BD6D4  4B AA 5A 78 */	b ModuleConstructorsX
/* 807BD6D8  4B AA 59 B0 */	b ModuleProlog
/* 807BD6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD6E0  7C 08 03 A6 */	mtlr r0
/* 807BD6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD6E8  4E 80 00 20 */	blr 
