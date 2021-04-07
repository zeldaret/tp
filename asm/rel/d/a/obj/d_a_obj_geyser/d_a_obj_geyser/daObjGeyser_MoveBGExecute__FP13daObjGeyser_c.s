lbl_80BF8F4C:
/* 80BF8F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8F50  7C 08 02 A6 */	mflr r0
/* 80BF8F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8F58  4B 47 F9 F9 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BF8F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8F60  7C 08 03 A6 */	mtlr r0
/* 80BF8F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8F68  4E 80 00 20 */	blr 
