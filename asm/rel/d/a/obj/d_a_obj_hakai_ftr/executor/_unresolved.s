lbl_80C17478:
/* 80C17478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1747C  7C 08 02 A6 */	mflr r0
/* 80C17480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17484  4B 64 BC 0C */	b ModuleUnresolved
/* 80C17488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1748C  7C 08 03 A6 */	mtlr r0
/* 80C17490  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17494  4E 80 00 20 */	blr 
