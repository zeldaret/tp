lbl_80078668:
/* 80078668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007866C  7C 08 02 A6 */	mflr r0
/* 80078670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078674  48 00 00 55 */	bl MoveBGCreateHeap__16dBgS_MoveBgActorFv
/* 80078678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007867C  7C 08 03 A6 */	mtlr r0
/* 80078680  38 21 00 10 */	addi r1, r1, 0x10
/* 80078684  4E 80 00 20 */	blr 
