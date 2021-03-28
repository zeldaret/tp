lbl_80D00A20:
/* 80D00A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00A24  7C 08 02 A6 */	mflr r0
/* 80D00A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00A2C  4B 37 7E B0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D00A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00A34  7C 08 03 A6 */	mtlr r0
/* 80D00A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00A3C  4E 80 00 20 */	blr 
