lbl_80B46480:
/* 80B46480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46484  7C 08 02 A6 */	mflr r0
/* 80B46488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4648C  3C 60 80 B5 */	lis r3, data_80B4969C@ha
/* 80B46490  38 63 96 9C */	addi r3, r3, data_80B4969C@l
/* 80B46494  4B 71 CC B8 */	b ModuleConstructorsX
/* 80B46498  4B 71 CB F0 */	b ModuleProlog
/* 80B4649C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B464A0  7C 08 03 A6 */	mtlr r0
/* 80B464A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B464A8  4E 80 00 20 */	blr 
