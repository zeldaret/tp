lbl_80BDA438:
/* 80BDA438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA43C  7C 08 02 A6 */	mflr r0
/* 80BDA440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA444  4B 68 8C 4C */	b ModuleUnresolved
/* 80BDA448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA44C  7C 08 03 A6 */	mtlr r0
/* 80BDA450  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA454  4E 80 00 20 */	blr 
