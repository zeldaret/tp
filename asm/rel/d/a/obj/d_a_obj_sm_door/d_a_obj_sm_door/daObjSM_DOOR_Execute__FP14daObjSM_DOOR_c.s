lbl_80CD8D2C:
/* 80CD8D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8D30  7C 08 02 A6 */	mflr r0
/* 80CD8D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8D38  4B 39 FC 19 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CD8D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8D40  7C 08 03 A6 */	mtlr r0
/* 80CD8D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8D48  4E 80 00 20 */	blr 
