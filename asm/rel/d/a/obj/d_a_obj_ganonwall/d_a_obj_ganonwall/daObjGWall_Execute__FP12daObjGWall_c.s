lbl_80BF5584:
/* 80BF5584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF5588  7C 08 02 A6 */	mflr r0
/* 80BF558C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF5590  4B FF FB 15 */	bl execute__12daObjGWall_cFv
/* 80BF5594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF5598  7C 08 03 A6 */	mtlr r0
/* 80BF559C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF55A0  4E 80 00 20 */	blr 
