lbl_80593DF4:
/* 80593DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593DF8  7C 08 02 A6 */	mflr r0
/* 80593DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593E00  4B AE 4B 50 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80593E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593E08  7C 08 03 A6 */	mtlr r0
/* 80593E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80593E10  4E 80 00 20 */	blr 
