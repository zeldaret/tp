lbl_80D55F8C:
/* 80D55F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55F90  7C 08 02 A6 */	mflr r0
/* 80D55F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55F98  4B 50 D0 F4 */	b ModuleEpilog
/* 80D55F9C  3C 60 80 D5 */	lis r3, data_80D56654@ha
/* 80D55FA0  38 63 66 54 */	addi r3, r3, data_80D56654@l
/* 80D55FA4  4B 50 D1 EC */	b ModuleDestructorsX
/* 80D55FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55FAC  7C 08 03 A6 */	mtlr r0
/* 80D55FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55FB4  4E 80 00 20 */	blr 
