lbl_80D2B768:
/* 80D2B768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2B76C  7C 08 02 A6 */	mflr r0
/* 80D2B770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2B774  4B 34 D1 69 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D2B778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2B77C  7C 08 03 A6 */	mtlr r0
/* 80D2B780  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2B784  4E 80 00 20 */	blr 
