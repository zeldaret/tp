lbl_80C45260:
/* 80C45260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C45264  7C 08 02 A6 */	mflr r0
/* 80C45268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4526C  3C 60 80 C4 */	lis r3, data_80C45F08@ha
/* 80C45270  38 63 5F 08 */	addi r3, r3, data_80C45F08@l
/* 80C45274  4B 61 DE D8 */	b ModuleConstructorsX
/* 80C45278  4B 61 DE 10 */	b ModuleProlog
/* 80C4527C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C45280  7C 08 03 A6 */	mtlr r0
/* 80C45284  38 21 00 10 */	addi r1, r1, 0x10
/* 80C45288  4E 80 00 20 */	blr 
