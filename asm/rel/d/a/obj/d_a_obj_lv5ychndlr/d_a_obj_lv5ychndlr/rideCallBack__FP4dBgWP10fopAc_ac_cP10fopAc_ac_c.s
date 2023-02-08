lbl_80C6D980:
/* 80C6D980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D984  7C 08 02 A6 */	mflr r0
/* 80C6D988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D98C  7C 83 23 78 */	mr r3, r4
/* 80C6D990  7C A4 2B 78 */	mr r4, r5
/* 80C6D994  48 00 00 15 */	bl rideActor__14daObjYchndlr_cFP10fopAc_ac_c
/* 80C6D998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D99C  7C 08 03 A6 */	mtlr r0
/* 80C6D9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D9A4  4E 80 00 20 */	blr 
