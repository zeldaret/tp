lbl_80BDD604:
/* 80BDD604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD608  7C 08 02 A6 */	mflr r0
/* 80BDD60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD610  4B 49 B3 40 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BDD614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD618  7C 08 03 A6 */	mtlr r0
/* 80BDD61C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD620  4E 80 00 20 */	blr 
