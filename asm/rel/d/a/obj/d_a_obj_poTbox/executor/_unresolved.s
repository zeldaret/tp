lbl_80CB41B8:
/* 80CB41B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB41BC  7C 08 02 A6 */	mflr r0
/* 80CB41C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB41C4  4B 5A EE CC */	b ModuleUnresolved
/* 80CB41C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB41CC  7C 08 03 A6 */	mtlr r0
/* 80CB41D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB41D4  4E 80 00 20 */	blr 
