lbl_808726E0:
/* 808726E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808726E4  7C 08 02 A6 */	mflr r0
/* 808726E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808726EC  3C 60 80 88 */	lis r3, data_80879028@ha
/* 808726F0  38 63 90 28 */	addi r3, r3, data_80879028@l
/* 808726F4  4B 9F 0A 58 */	b ModuleConstructorsX
/* 808726F8  4B 9F 09 90 */	b ModuleProlog
/* 808726FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80872700  7C 08 03 A6 */	mtlr r0
/* 80872704  38 21 00 10 */	addi r1, r1, 0x10
/* 80872708  4E 80 00 20 */	blr 
