lbl_80CB0CB8:
/* 80CB0CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0CBC  7C 08 02 A6 */	mflr r0
/* 80CB0CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0CC4  4B 5B 23 CC */	b ModuleUnresolved
/* 80CB0CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0CCC  7C 08 03 A6 */	mtlr r0
/* 80CB0CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0CD4  4E 80 00 20 */	blr 
