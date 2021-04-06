lbl_80CC1334:
/* 80CC1334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1338  7C 08 02 A6 */	mflr r0
/* 80CC133C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1340  4B 3B 76 11 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CC1344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1348  7C 08 03 A6 */	mtlr r0
/* 80CC134C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1350  4E 80 00 20 */	blr 
