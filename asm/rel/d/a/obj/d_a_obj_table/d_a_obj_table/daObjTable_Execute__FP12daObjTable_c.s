lbl_80D06464:
/* 80D06464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06468  7C 08 02 A6 */	mflr r0
/* 80D0646C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06470  4B 37 24 E0 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D06474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06478  7C 08 03 A6 */	mtlr r0
/* 80D0647C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06480  4E 80 00 20 */	blr 
