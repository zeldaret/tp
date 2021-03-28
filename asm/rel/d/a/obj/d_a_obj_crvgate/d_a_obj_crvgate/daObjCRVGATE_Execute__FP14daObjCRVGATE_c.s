lbl_80BD2650:
/* 80BD2650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD2654  7C 08 02 A6 */	mflr r0
/* 80BD2658  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD265C  4B 4A 62 F4 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BD2660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD2664  7C 08 03 A6 */	mtlr r0
/* 80BD2668  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD266C  4E 80 00 20 */	blr 
