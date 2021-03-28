lbl_80C7C45C:
/* 80C7C45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7C460  7C 08 02 A6 */	mflr r0
/* 80C7C464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7C468  4B 3F C4 E8 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C7C46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7C470  7C 08 03 A6 */	mtlr r0
/* 80C7C474  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7C478  4E 80 00 20 */	blr 
