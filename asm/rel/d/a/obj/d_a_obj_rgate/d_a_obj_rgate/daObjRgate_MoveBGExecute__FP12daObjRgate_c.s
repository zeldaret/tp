lbl_80CBC2B0:
/* 80CBC2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC2B4  7C 08 02 A6 */	mflr r0
/* 80CBC2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC2BC  4B 3B C6 94 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CBC2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC2C4  7C 08 03 A6 */	mtlr r0
/* 80CBC2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC2CC  4E 80 00 20 */	blr 
