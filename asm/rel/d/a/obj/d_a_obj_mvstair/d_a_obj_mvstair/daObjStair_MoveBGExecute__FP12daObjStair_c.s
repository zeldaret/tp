lbl_80C9E7D4:
/* 80C9E7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9E7D8  7C 08 02 A6 */	mflr r0
/* 80C9E7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E7E0  4B 3D A1 70 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C9E7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9E7E8  7C 08 03 A6 */	mtlr r0
/* 80C9E7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9E7F0  4E 80 00 20 */	blr 
