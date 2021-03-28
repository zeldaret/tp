lbl_80D26A94:
/* 80D26A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26A98  7C 08 02 A6 */	mflr r0
/* 80D26A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26AA0  4B 35 1E B0 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D26AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26AA8  7C 08 03 A6 */	mtlr r0
/* 80D26AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26AB0  4E 80 00 20 */	blr 
