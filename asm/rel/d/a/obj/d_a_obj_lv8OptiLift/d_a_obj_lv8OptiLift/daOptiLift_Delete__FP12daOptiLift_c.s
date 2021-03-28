lbl_80C8B8C0:
/* 80C8B8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B8C4  7C 08 02 A6 */	mflr r0
/* 80C8B8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B8CC  4B 3E D0 10 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C8B8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B8D4  7C 08 03 A6 */	mtlr r0
/* 80C8B8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B8DC  4E 80 00 20 */	blr 
