lbl_80D26A74:
/* 80D26A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26A78  7C 08 02 A6 */	mflr r0
/* 80D26A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26A80  4B 35 1E 5C */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D26A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26A88  7C 08 03 A6 */	mtlr r0
/* 80D26A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26A90  4E 80 00 20 */	blr 
