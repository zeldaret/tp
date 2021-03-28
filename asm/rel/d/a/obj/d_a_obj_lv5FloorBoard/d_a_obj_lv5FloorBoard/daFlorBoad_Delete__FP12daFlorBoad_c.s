lbl_80C6AFD0:
/* 80C6AFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6AFD4  7C 08 02 A6 */	mflr r0
/* 80C6AFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6AFDC  4B 40 D9 00 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C6AFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6AFE4  7C 08 03 A6 */	mtlr r0
/* 80C6AFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6AFEC  4E 80 00 20 */	blr 
