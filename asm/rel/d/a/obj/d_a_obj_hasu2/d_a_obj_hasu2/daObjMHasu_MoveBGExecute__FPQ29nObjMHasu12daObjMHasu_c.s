lbl_80C18994:
/* 80C18994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18998  7C 08 02 A6 */	mflr r0
/* 80C1899C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C189A0  4B 45 FF B0 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C189A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C189A8  7C 08 03 A6 */	mtlr r0
/* 80C189AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C189B0  4E 80 00 20 */	blr 
