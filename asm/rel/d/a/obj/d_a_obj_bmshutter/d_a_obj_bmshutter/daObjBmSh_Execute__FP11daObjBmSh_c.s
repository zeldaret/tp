lbl_80BBA748:
/* 80BBA748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA74C  7C 08 02 A6 */	mflr r0
/* 80BBA750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA754  4B 4B E1 FC */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BBA758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA75C  7C 08 03 A6 */	mtlr r0
/* 80BBA760  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA764  4E 80 00 20 */	blr 
