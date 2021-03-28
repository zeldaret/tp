lbl_80B2F1F8:
/* 80B2F1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2F1FC  7C 08 02 A6 */	mflr r0
/* 80B2F200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2F204  4B 73 3E 8C */	b ModuleUnresolved
/* 80B2F208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2F20C  7C 08 03 A6 */	mtlr r0
/* 80B2F210  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2F214  4E 80 00 20 */	blr 
