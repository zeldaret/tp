lbl_80565DF8:
/* 80565DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565DFC  7C 08 02 A6 */	mflr r0
/* 80565E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565E04  4B CF D2 8C */	b ModuleUnresolved
/* 80565E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565E0C  7C 08 03 A6 */	mtlr r0
/* 80565E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80565E14  4E 80 00 20 */	blr 
