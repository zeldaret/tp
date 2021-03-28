lbl_80AEBE38:
/* 80AEBE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBE3C  7C 08 02 A6 */	mflr r0
/* 80AEBE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBE44  4B 77 72 4C */	b ModuleUnresolved
/* 80AEBE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBE4C  7C 08 03 A6 */	mtlr r0
/* 80AEBE50  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBE54  4E 80 00 20 */	blr 
