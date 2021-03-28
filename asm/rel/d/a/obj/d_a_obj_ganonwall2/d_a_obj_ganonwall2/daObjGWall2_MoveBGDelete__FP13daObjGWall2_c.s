lbl_80BF6098:
/* 80BF6098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF609C  7C 08 02 A6 */	mflr r0
/* 80BF60A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF60A4  4B 48 28 38 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BF60A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF60AC  7C 08 03 A6 */	mtlr r0
/* 80BF60B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF60B4  4E 80 00 20 */	blr 
