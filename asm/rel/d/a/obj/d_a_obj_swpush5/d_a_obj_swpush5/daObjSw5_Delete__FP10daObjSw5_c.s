lbl_8059C618:
/* 8059C618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C61C  7C 08 02 A6 */	mflr r0
/* 8059C620  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C624  4B AD C2 B8 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 8059C628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C62C  7C 08 03 A6 */	mtlr r0
/* 8059C630  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C634  4E 80 00 20 */	blr 
