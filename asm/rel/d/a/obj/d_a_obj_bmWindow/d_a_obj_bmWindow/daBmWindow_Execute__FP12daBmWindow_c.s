lbl_80BB95A4:
/* 80BB95A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB95A8  7C 08 02 A6 */	mflr r0
/* 80BB95AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB95B0  4B 4B F3 A1 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BB95B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB95B8  7C 08 03 A6 */	mtlr r0
/* 80BB95BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB95C0  4E 80 00 20 */	blr 
