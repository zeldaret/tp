lbl_80D076FC:
/* 80D076FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07700  7C 08 02 A6 */	mflr r0
/* 80D07704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07708  4B 37 12 48 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D0770C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D07710  7C 08 03 A6 */	mtlr r0
/* 80D07714  38 21 00 10 */	addi r1, r1, 0x10
/* 80D07718  4E 80 00 20 */	blr 
