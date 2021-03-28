lbl_80480C18:
/* 80480C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480C1C  7C 08 02 A6 */	mflr r0
/* 80480C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480C24  4B BF 7D 2C */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80480C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480C2C  7C 08 03 A6 */	mtlr r0
/* 80480C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80480C34  4E 80 00 20 */	blr 
