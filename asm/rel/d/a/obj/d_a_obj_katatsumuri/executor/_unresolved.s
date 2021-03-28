lbl_80C398D8:
/* 80C398D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C398DC  7C 08 02 A6 */	mflr r0
/* 80C398E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C398E4  4B 62 97 AC */	b ModuleUnresolved
/* 80C398E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C398EC  7C 08 03 A6 */	mtlr r0
/* 80C398F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C398F4  4E 80 00 20 */	blr 
