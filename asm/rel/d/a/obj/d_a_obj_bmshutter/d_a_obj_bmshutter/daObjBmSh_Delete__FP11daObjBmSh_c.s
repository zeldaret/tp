lbl_80BBA768:
/* 80BBA768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA76C  7C 08 02 A6 */	mflr r0
/* 80BBA770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA774  4B 4B E1 68 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BBA778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA77C  7C 08 03 A6 */	mtlr r0
/* 80BBA780  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA784  4E 80 00 20 */	blr 
