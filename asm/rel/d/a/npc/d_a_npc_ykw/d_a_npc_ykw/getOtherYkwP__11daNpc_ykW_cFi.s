lbl_80B5FA74:
/* 80B5FA74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B5FA78  7C 08 02 A6 */	mflr r0
/* 80B5FA7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B5FA80  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B5FA84  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B5FA88  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5FA8C  4B 80 27 41 */	bl _savegpr_25
/* 80B5FA90  7C 79 1B 78 */	mr r25, r3
/* 80B5FA94  7C 9A 23 78 */	mr r26, r4
/* 80B5FA98  3B 80 00 00 */	li r28, 0
/* 80B5FA9C  3C 60 80 B6 */	lis r3, lit_4798@ha /* 0x80B67D30@ha */
/* 80B5FAA0  C3 E3 7D 30 */	lfs f31, lit_4798@l(r3)  /* 0x80B67D30@l */
/* 80B5FAA4  38 00 00 00 */	li r0, 0
/* 80B5FAA8  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B5FAAC  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80B5FAB0  3C 60 80 B6 */	lis r3, srchYkw__11daNpc_ykW_cFPvPv@ha /* 0x80B5F9D8@ha */
/* 80B5FAB4  38 63 F9 D8 */	addi r3, r3, srchYkw__11daNpc_ykW_cFPvPv@l /* 0x80B5F9D8@l */
/* 80B5FAB8  7F 24 CB 78 */	mr r4, r25
/* 80B5FABC  4B 4B 9D 3D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80B5FAC0  3B 60 00 00 */	li r27, 0
/* 80B5FAC4  3B E0 00 00 */	li r31, 0
/* 80B5FAC8  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B5FACC  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B5FAD0  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B5FAD4  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B5FAD8  48 00 00 48 */	b lbl_80B5FB20
lbl_80B5FADC:
/* 80B5FADC  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80B5FAE0  48 00 01 E9 */	bl getType__11daNpc_ykW_cFv
/* 80B5FAE4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B5FAE8  7C 1A 00 00 */	cmpw r26, r0
/* 80B5FAEC  40 82 00 2C */	bne lbl_80B5FB18
/* 80B5FAF0  7F 23 CB 78 */	mr r3, r25
/* 80B5FAF4  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B5FAF8  4B 4B AC E9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B5FAFC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B5FB00  40 80 00 18 */	bge lbl_80B5FB18
/* 80B5FB04  7F 23 CB 78 */	mr r3, r25
/* 80B5FB08  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B5FB0C  4B 4B AC D5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B5FB10  FF E0 08 90 */	fmr f31, f1
/* 80B5FB14  7F 9D F8 2E */	lwzx r28, r29, r31
lbl_80B5FB18:
/* 80B5FB18  3B 7B 00 01 */	addi r27, r27, 1
/* 80B5FB1C  3B FF 00 04 */	addi r31, r31, 4
lbl_80B5FB20:
/* 80B5FB20  80 1E 00 00 */	lwz r0, 0(r30)
/* 80B5FB24  7C 1B 00 00 */	cmpw r27, r0
/* 80B5FB28  41 80 FF B4 */	blt lbl_80B5FADC
/* 80B5FB2C  7F 83 E3 78 */	mr r3, r28
/* 80B5FB30  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B5FB34  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B5FB38  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5FB3C  4B 80 26 DD */	bl _restgpr_25
/* 80B5FB40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B5FB44  7C 08 03 A6 */	mtlr r0
/* 80B5FB48  38 21 00 40 */	addi r1, r1, 0x40
/* 80B5FB4C  4E 80 00 20 */	blr 
