lbl_80C69824:
/* 80C69824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69828  7C 08 02 A6 */	mflr r0
/* 80C6982C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69830  4B 40 F1 20 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C69834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69838  7C 08 03 A6 */	mtlr r0
/* 80C6983C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69840  4E 80 00 20 */	blr 
