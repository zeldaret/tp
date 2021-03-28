lbl_80D6004C:
/* 80D6004C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60050  7C 08 02 A6 */	mflr r0
/* 80D60054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60058  4B 50 30 34 */	b ModuleEpilog
/* 80D6005C  3C 60 80 D6 */	lis r3, data_80D6011C@ha
/* 80D60060  38 63 01 1C */	addi r3, r3, data_80D6011C@l
/* 80D60064  4B 50 31 2C */	b ModuleDestructorsX
/* 80D60068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6006C  7C 08 03 A6 */	mtlr r0
/* 80D60070  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60074  4E 80 00 20 */	blr 
