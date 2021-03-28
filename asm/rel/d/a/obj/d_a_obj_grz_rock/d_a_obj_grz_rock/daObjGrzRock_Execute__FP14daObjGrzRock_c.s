lbl_80C152E0:
/* 80C152E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C152E4  7C 08 02 A6 */	mflr r0
/* 80C152E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C152EC  4B 46 36 64 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C152F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C152F4  7C 08 03 A6 */	mtlr r0
/* 80C152F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C152FC  4E 80 00 20 */	blr 
