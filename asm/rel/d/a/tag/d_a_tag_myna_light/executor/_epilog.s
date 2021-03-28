lbl_80D5CAEC:
/* 80D5CAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5CAF0  7C 08 02 A6 */	mflr r0
/* 80D5CAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5CAF8  4B 50 65 94 */	b ModuleEpilog
/* 80D5CAFC  3C 60 80 D6 */	lis r3, data_80D5D2FC@ha
/* 80D5CB00  38 63 D2 FC */	addi r3, r3, data_80D5D2FC@l
/* 80D5CB04  4B 50 66 8C */	b ModuleDestructorsX
/* 80D5CB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5CB0C  7C 08 03 A6 */	mtlr r0
/* 80D5CB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5CB14  4E 80 00 20 */	blr 
