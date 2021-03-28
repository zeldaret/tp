lbl_8098BE20:
/* 8098BE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098BE24  7C 08 02 A6 */	mflr r0
/* 8098BE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098BE2C  3C 60 80 99 */	lis r3, data_809918E4@ha
/* 8098BE30  38 63 18 E4 */	addi r3, r3, data_809918E4@l
/* 8098BE34  4B 8D 73 18 */	b ModuleConstructorsX
/* 8098BE38  4B 8D 72 50 */	b ModuleProlog
/* 8098BE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098BE40  7C 08 03 A6 */	mtlr r0
/* 8098BE44  38 21 00 10 */	addi r1, r1, 0x10
/* 8098BE48  4E 80 00 20 */	blr 
