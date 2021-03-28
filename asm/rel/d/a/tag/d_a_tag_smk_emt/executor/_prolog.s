lbl_80D61260:
/* 80D61260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61264  7C 08 02 A6 */	mflr r0
/* 80D61268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6126C  3C 60 80 D6 */	lis r3, data_80D615F8@ha
/* 80D61270  38 63 15 F8 */	addi r3, r3, data_80D615F8@l
/* 80D61274  4B 50 1E D8 */	b ModuleConstructorsX
/* 80D61278  4B 50 1E 10 */	b ModuleProlog
/* 80D6127C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61280  7C 08 03 A6 */	mtlr r0
/* 80D61284  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61288  4E 80 00 20 */	blr 
