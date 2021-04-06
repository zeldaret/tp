lbl_80C8CB04:
/* 80C8CB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CB08  7C 08 02 A6 */	mflr r0
/* 80C8CB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CB10  4B 3E BD CD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C8CB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CB18  7C 08 03 A6 */	mtlr r0
/* 80C8CB1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CB20  4E 80 00 20 */	blr 
