lbl_80CA5AC0:
/* 80CA5AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA5AC4  7C 08 02 A6 */	mflr r0
/* 80CA5AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA5ACC  4B 3D 2E 84 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CA5AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA5AD4  7C 08 03 A6 */	mtlr r0
/* 80CA5AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA5ADC  4E 80 00 20 */	blr 
