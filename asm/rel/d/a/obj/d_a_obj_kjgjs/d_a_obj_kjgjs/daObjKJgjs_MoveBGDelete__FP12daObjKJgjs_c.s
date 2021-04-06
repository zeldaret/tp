lbl_80C46460:
/* 80C46460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46464  7C 08 02 A6 */	mflr r0
/* 80C46468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4646C  4B 43 24 71 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C46470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46474  7C 08 03 A6 */	mtlr r0
/* 80C46478  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4647C  4E 80 00 20 */	blr 
