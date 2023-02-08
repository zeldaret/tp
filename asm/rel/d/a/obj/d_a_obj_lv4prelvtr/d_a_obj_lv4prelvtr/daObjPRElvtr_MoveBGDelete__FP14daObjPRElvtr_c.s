lbl_80C68A84:
/* 80C68A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68A88  7C 08 02 A6 */	mflr r0
/* 80C68A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68A90  4B 40 FE 4D */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C68A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68A98  7C 08 03 A6 */	mtlr r0
/* 80C68A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68AA0  4E 80 00 20 */	blr 
