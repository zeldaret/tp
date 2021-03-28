lbl_80D5DA38:
/* 80D5DA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DA3C  7C 08 02 A6 */	mflr r0
/* 80D5DA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DA44  4B 50 56 4C */	b ModuleUnresolved
/* 80D5DA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DA4C  7C 08 03 A6 */	mtlr r0
/* 80D5DA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DA54  4E 80 00 20 */	blr 
