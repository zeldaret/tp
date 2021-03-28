lbl_80D1EFE0:
/* 80D1EFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1EFE4  7C 08 02 A6 */	mflr r0
/* 80D1EFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1EFEC  3C 60 80 D2 */	lis r3, data_80D1F8B4@ha
/* 80D1EFF0  38 63 F8 B4 */	addi r3, r3, data_80D1F8B4@l
/* 80D1EFF4  4B 54 41 58 */	b ModuleConstructorsX
/* 80D1EFF8  4B 54 40 90 */	b ModuleProlog
/* 80D1EFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F000  7C 08 03 A6 */	mtlr r0
/* 80D1F004  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F008  4E 80 00 20 */	blr 
