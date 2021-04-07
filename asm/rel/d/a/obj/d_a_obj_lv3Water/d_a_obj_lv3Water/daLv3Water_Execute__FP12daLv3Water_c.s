lbl_80C59BD4:
/* 80C59BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C59BD8  7C 08 02 A6 */	mflr r0
/* 80C59BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C59BE0  4B 41 ED 71 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C59BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C59BE8  7C 08 03 A6 */	mtlr r0
/* 80C59BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C59BF0  4E 80 00 20 */	blr 
