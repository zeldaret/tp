lbl_80D1F7D0:
/* 80D1F7D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F7D4  7C 08 02 A6 */	mflr r0
/* 80D1F7D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F7DC  4B 35 91 75 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D1F7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F7E4  7C 08 03 A6 */	mtlr r0
/* 80D1F7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F7EC  4E 80 00 20 */	blr 
