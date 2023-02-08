lbl_80BFF044:
/* 80BFF044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF048  7C 08 02 A6 */	mflr r0
/* 80BFF04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF050  4B 47 99 01 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BFF054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF058  7C 08 03 A6 */	mtlr r0
/* 80BFF05C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF060  4E 80 00 20 */	blr 
