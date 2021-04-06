lbl_80BDF7D8:
/* 80BDF7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDF7DC  7C 08 02 A6 */	mflr r0
/* 80BDF7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDF7E4  4B 49 90 F9 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BDF7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDF7EC  7C 08 03 A6 */	mtlr r0
/* 80BDF7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDF7F4  4E 80 00 20 */	blr 
