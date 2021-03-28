lbl_80D4F84C:
/* 80D4F84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F850  7C 08 02 A6 */	mflr r0
/* 80D4F854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F858  4B 51 38 34 */	b ModuleEpilog
/* 80D4F85C  3C 60 80 D5 */	lis r3, data_80D50904@ha
/* 80D4F860  38 63 09 04 */	addi r3, r3, data_80D50904@l
/* 80D4F864  4B 51 39 2C */	b ModuleDestructorsX
/* 80D4F868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F86C  7C 08 03 A6 */	mtlr r0
/* 80D4F870  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F874  4E 80 00 20 */	blr 
