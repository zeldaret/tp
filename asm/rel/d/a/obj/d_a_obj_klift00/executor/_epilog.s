lbl_8058AEEC:
/* 8058AEEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AEF0  7C 08 02 A6 */	mflr r0
/* 8058AEF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AEF8  4B CD 81 94 */	b ModuleEpilog
/* 8058AEFC  3C 60 80 59 */	lis r3, data_8058C37C@ha
/* 8058AF00  38 63 C3 7C */	addi r3, r3, data_8058C37C@l
/* 8058AF04  4B CD 82 8C */	b ModuleDestructorsX
/* 8058AF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AF0C  7C 08 03 A6 */	mtlr r0
/* 8058AF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AF14  4E 80 00 20 */	blr 
