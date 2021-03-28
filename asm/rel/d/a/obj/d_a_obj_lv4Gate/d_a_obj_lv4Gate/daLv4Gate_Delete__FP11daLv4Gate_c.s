lbl_80C5F308:
/* 80C5F308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F30C  7C 08 02 A6 */	mflr r0
/* 80C5F310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F314  4B 41 95 C8 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C5F318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F31C  7C 08 03 A6 */	mtlr r0
/* 80C5F320  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F324  4E 80 00 20 */	blr 
