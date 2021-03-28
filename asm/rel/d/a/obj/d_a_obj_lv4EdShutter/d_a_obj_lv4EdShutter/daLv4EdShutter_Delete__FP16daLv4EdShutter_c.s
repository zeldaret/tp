lbl_80C5E6EC:
/* 80C5E6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E6F0  7C 08 02 A6 */	mflr r0
/* 80C5E6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E6F8  4B 41 A1 E4 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C5E6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E700  7C 08 03 A6 */	mtlr r0
/* 80C5E704  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E708  4E 80 00 20 */	blr 
