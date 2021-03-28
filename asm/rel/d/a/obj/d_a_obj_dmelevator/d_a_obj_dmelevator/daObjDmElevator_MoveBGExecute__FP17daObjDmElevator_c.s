lbl_80BDF7F8:
/* 80BDF7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDF7FC  7C 08 02 A6 */	mflr r0
/* 80BDF800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDF804  4B 49 91 4C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BDF808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDF80C  7C 08 03 A6 */	mtlr r0
/* 80BDF810  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDF814  4E 80 00 20 */	blr 
