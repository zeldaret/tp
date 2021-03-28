lbl_80D04B24:
/* 80D04B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04B28  7C 08 02 A6 */	mflr r0
/* 80D04B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04B30  4B 37 3D AC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D04B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04B38  7C 08 03 A6 */	mtlr r0
/* 80D04B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04B40  4E 80 00 20 */	blr 
