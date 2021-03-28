lbl_80D6680C:
/* 80D6680C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66810  7C 08 02 A6 */	mflr r0
/* 80D66814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66818  4B 4F C8 74 */	b ModuleEpilog
/* 80D6681C  3C 60 80 D6 */	lis r3, data_80D669CC@ha
/* 80D66820  38 63 69 CC */	addi r3, r3, data_80D669CC@l
/* 80D66824  4B 4F C9 6C */	b ModuleDestructorsX
/* 80D66828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6682C  7C 08 03 A6 */	mtlr r0
/* 80D66830  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66834  4E 80 00 20 */	blr 
