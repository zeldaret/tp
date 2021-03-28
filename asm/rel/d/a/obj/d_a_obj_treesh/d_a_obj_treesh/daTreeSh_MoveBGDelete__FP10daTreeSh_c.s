lbl_80D1F7B0:
/* 80D1F7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F7B4  7C 08 02 A6 */	mflr r0
/* 80D1F7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F7BC  4B 35 91 20 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D1F7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F7C4  7C 08 03 A6 */	mtlr r0
/* 80D1F7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F7CC  4E 80 00 20 */	blr 
