lbl_80B9B940:
/* 80B9B940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9B944  7C 08 02 A6 */	mflr r0
/* 80B9B948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9B94C  3C 60 80 BA */	lis r3, data_80B9C918@ha
/* 80B9B950  38 63 C9 18 */	addi r3, r3, data_80B9C918@l
/* 80B9B954  4B 6C 77 F8 */	b ModuleConstructorsX
/* 80B9B958  4B 6C 77 30 */	b ModuleProlog
/* 80B9B95C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9B960  7C 08 03 A6 */	mtlr r0
/* 80B9B964  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9B968  4E 80 00 20 */	blr 
