lbl_80C83698:
/* 80C83698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8369C  7C 08 02 A6 */	mflr r0
/* 80C836A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C836A4  4B 3F 52 39 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C836A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C836AC  7C 08 03 A6 */	mtlr r0
/* 80C836B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C836B4  4E 80 00 20 */	blr 
