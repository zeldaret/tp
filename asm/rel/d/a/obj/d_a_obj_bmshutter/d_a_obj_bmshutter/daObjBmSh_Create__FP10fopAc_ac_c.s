lbl_80BBA788:
/* 80BBA788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA78C  7C 08 02 A6 */	mflr r0
/* 80BBA790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA794  4B FF F5 2D */	bl create__11daObjBmSh_cFv
/* 80BBA798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA79C  7C 08 03 A6 */	mtlr r0
/* 80BBA7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA7A4  4E 80 00 20 */	blr 
