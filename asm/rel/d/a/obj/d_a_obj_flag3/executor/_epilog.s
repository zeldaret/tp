lbl_80BEEA2C:
/* 80BEEA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEEA30  7C 08 02 A6 */	mflr r0
/* 80BEEA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEEA38  4B 67 46 54 */	b ModuleEpilog
/* 80BEEA3C  3C 60 80 BF */	lis r3, data_80BF0454@ha
/* 80BEEA40  38 63 04 54 */	addi r3, r3, data_80BF0454@l
/* 80BEEA44  4B 67 47 4C */	b ModuleDestructorsX
/* 80BEEA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEEA4C  7C 08 03 A6 */	mtlr r0
/* 80BEEA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEEA54  4E 80 00 20 */	blr 
