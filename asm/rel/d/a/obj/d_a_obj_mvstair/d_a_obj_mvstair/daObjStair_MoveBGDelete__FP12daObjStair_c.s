lbl_80C9E7B4:
/* 80C9E7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9E7B8  7C 08 02 A6 */	mflr r0
/* 80C9E7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E7C0  4B 3D A1 1C */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C9E7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9E7C8  7C 08 03 A6 */	mtlr r0
/* 80C9E7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9E7D0  4E 80 00 20 */	blr 
