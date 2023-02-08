lbl_80BD9DF8:
/* 80BD9DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9DFC  7C 08 02 A6 */	mflr r0
/* 80BD9E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9E04  4B 49 EA D9 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BD9E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9E0C  7C 08 03 A6 */	mtlr r0
/* 80BD9E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9E14  4E 80 00 20 */	blr 
