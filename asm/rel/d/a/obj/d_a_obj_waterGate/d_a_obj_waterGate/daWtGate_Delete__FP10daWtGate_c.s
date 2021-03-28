lbl_80D2C380:
/* 80D2C380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C384  7C 08 02 A6 */	mflr r0
/* 80D2C388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C38C  4B 34 C5 50 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D2C390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C394  7C 08 03 A6 */	mtlr r0
/* 80D2C398  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C39C  4E 80 00 20 */	blr 
