lbl_80B9E52C:
/* 80B9E52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E530  7C 08 02 A6 */	mflr r0
/* 80B9E534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E538  4B 4D A3 A4 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80B9E53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E540  7C 08 03 A6 */	mtlr r0
/* 80B9E544  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E548  4E 80 00 20 */	blr 
