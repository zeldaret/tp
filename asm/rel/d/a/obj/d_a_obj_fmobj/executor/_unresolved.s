lbl_8057CBB8:
/* 8057CBB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CBBC  7C 08 02 A6 */	mflr r0
/* 8057CBC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CBC4  4B CE 64 CC */	b ModuleUnresolved
/* 8057CBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CBCC  7C 08 03 A6 */	mtlr r0
/* 8057CBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CBD4  4E 80 00 20 */	blr 
