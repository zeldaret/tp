lbl_80CB9978:
/* 80CB9978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB997C  7C 08 02 A6 */	mflr r0
/* 80CB9980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9984  4B 3B EF CD */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CB9988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB998C  7C 08 03 A6 */	mtlr r0
/* 80CB9990  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9994  4E 80 00 20 */	blr 
