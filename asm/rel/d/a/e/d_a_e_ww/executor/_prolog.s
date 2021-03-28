lbl_807E7600:
/* 807E7600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E7604  7C 08 02 A6 */	mflr r0
/* 807E7608  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E760C  3C 60 80 7F */	lis r3, data_807EF75C@ha
/* 807E7610  38 63 F7 5C */	addi r3, r3, data_807EF75C@l
/* 807E7614  4B A7 BB 38 */	b ModuleConstructorsX
/* 807E7618  4B A7 BA 70 */	b ModuleProlog
/* 807E761C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E7620  7C 08 03 A6 */	mtlr r0
/* 807E7624  38 21 00 10 */	addi r1, r1, 0x10
/* 807E7628  4E 80 00 20 */	blr 
