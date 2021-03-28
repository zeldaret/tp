lbl_80C96620:
/* 80C96620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C96624  7C 08 02 A6 */	mflr r0
/* 80C96628  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9662C  3C 60 80 CA */	lis r3, data_80C98020@ha
/* 80C96630  38 63 80 20 */	addi r3, r3, data_80C98020@l
/* 80C96634  4B 5C CB 18 */	b ModuleConstructorsX
/* 80C96638  4B 5C CA 50 */	b ModuleProlog
/* 80C9663C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C96640  7C 08 03 A6 */	mtlr r0
/* 80C96644  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96648  4E 80 00 20 */	blr 
