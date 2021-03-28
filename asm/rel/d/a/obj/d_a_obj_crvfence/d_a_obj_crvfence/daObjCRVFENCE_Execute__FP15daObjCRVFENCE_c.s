lbl_80BCF9C4:
/* 80BCF9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCF9C8  7C 08 02 A6 */	mflr r0
/* 80BCF9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCF9D0  4B 4A 8F 80 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BCF9D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCF9D8  7C 08 03 A6 */	mtlr r0
/* 80BCF9DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCF9E0  4E 80 00 20 */	blr 
