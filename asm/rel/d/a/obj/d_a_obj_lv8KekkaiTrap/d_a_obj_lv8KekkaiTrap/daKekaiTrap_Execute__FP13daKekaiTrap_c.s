lbl_80C883D8:
/* 80C883D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C883DC  7C 08 02 A6 */	mflr r0
/* 80C883E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C883E4  4B 3F 05 6D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C883E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C883EC  7C 08 03 A6 */	mtlr r0
/* 80C883F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C883F4  4E 80 00 20 */	blr 
