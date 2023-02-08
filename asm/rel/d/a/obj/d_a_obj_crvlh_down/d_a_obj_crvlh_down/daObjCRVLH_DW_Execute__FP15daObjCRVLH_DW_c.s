lbl_80BD46CC:
/* 80BD46CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD46D0  7C 08 02 A6 */	mflr r0
/* 80BD46D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD46D8  4B 4A 42 79 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BD46DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD46E0  7C 08 03 A6 */	mtlr r0
/* 80BD46E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD46E8  4E 80 00 20 */	blr 
