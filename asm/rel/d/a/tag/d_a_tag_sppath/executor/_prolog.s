lbl_80D61BA0:
/* 80D61BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61BA4  7C 08 02 A6 */	mflr r0
/* 80D61BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61BAC  3C 60 80 D6 */	lis r3, data_80D62C10@ha
/* 80D61BB0  38 63 2C 10 */	addi r3, r3, data_80D62C10@l
/* 80D61BB4  4B 50 15 98 */	b ModuleConstructorsX
/* 80D61BB8  4B 50 14 D0 */	b ModuleProlog
/* 80D61BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61BC0  7C 08 03 A6 */	mtlr r0
/* 80D61BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61BC8  4E 80 00 20 */	blr 
