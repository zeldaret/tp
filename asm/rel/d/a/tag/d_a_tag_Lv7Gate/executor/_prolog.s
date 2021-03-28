lbl_80D50A40:
/* 80D50A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D50A44  7C 08 02 A6 */	mflr r0
/* 80D50A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D50A4C  3C 60 80 D5 */	lis r3, data_80D51ACC@ha
/* 80D50A50  38 63 1A CC */	addi r3, r3, data_80D51ACC@l
/* 80D50A54  4B 51 26 F8 */	b ModuleConstructorsX
/* 80D50A58  4B 51 26 30 */	b ModuleProlog
/* 80D50A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D50A60  7C 08 03 A6 */	mtlr r0
/* 80D50A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D50A68  4E 80 00 20 */	blr 
