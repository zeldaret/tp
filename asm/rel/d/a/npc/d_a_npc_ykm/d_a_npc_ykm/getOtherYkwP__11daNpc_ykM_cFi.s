lbl_80B546C4:
/* 80B546C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B546C8  7C 08 02 A6 */	mflr r0
/* 80B546CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B546D0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B546D4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B546D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B546DC  4B 80 DA F0 */	b _savegpr_25
/* 80B546E0  7C 79 1B 78 */	mr r25, r3
/* 80B546E4  7C 9A 23 78 */	mr r26, r4
/* 80B546E8  3B 80 00 00 */	li r28, 0
/* 80B546EC  3C 60 80 B6 */	lis r3, lit_4737@ha
/* 80B546F0  C3 E3 D8 B4 */	lfs f31, lit_4737@l(r3)
/* 80B546F4  38 00 00 00 */	li r0, 0
/* 80B546F8  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B546FC  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 80B54700  3C 60 80 B5 */	lis r3, srchYkw__11daNpc_ykM_cFPvPv@ha
/* 80B54704  38 63 46 28 */	addi r3, r3, srchYkw__11daNpc_ykM_cFPvPv@l
/* 80B54708  7F 24 CB 78 */	mr r4, r25
/* 80B5470C  4B 4C 50 EC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80B54710  3B 60 00 00 */	li r27, 0
/* 80B54714  3B E0 00 00 */	li r31, 0
/* 80B54718  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80B5471C  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l
/* 80B54720  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B54724  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l
/* 80B54728  48 00 00 48 */	b lbl_80B54770
lbl_80B5472C:
/* 80B5472C  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80B54730  48 00 B5 98 */	b getType__11daNpc_ykW_cFv
/* 80B54734  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B54738  7C 1A 00 00 */	cmpw r26, r0
/* 80B5473C  40 82 00 2C */	bne lbl_80B54768
/* 80B54740  7F 23 CB 78 */	mr r3, r25
/* 80B54744  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B54748  4B 4C 60 98 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B5474C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B54750  40 80 00 18 */	bge lbl_80B54768
/* 80B54754  7F 23 CB 78 */	mr r3, r25
/* 80B54758  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B5475C  4B 4C 60 84 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B54760  FF E0 08 90 */	fmr f31, f1
/* 80B54764  7F 9D F8 2E */	lwzx r28, r29, r31
lbl_80B54768:
/* 80B54768  3B 7B 00 01 */	addi r27, r27, 1
/* 80B5476C  3B FF 00 04 */	addi r31, r31, 4
lbl_80B54770:
/* 80B54770  80 1E 00 00 */	lwz r0, 0(r30)
/* 80B54774  7C 1B 00 00 */	cmpw r27, r0
/* 80B54778  41 80 FF B4 */	blt lbl_80B5472C
/* 80B5477C  7F 83 E3 78 */	mr r3, r28
/* 80B54780  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B54784  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B54788  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5478C  4B 80 DA 8C */	b _restgpr_25
/* 80B54790  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B54794  7C 08 03 A6 */	mtlr r0
/* 80B54798  38 21 00 40 */	addi r1, r1, 0x40
/* 80B5479C  4E 80 00 20 */	blr 
