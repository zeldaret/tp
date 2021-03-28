lbl_80C71E40:
/* 80C71E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71E44  7C 08 02 A6 */	mflr r0
/* 80C71E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71E4C  4B 40 6B 04 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C71E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C71E54  7C 08 03 A6 */	mtlr r0
/* 80C71E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71E5C  4E 80 00 20 */	blr 
