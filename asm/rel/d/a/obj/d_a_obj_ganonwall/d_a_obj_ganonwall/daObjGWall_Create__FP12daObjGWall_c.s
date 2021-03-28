lbl_80BF55C4:
/* 80BF55C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF55C8  7C 08 02 A6 */	mflr r0
/* 80BF55CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF55D0  4B FF FA 21 */	bl create__12daObjGWall_cFv
/* 80BF55D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF55D8  7C 08 03 A6 */	mtlr r0
/* 80BF55DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF55E0  4E 80 00 20 */	blr 
