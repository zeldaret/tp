lbl_80C6C4C8:
/* 80C6C4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C4CC  7C 08 02 A6 */	mflr r0
/* 80C6C4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C4D4  4B 40 C4 09 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C6C4D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C4DC  7C 08 03 A6 */	mtlr r0
/* 80C6C4E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C4E4  4E 80 00 20 */	blr 
