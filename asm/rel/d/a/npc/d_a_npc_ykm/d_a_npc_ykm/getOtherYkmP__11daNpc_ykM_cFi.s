lbl_80B5454C:
/* 80B5454C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B54550  7C 08 02 A6 */	mflr r0
/* 80B54554  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B54558  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B5455C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B54560  39 61 00 30 */	addi r11, r1, 0x30
/* 80B54564  4B 80 DC 69 */	bl _savegpr_25
/* 80B54568  7C 79 1B 78 */	mr r25, r3
/* 80B5456C  7C 9A 23 78 */	mr r26, r4
/* 80B54570  3B 80 00 00 */	li r28, 0
/* 80B54574  3C 60 80 B6 */	lis r3, lit_4737@ha /* 0x80B5D8B4@ha */
/* 80B54578  C3 E3 D8 B4 */	lfs f31, lit_4737@l(r3)  /* 0x80B5D8B4@l */
/* 80B5457C  38 00 00 00 */	li r0, 0
/* 80B54580  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B54584  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80B54588  3C 60 80 B5 */	lis r3, srchYkm__11daNpc_ykM_cFPvPv@ha /* 0x80B544B0@ha */
/* 80B5458C  38 63 44 B0 */	addi r3, r3, srchYkm__11daNpc_ykM_cFPvPv@l /* 0x80B544B0@l */
/* 80B54590  7F 24 CB 78 */	mr r4, r25
/* 80B54594  4B 4C 52 65 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80B54598  3B 60 00 00 */	li r27, 0
/* 80B5459C  3B E0 00 00 */	li r31, 0
/* 80B545A0  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B545A4  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B545A8  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B545AC  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B545B0  48 00 00 48 */	b lbl_80B545F8
lbl_80B545B4:
/* 80B545B4  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80B545B8  48 00 01 E9 */	bl getType__11daNpc_ykM_cFv
/* 80B545BC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B545C0  7C 1A 00 00 */	cmpw r26, r0
/* 80B545C4  40 82 00 2C */	bne lbl_80B545F0
/* 80B545C8  7F 23 CB 78 */	mr r3, r25
/* 80B545CC  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B545D0  4B 4C 62 11 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B545D4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B545D8  40 80 00 18 */	bge lbl_80B545F0
/* 80B545DC  7F 23 CB 78 */	mr r3, r25
/* 80B545E0  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B545E4  4B 4C 61 FD */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B545E8  FF E0 08 90 */	fmr f31, f1
/* 80B545EC  7F 9D F8 2E */	lwzx r28, r29, r31
lbl_80B545F0:
/* 80B545F0  3B 7B 00 01 */	addi r27, r27, 1
/* 80B545F4  3B FF 00 04 */	addi r31, r31, 4
lbl_80B545F8:
/* 80B545F8  80 1E 00 00 */	lwz r0, 0(r30)
/* 80B545FC  7C 1B 00 00 */	cmpw r27, r0
/* 80B54600  41 80 FF B4 */	blt lbl_80B545B4
/* 80B54604  7F 83 E3 78 */	mr r3, r28
/* 80B54608  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B5460C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B54610  39 61 00 30 */	addi r11, r1, 0x30
/* 80B54614  4B 80 DC 05 */	bl _restgpr_25
/* 80B54618  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B5461C  7C 08 03 A6 */	mtlr r0
/* 80B54620  38 21 00 40 */	addi r1, r1, 0x40
/* 80B54624  4E 80 00 20 */	blr 
