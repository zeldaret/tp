lbl_80D04B44:
/* 80D04B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04B48  7C 08 02 A6 */	mflr r0
/* 80D04B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04B50  4B 37 3E 00 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D04B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04B58  7C 08 03 A6 */	mtlr r0
/* 80D04B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04B60  4E 80 00 20 */	blr 
