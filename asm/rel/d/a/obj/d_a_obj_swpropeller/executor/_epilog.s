lbl_8059A4CC:
/* 8059A4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A4D0  7C 08 02 A6 */	mflr r0
/* 8059A4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A4D8  4B CC 8B B4 */	b ModuleEpilog
/* 8059A4DC  3C 60 80 5A */	lis r3, data_8059B2C4@ha
/* 8059A4E0  38 63 B2 C4 */	addi r3, r3, data_8059B2C4@l
/* 8059A4E4  4B CC 8C AC */	b ModuleDestructorsX
/* 8059A4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A4EC  7C 08 03 A6 */	mtlr r0
/* 8059A4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A4F4  4E 80 00 20 */	blr 
