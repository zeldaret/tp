lbl_80BC3EE8:
/* 80BC3EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3EEC  7C 08 02 A6 */	mflr r0
/* 80BC3EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3EF4  4B 4B 4A 5D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BC3EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3EFC  7C 08 03 A6 */	mtlr r0
/* 80BC3F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3F04  4E 80 00 20 */	blr 
