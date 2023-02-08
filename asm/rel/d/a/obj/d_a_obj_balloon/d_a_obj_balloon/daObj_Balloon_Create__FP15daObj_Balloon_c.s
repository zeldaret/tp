lbl_80BA8CFC:
/* 80BA8CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8D00  7C 08 02 A6 */	mflr r0
/* 80BA8D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8D08  4B FF FB BD */	bl create__15daObj_Balloon_cFv
/* 80BA8D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8D10  7C 08 03 A6 */	mtlr r0
/* 80BA8D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8D18  4E 80 00 20 */	blr 
