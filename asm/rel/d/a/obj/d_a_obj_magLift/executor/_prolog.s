lbl_80C8D940:
/* 80C8D940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8D944  7C 08 02 A6 */	mflr r0
/* 80C8D948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8D94C  3C 60 80 C9 */	lis r3, data_80C8E648@ha
/* 80C8D950  38 63 E6 48 */	addi r3, r3, data_80C8E648@l
/* 80C8D954  4B 5D 57 F8 */	b ModuleConstructorsX
/* 80C8D958  4B 5D 57 30 */	b ModuleProlog
/* 80C8D95C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8D960  7C 08 03 A6 */	mtlr r0
/* 80C8D964  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8D968  4E 80 00 20 */	blr 
