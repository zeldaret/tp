lbl_80D369A4:
/* 80D369A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D369A8  7C 08 02 A6 */	mflr r0
/* 80D369AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D369B0  4B 34 1F A0 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D369B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D369B8  7C 08 03 A6 */	mtlr r0
/* 80D369BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D369C0  4E 80 00 20 */	blr 
