lbl_80CCE084:
/* 80CCE084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE088  7C 08 02 A6 */	mflr r0
/* 80CCE08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE090  4B 3A A8 C0 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80CCE094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE098  7C 08 03 A6 */	mtlr r0
/* 80CCE09C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE0A0  4E 80 00 20 */	blr 
