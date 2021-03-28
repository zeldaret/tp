lbl_8085BAEC:
/* 8085BAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085BAF0  7C 08 02 A6 */	mflr r0
/* 8085BAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085BAF8  4B A0 75 94 */	b ModuleEpilog
/* 8085BAFC  3C 60 80 86 */	lis r3, data_8085EEFC@ha
/* 8085BB00  38 63 EE FC */	addi r3, r3, data_8085EEFC@l
/* 8085BB04  4B A0 76 8C */	b ModuleDestructorsX
/* 8085BB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085BB0C  7C 08 03 A6 */	mtlr r0
/* 8085BB10  38 21 00 10 */	addi r1, r1, 0x10
/* 8085BB14  4E 80 00 20 */	blr 
