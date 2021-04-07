lbl_80B5FBEC:
/* 80B5FBEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B5FBF0  7C 08 02 A6 */	mflr r0
/* 80B5FBF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B5FBF8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B5FBFC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B5FC00  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5FC04  4B 80 25 C9 */	bl _savegpr_25
/* 80B5FC08  7C 79 1B 78 */	mr r25, r3
/* 80B5FC0C  7C 9A 23 78 */	mr r26, r4
/* 80B5FC10  3B 80 00 00 */	li r28, 0
/* 80B5FC14  3C 60 80 B6 */	lis r3, lit_4798@ha /* 0x80B67D30@ha */
/* 80B5FC18  C3 E3 7D 30 */	lfs f31, lit_4798@l(r3)  /* 0x80B67D30@l */
/* 80B5FC1C  38 00 00 00 */	li r0, 0
/* 80B5FC20  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B5FC24  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80B5FC28  3C 60 80 B6 */	lis r3, srchYkm__11daNpc_ykW_cFPvPv@ha /* 0x80B5FB50@ha */
/* 80B5FC2C  38 63 FB 50 */	addi r3, r3, srchYkm__11daNpc_ykW_cFPvPv@l /* 0x80B5FB50@l */
/* 80B5FC30  7F 24 CB 78 */	mr r4, r25
/* 80B5FC34  4B 4B 9B C5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80B5FC38  3B 60 00 00 */	li r27, 0
/* 80B5FC3C  3B E0 00 00 */	li r31, 0
/* 80B5FC40  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B5FC44  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B5FC48  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B5FC4C  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B5FC50  48 00 00 48 */	b lbl_80B5FC98
lbl_80B5FC54:
/* 80B5FC54  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80B5FC58  4B FF 4B 49 */	bl getType__11daNpc_ykM_cFv
/* 80B5FC5C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B5FC60  7C 1A 00 00 */	cmpw r26, r0
/* 80B5FC64  40 82 00 2C */	bne lbl_80B5FC90
/* 80B5FC68  7F 23 CB 78 */	mr r3, r25
/* 80B5FC6C  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B5FC70  4B 4B AB 71 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B5FC74  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B5FC78  40 80 00 18 */	bge lbl_80B5FC90
/* 80B5FC7C  7F 23 CB 78 */	mr r3, r25
/* 80B5FC80  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B5FC84  4B 4B AB 5D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B5FC88  FF E0 08 90 */	fmr f31, f1
/* 80B5FC8C  7F 9D F8 2E */	lwzx r28, r29, r31
lbl_80B5FC90:
/* 80B5FC90  3B 7B 00 01 */	addi r27, r27, 1
/* 80B5FC94  3B FF 00 04 */	addi r31, r31, 4
lbl_80B5FC98:
/* 80B5FC98  80 1E 00 00 */	lwz r0, 0(r30)
/* 80B5FC9C  7C 1B 00 00 */	cmpw r27, r0
/* 80B5FCA0  41 80 FF B4 */	blt lbl_80B5FC54
/* 80B5FCA4  7F 83 E3 78 */	mr r3, r28
/* 80B5FCA8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B5FCAC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B5FCB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5FCB4  4B 80 25 65 */	bl _restgpr_25
/* 80B5FCB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B5FCBC  7C 08 03 A6 */	mtlr r0
/* 80B5FCC0  38 21 00 40 */	addi r1, r1, 0x40
/* 80B5FCC4  4E 80 00 20 */	blr 
