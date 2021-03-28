lbl_80C04AC8:
/* 80C04AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04ACC  7C 08 02 A6 */	mflr r0
/* 80C04AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04AD4  4B 54 AC 9C */	b MoveBGExecute__23daBaseNpc_moveBgActor_cFv
/* 80C04AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04ADC  7C 08 03 A6 */	mtlr r0
/* 80C04AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04AE4  4E 80 00 20 */	blr 
