lbl_80D0771C:
/* 80D0771C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07720  7C 08 02 A6 */	mflr r0
/* 80D07724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07728  4B 37 11 B4 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D0772C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D07730  7C 08 03 A6 */	mtlr r0
/* 80D07734  38 21 00 10 */	addi r1, r1, 0x10
/* 80D07738  4E 80 00 20 */	blr 
