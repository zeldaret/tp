lbl_80BD40EC:
/* 80BD40EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD40F0  7C 08 02 A6 */	mflr r0
/* 80BD40F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD40F8  4B 68 EF 94 */	b ModuleEpilog
/* 80BD40FC  3C 60 80 BD */	lis r3, data_80BD4D00@ha
/* 80BD4100  38 63 4D 00 */	addi r3, r3, data_80BD4D00@l
/* 80BD4104  4B 68 F0 8C */	b ModuleDestructorsX
/* 80BD4108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD410C  7C 08 03 A6 */	mtlr r0
/* 80BD4110  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4114  4E 80 00 20 */	blr 
