lbl_80D03B9C:
/* 80D03B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03BA0  7C 08 02 A6 */	mflr r0
/* 80D03BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03BA8  4B 37 4D A8 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D03BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D03BB0  7C 08 03 A6 */	mtlr r0
/* 80D03BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D03BB8  4E 80 00 20 */	blr 
