lbl_80978CB8:
/* 80978CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80978CBC  7C 08 02 A6 */	mflr r0
/* 80978CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80978CC4  4B 8E A3 CC */	b ModuleUnresolved
/* 80978CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80978CCC  7C 08 03 A6 */	mtlr r0
/* 80978CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80978CD4  4E 80 00 20 */	blr 
