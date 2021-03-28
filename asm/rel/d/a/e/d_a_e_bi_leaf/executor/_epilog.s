lbl_8068DC0C:
/* 8068DC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068DC10  7C 08 02 A6 */	mflr r0
/* 8068DC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068DC18  4B BD 54 74 */	b ModuleEpilog
/* 8068DC1C  3C 60 80 69 */	lis r3, data_8068DFDC@ha
/* 8068DC20  38 63 DF DC */	addi r3, r3, data_8068DFDC@l
/* 8068DC24  4B BD 55 6C */	b ModuleDestructorsX
/* 8068DC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068DC2C  7C 08 03 A6 */	mtlr r0
/* 8068DC30  38 21 00 10 */	addi r1, r1, 0x10
/* 8068DC34  4E 80 00 20 */	blr 
