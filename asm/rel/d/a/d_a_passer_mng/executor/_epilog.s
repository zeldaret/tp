lbl_80D456CC:
/* 80D456CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D456D0  7C 08 02 A6 */	mflr r0
/* 80D456D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D456D8  4B 51 D9 B4 */	b ModuleEpilog
/* 80D456DC  3C 60 80 D4 */	lis r3, data_80D46C1C@ha
/* 80D456E0  38 63 6C 1C */	addi r3, r3, data_80D46C1C@l
/* 80D456E4  4B 51 DA AC */	b ModuleDestructorsX
/* 80D456E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D456EC  7C 08 03 A6 */	mtlr r0
/* 80D456F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D456F4  4E 80 00 20 */	blr 
