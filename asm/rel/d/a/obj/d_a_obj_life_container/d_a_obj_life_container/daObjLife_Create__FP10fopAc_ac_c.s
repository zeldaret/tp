lbl_804CE2D4:
/* 804CE2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE2D8  7C 08 02 A6 */	mflr r0
/* 804CE2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE2E0  4B FF ED 01 */	bl create__11daObjLife_cFv
/* 804CE2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE2E8  7C 08 03 A6 */	mtlr r0
/* 804CE2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE2F0  4E 80 00 20 */	blr 
