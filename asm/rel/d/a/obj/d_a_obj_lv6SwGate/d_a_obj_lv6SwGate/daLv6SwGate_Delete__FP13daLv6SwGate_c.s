lbl_80C753AC:
/* 80C753AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C753B0  7C 08 02 A6 */	mflr r0
/* 80C753B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C753B8  4B 40 35 25 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C753BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C753C0  7C 08 03 A6 */	mtlr r0
/* 80C753C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C753C8  4E 80 00 20 */	blr 
