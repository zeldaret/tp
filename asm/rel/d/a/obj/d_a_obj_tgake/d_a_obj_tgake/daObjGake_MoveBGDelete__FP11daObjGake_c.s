lbl_80D0C0C8:
/* 80D0C0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C0CC  7C 08 02 A6 */	mflr r0
/* 80D0C0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C0D4  4B 36 C8 09 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D0C0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C0DC  7C 08 03 A6 */	mtlr r0
/* 80D0C0E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C0E4  4E 80 00 20 */	blr 
