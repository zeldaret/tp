lbl_80BD5358:
/* 80BD5358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD535C  7C 08 02 A6 */	mflr r0
/* 80BD5360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5364  4B 4A 35 EC */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BD5368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD536C  7C 08 03 A6 */	mtlr r0
/* 80BD5370  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5374  4E 80 00 20 */	blr 
