lbl_80C86044:
/* 80C86044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C86048  7C 08 02 A6 */	mflr r0
/* 80C8604C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C86050  4B 3F 28 8C */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C86054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86058  7C 08 03 A6 */	mtlr r0
/* 80C8605C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86060  4E 80 00 20 */	blr 
