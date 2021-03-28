lbl_8048ACEC:
/* 8048ACEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ACF0  7C 08 02 A6 */	mflr r0
/* 8048ACF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ACF8  4B DD 83 94 */	b ModuleEpilog
/* 8048ACFC  3C 60 80 49 */	lis r3, data_8048B82C@ha
/* 8048AD00  38 63 B8 2C */	addi r3, r3, data_8048B82C@l
/* 8048AD04  4B DD 84 8C */	b ModuleDestructorsX
/* 8048AD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048AD0C  7C 08 03 A6 */	mtlr r0
/* 8048AD10  38 21 00 10 */	addi r1, r1, 0x10
/* 8048AD14  4E 80 00 20 */	blr 
