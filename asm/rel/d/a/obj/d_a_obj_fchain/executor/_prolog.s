lbl_80BE5F80:
/* 80BE5F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5F84  7C 08 02 A6 */	mflr r0
/* 80BE5F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5F8C  3C 60 80 BE */	lis r3, data_80BE7430@ha
/* 80BE5F90  38 63 74 30 */	addi r3, r3, data_80BE7430@l
/* 80BE5F94  4B 67 D1 B8 */	b ModuleConstructorsX
/* 80BE5F98  4B 67 D0 F0 */	b ModuleProlog
/* 80BE5F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5FA0  7C 08 03 A6 */	mtlr r0
/* 80BE5FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5FA8  4E 80 00 20 */	blr 
