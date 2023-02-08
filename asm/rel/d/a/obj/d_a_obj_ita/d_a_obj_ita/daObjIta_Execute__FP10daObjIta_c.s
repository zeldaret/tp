lbl_80C288BC:
/* 80C288BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C288C0  7C 08 02 A6 */	mflr r0
/* 80C288C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C288C8  4B 45 00 89 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C288CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C288D0  7C 08 03 A6 */	mtlr r0
/* 80C288D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C288D8  4E 80 00 20 */	blr 
