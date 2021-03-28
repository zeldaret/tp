lbl_8049808C:
/* 8049808C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80498090  7C 08 02 A6 */	mflr r0
/* 80498094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80498098  4B BE 08 44 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 8049809C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804980A0  7C 08 03 A6 */	mtlr r0
/* 804980A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804980A8  4E 80 00 20 */	blr 
