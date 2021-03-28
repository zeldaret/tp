lbl_80BA7C6C:
/* 80BA7C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7C70  7C 08 02 A6 */	mflr r0
/* 80BA7C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7C78  4B 4D 0C 64 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BA7C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA7C80  7C 08 03 A6 */	mtlr r0
/* 80BA7C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7C88  4E 80 00 20 */	blr 
