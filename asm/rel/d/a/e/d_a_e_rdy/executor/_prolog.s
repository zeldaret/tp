lbl_8076BCE0:
/* 8076BCE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076BCE4  7C 08 02 A6 */	mflr r0
/* 8076BCE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076BCEC  3C 60 80 78 */	lis r3, data_80779DE8@ha
/* 8076BCF0  38 63 9D E8 */	addi r3, r3, data_80779DE8@l
/* 8076BCF4  4B AF 74 58 */	b ModuleConstructorsX
/* 8076BCF8  4B AF 73 90 */	b ModuleProlog
/* 8076BCFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076BD00  7C 08 03 A6 */	mtlr r0
/* 8076BD04  38 21 00 10 */	addi r1, r1, 0x10
/* 8076BD08  4E 80 00 20 */	blr 
