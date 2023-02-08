lbl_8014BE2C:
/* 8014BE2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014BE30  7C 08 02 A6 */	mflr r0
/* 8014BE34  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014BE38  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8014BE3C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8014BE40  39 61 00 20 */	addi r11, r1, 0x20
/* 8014BE44  48 21 63 91 */	bl _savegpr_27
/* 8014BE48  7C 7B 1B 78 */	mr r27, r3
/* 8014BE4C  3B A0 00 00 */	li r29, 0
/* 8014BE50  C3 E2 9A 7C */	lfs f31, lit_7337(r2)
/* 8014BE54  38 00 00 00 */	li r0, 0
/* 8014BE58  90 0D 8A 5C */	stw r0, mFindCount__8daNpcT_c(r13)
/* 8014BE5C  B0 8D 8A 58 */	sth r4, mSrchName__8daNpcT_c(r13)
/* 8014BE60  3C 60 80 14 */	lis r3, srchActor__8daNpcT_cFPvPv@ha /* 0x80147FD4@ha */
/* 8014BE64  38 63 7F D4 */	addi r3, r3, srchActor__8daNpcT_cFPvPv@l /* 0x80147FD4@l */
/* 8014BE68  7F 64 DB 78 */	mr r4, r27
/* 8014BE6C  4B ED 54 CD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8014BE70  3B 80 00 00 */	li r28, 0
/* 8014BE74  3B E0 00 00 */	li r31, 0
/* 8014BE78  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 8014BE7C  3B C3 57 08 */	addi r30, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 8014BE80  48 00 00 34 */	b lbl_8014BEB4
lbl_8014BE84:
/* 8014BE84  7F 63 DB 78 */	mr r3, r27
/* 8014BE88  7C 9E F8 2E */	lwzx r4, r30, r31
/* 8014BE8C  4B EC E9 55 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8014BE90  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8014BE94  40 80 00 18 */	bge lbl_8014BEAC
/* 8014BE98  7F 63 DB 78 */	mr r3, r27
/* 8014BE9C  7C 9E F8 2E */	lwzx r4, r30, r31
/* 8014BEA0  4B EC E9 41 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8014BEA4  FF E0 08 90 */	fmr f31, f1
/* 8014BEA8  7F BE F8 2E */	lwzx r29, r30, r31
lbl_8014BEAC:
/* 8014BEAC  3B 9C 00 01 */	addi r28, r28, 1
/* 8014BEB0  3B FF 00 04 */	addi r31, r31, 4
lbl_8014BEB4:
/* 8014BEB4  80 0D 8A 5C */	lwz r0, mFindCount__8daNpcT_c(r13)
/* 8014BEB8  7C 1C 00 00 */	cmpw r28, r0
/* 8014BEBC  41 80 FF C8 */	blt lbl_8014BE84
/* 8014BEC0  7F A3 EB 78 */	mr r3, r29
/* 8014BEC4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8014BEC8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8014BECC  39 61 00 20 */	addi r11, r1, 0x20
/* 8014BED0  48 21 63 51 */	bl _restgpr_27
/* 8014BED4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014BED8  7C 08 03 A6 */	mtlr r0
/* 8014BEDC  38 21 00 30 */	addi r1, r1, 0x30
/* 8014BEE0  4E 80 00 20 */	blr 
