lbl_80D17678:
/* 80D17678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1767C  7C 08 02 A6 */	mflr r0
/* 80D17680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17684  4B 36 12 59 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D17688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1768C  7C 08 03 A6 */	mtlr r0
/* 80D17690  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17694  4E 80 00 20 */	blr 
