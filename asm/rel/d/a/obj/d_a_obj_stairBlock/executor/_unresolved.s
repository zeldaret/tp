lbl_80CE80D8:
/* 80CE80D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE80DC  7C 08 02 A6 */	mflr r0
/* 80CE80E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE80E4  4B 57 AF AC */	b ModuleUnresolved
/* 80CE80E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE80EC  7C 08 03 A6 */	mtlr r0
/* 80CE80F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE80F4  4E 80 00 20 */	blr 
