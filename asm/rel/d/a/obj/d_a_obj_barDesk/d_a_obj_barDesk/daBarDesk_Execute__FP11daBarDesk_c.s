lbl_80BA99E8:
/* 80BA99E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA99EC  7C 08 02 A6 */	mflr r0
/* 80BA99F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA99F4  4B 4C EF 5C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BA99F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA99FC  7C 08 03 A6 */	mtlr r0
/* 80BA9A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9A04  4E 80 00 20 */	blr 
