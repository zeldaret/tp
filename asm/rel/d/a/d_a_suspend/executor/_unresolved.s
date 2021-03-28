lbl_804D50F8:
/* 804D50F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D50FC  7C 08 02 A6 */	mflr r0
/* 804D5100  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5104  4B D8 DF 8C */	b ModuleUnresolved
/* 804D5108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D510C  7C 08 03 A6 */	mtlr r0
/* 804D5110  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5114  4E 80 00 20 */	blr 
