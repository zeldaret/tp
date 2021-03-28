lbl_804DF6C4:
/* 804DF6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF6C8  7C 08 02 A6 */	mflr r0
/* 804DF6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF6D0  4B B9 92 80 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 804DF6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF6D8  7C 08 03 A6 */	mtlr r0
/* 804DF6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF6E0  4E 80 00 20 */	blr 
