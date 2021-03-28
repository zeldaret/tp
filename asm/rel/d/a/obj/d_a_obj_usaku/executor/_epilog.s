lbl_80D20F0C:
/* 80D20F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20F10  7C 08 02 A6 */	mflr r0
/* 80D20F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20F18  4B 54 21 74 */	b ModuleEpilog
/* 80D20F1C  3C 60 80 D2 */	lis r3, data_80D212D8@ha
/* 80D20F20  38 63 12 D8 */	addi r3, r3, data_80D212D8@l
/* 80D20F24  4B 54 22 6C */	b ModuleDestructorsX
/* 80D20F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20F2C  7C 08 03 A6 */	mtlr r0
/* 80D20F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20F34  4E 80 00 20 */	blr 
