lbl_80CAD0F4:
/* 80CAD0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD0F8  7C 08 02 A6 */	mflr r0
/* 80CAD0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD100  4B 3C B8 50 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CAD104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD108  7C 08 03 A6 */	mtlr r0
/* 80CAD10C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD110  4E 80 00 20 */	blr 
