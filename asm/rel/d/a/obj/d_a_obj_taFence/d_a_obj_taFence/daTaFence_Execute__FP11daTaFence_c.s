lbl_80D05F58:
/* 80D05F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05F5C  7C 08 02 A6 */	mflr r0
/* 80D05F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05F64  4B 37 29 EC */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D05F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05F6C  7C 08 03 A6 */	mtlr r0
/* 80D05F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05F74  4E 80 00 20 */	blr 
