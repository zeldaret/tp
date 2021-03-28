lbl_8059C5F8:
/* 8059C5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C5FC  7C 08 02 A6 */	mflr r0
/* 8059C600  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C604  4B AD C3 4C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 8059C608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C60C  7C 08 03 A6 */	mtlr r0
/* 8059C610  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C614  4E 80 00 20 */	blr 
