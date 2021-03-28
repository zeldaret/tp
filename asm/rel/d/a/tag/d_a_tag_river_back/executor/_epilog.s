lbl_80D5F2AC:
/* 80D5F2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F2B0  7C 08 02 A6 */	mflr r0
/* 80D5F2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F2B8  4B 50 3D D4 */	b ModuleEpilog
/* 80D5F2BC  3C 60 80 D6 */	lis r3, data_80D5F940@ha
/* 80D5F2C0  38 63 F9 40 */	addi r3, r3, data_80D5F940@l
/* 80D5F2C4  4B 50 3E CC */	b ModuleDestructorsX
/* 80D5F2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F2CC  7C 08 03 A6 */	mtlr r0
/* 80D5F2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F2D4  4E 80 00 20 */	blr 
