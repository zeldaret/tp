lbl_80D6128C:
/* 80D6128C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61290  7C 08 02 A6 */	mflr r0
/* 80D61294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61298  4B 50 1D F4 */	b ModuleEpilog
/* 80D6129C  3C 60 80 D6 */	lis r3, data_80D615FC@ha
/* 80D612A0  38 63 15 FC */	addi r3, r3, data_80D615FC@l
/* 80D612A4  4B 50 1E EC */	b ModuleDestructorsX
/* 80D612A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D612AC  7C 08 03 A6 */	mtlr r0
/* 80D612B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D612B4  4E 80 00 20 */	blr 
