lbl_80D5FAAC:
/* 80D5FAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FAB0  7C 08 02 A6 */	mflr r0
/* 80D5FAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FAB8  4B 50 35 D4 */	b ModuleEpilog
/* 80D5FABC  3C 60 80 D6 */	lis r3, data_80D5FFA4@ha
/* 80D5FAC0  38 63 FF A4 */	addi r3, r3, data_80D5FFA4@l
/* 80D5FAC4  4B 50 36 CC */	b ModuleDestructorsX
/* 80D5FAC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FACC  7C 08 03 A6 */	mtlr r0
/* 80D5FAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FAD4  4E 80 00 20 */	blr 
