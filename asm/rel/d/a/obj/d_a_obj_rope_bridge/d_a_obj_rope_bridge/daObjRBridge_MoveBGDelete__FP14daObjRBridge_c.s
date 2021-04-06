lbl_80597CC0:
/* 80597CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597CC4  7C 08 02 A6 */	mflr r0
/* 80597CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597CCC  4B AE 0C 11 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80597CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597CD4  7C 08 03 A6 */	mtlr r0
/* 80597CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80597CDC  4E 80 00 20 */	blr 
