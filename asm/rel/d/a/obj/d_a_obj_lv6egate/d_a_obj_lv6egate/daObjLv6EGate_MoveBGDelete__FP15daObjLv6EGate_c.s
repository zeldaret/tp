lbl_80C829CC:
/* 80C829CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C829D0  7C 08 02 A6 */	mflr r0
/* 80C829D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C829D8  4B 3F 5F 05 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C829DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C829E0  7C 08 03 A6 */	mtlr r0
/* 80C829E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C829E8  4E 80 00 20 */	blr 
