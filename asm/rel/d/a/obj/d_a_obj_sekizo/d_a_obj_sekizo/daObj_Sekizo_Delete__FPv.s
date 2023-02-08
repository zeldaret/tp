lbl_80CCE064:
/* 80CCE064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE068  7C 08 02 A6 */	mflr r0
/* 80CCE06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE070  4B 3A A8 6D */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CCE074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE078  7C 08 03 A6 */	mtlr r0
/* 80CCE07C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE080  4E 80 00 20 */	blr 
