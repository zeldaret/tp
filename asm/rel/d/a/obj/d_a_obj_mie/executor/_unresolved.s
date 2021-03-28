lbl_80C93F38:
/* 80C93F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93F3C  7C 08 02 A6 */	mflr r0
/* 80C93F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93F44  4B 5C F1 4C */	b ModuleUnresolved
/* 80C93F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93F4C  7C 08 03 A6 */	mtlr r0
/* 80C93F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93F54  4E 80 00 20 */	blr 
