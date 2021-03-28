lbl_80D4EAAC:
/* 80D4EAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4EAB0  7C 08 02 A6 */	mflr r0
/* 80D4EAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4EAB8  4B 51 45 D4 */	b ModuleEpilog
/* 80D4EABC  3C 60 80 D5 */	lis r3, data_80D4F4CC@ha
/* 80D4EAC0  38 63 F4 CC */	addi r3, r3, data_80D4F4CC@l
/* 80D4EAC4  4B 51 46 CC */	b ModuleDestructorsX
/* 80D4EAC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4EACC  7C 08 03 A6 */	mtlr r0
/* 80D4EAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4EAD4  4E 80 00 20 */	blr 
