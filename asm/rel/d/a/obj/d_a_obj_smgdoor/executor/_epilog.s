lbl_80CDBAEC:
/* 80CDBAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBAF0  7C 08 02 A6 */	mflr r0
/* 80CDBAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBAF8  4B 58 75 94 */	b ModuleEpilog
/* 80CDBAFC  3C 60 80 CE */	lis r3, data_80CDCBF0@ha
/* 80CDBB00  38 63 CB F0 */	addi r3, r3, data_80CDCBF0@l
/* 80CDBB04  4B 58 76 8C */	b ModuleDestructorsX
/* 80CDBB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDBB0C  7C 08 03 A6 */	mtlr r0
/* 80CDBB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDBB14  4E 80 00 20 */	blr 
