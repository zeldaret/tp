lbl_80BC68D0:
/* 80BC68D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC68D4  7C 08 02 A6 */	mflr r0
/* 80BC68D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC68DC  4B 4B 20 75 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BC68E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC68E4  7C 08 03 A6 */	mtlr r0
/* 80BC68E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC68EC  4E 80 00 20 */	blr 
