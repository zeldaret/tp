lbl_8058C578:
/* 8058C578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C57C  7C 08 02 A6 */	mflr r0
/* 8058C580  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C584  4B CD 6B 0C */	b ModuleUnresolved
/* 8058C588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C58C  7C 08 03 A6 */	mtlr r0
/* 8058C590  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C594  4E 80 00 20 */	blr 
