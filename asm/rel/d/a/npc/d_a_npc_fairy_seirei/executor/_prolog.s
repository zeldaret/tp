lbl_8053FE80:
/* 8053FE80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FE84  7C 08 02 A6 */	mflr r0
/* 8053FE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FE8C  3C 60 80 54 */	lis r3, data_80541D78@ha
/* 8053FE90  38 63 1D 78 */	addi r3, r3, data_80541D78@l
/* 8053FE94  4B D2 32 B8 */	b ModuleConstructorsX
/* 8053FE98  4B D2 31 F0 */	b ModuleProlog
/* 8053FE9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FEA0  7C 08 03 A6 */	mtlr r0
/* 8053FEA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FEA8  4E 80 00 20 */	blr 
