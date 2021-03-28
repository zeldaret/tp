lbl_80D29998:
/* 80D29998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2999C  7C 08 02 A6 */	mflr r0
/* 80D299A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D299A4  4B 53 96 EC */	b ModuleUnresolved
/* 80D299A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D299AC  7C 08 03 A6 */	mtlr r0
/* 80D299B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D299B4  4E 80 00 20 */	blr 
