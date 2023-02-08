lbl_80B543DC:
/* 80B543DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B543E0  7C 08 02 A6 */	mflr r0
/* 80B543E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B543E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B543EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B543F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B543F4  4B 80 DD DD */	bl _savegpr_26
/* 80B543F8  7C 7F 1B 78 */	mr r31, r3
/* 80B543FC  3B 60 00 00 */	li r27, 0
/* 80B54400  3C 60 80 B6 */	lis r3, lit_4737@ha /* 0x80B5D8B4@ha */
/* 80B54404  C3 E3 D8 B4 */	lfs f31, lit_4737@l(r3)  /* 0x80B5D8B4@l */
/* 80B54408  38 00 00 00 */	li r0, 0
/* 80B5440C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B54410  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80B54414  3C 60 80 B5 */	lis r3, srchGadget__11daNpc_ykM_cFPvPv@ha /* 0x80B54270@ha */
/* 80B54418  38 63 42 70 */	addi r3, r3, srchGadget__11daNpc_ykM_cFPvPv@l /* 0x80B54270@l */
/* 80B5441C  7F E4 FB 78 */	mr r4, r31
/* 80B54420  4B 4C 53 D9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80B54424  3B 40 00 00 */	li r26, 0
/* 80B54428  3B C0 00 00 */	li r30, 0
/* 80B5442C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B54430  3B 83 57 08 */	addi r28, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B54434  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B54438  3B A3 0F DC */	addi r29, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B5443C  48 00 00 44 */	b lbl_80B54480
lbl_80B54440:
/* 80B54440  7C 9C F0 2E */	lwzx r4, r28, r30
/* 80B54444  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 80B54448  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B5444C  28 00 00 01 */	cmplwi r0, 1
/* 80B54450  40 82 00 28 */	bne lbl_80B54478
/* 80B54454  7F E3 FB 78 */	mr r3, r31
/* 80B54458  4B 4C 63 89 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B5445C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B54460  40 80 00 18 */	bge lbl_80B54478
/* 80B54464  7F E3 FB 78 */	mr r3, r31
/* 80B54468  7C 9C F0 2E */	lwzx r4, r28, r30
/* 80B5446C  4B 4C 63 75 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B54470  FF E0 08 90 */	fmr f31, f1
/* 80B54474  7F 7C F0 2E */	lwzx r27, r28, r30
lbl_80B54478:
/* 80B54478  3B 5A 00 01 */	addi r26, r26, 1
/* 80B5447C  3B DE 00 04 */	addi r30, r30, 4
lbl_80B54480:
/* 80B54480  80 1D 00 00 */	lwz r0, 0(r29)
/* 80B54484  7C 1A 00 00 */	cmpw r26, r0
/* 80B54488  41 80 FF B8 */	blt lbl_80B54440
/* 80B5448C  7F 63 DB 78 */	mr r3, r27
/* 80B54490  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B54494  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B54498  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5449C  4B 80 DD 81 */	bl _restgpr_26
/* 80B544A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B544A4  7C 08 03 A6 */	mtlr r0
/* 80B544A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B544AC  4E 80 00 20 */	blr 
