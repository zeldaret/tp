lbl_80D18D00:
/* 80D18D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D18D04  7C 08 02 A6 */	mflr r0
/* 80D18D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D18D0C  4B 35 FC 44 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D18D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18D14  7C 08 03 A6 */	mtlr r0
/* 80D18D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18D1C  4E 80 00 20 */	blr 
