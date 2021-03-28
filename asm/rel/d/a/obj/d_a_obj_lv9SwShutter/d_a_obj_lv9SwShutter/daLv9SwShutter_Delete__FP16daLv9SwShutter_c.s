lbl_80C8D6F0:
/* 80C8D6F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8D6F4  7C 08 02 A6 */	mflr r0
/* 80C8D6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8D6FC  4B 3E B1 E0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C8D700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8D704  7C 08 03 A6 */	mtlr r0
/* 80C8D708  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8D70C  4E 80 00 20 */	blr 
