lbl_80BCA748:
/* 80BCA748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA74C  7C 08 02 A6 */	mflr r0
/* 80BCA750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA754  48 00 18 C9 */	bl create__10daObjCHO_cFv
/* 80BCA758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA75C  7C 08 03 A6 */	mtlr r0
/* 80BCA760  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA764  4E 80 00 20 */	blr 
