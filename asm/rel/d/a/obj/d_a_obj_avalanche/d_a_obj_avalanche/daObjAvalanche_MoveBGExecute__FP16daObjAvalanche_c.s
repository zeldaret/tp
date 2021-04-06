lbl_80BA7C8C:
/* 80BA7C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7C90  7C 08 02 A6 */	mflr r0
/* 80BA7C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7C98  4B 4D 0C B9 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BA7C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA7CA0  7C 08 03 A6 */	mtlr r0
/* 80BA7CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7CA8  4E 80 00 20 */	blr 
