lbl_80C8E570:
/* 80C8E570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E574  7C 08 02 A6 */	mflr r0
/* 80C8E578  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E57C  4B 3E A3 61 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C8E580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E584  7C 08 03 A6 */	mtlr r0
/* 80C8E588  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E58C  4E 80 00 20 */	blr 
