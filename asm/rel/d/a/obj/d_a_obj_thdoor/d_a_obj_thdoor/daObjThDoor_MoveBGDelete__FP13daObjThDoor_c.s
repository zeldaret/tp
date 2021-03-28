lbl_80D0E520:
/* 80D0E520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E524  7C 08 02 A6 */	mflr r0
/* 80D0E528  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E52C  4B 36 A3 B0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D0E530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E534  7C 08 03 A6 */	mtlr r0
/* 80D0E538  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E53C  4E 80 00 20 */	blr 
