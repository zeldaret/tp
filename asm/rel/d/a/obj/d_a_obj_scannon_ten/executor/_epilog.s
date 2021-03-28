lbl_80CCB2CC:
/* 80CCB2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB2D0  7C 08 02 A6 */	mflr r0
/* 80CCB2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB2D8  4B 59 7D B4 */	b ModuleEpilog
/* 80CCB2DC  3C 60 80 CD */	lis r3, data_80CCCC34@ha
/* 80CCB2E0  38 63 CC 34 */	addi r3, r3, data_80CCCC34@l
/* 80CCB2E4  4B 59 7E AC */	b ModuleDestructorsX
/* 80CCB2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB2EC  7C 08 03 A6 */	mtlr r0
/* 80CCB2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB2F4  4E 80 00 20 */	blr 
