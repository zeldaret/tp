lbl_80D0E540:
/* 80D0E540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E544  7C 08 02 A6 */	mflr r0
/* 80D0E548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E54C  4B 36 A4 05 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D0E550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E554  7C 08 03 A6 */	mtlr r0
/* 80D0E558  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E55C  4E 80 00 20 */	blr 
