lbl_80BF5564:
/* 80BF5564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF5568  7C 08 02 A6 */	mflr r0
/* 80BF556C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF5570  4B FF FB F9 */	bl draw__12daObjGWall_cFv
/* 80BF5574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF5578  7C 08 03 A6 */	mtlr r0
/* 80BF557C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF5580  4E 80 00 20 */	blr 
