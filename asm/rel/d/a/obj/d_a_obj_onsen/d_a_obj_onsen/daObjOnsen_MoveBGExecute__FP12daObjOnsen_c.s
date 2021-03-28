lbl_80CA80C8:
/* 80CA80C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA80CC  7C 08 02 A6 */	mflr r0
/* 80CA80D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA80D4  4B 3D 08 7C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CA80D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA80DC  7C 08 03 A6 */	mtlr r0
/* 80CA80E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA80E4  4E 80 00 20 */	blr 
