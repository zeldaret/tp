lbl_80B1F124:
/* 80B1F124  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B1F128  7C 08 02 A6 */	mflr r0
/* 80B1F12C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B1F130  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B1F134  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B1F138  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1F13C  4B 84 30 90 */	b _savegpr_25
/* 80B1F140  7C 79 1B 78 */	mr r25, r3
/* 80B1F144  7C 9A 23 78 */	mr r26, r4
/* 80B1F148  3B 80 00 00 */	li r28, 0
/* 80B1F14C  3C 60 80 B2 */	lis r3, lit_4593@ha
/* 80B1F150  C3 E3 4A C8 */	lfs f31, lit_4593@l(r3)
/* 80B1F154  38 00 00 00 */	li r0, 0
/* 80B1F158  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B1F15C  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 80B1F160  3C 60 80 B2 */	lis r3, srchToby__12daNpc_Toby_cFPvPv@ha
/* 80B1F164  38 63 F0 88 */	addi r3, r3, srchToby__12daNpc_Toby_cFPvPv@l
/* 80B1F168  7F 24 CB 78 */	mr r4, r25
/* 80B1F16C  4B 4F A6 8C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80B1F170  3B 60 00 00 */	li r27, 0
/* 80B1F174  3B E0 00 00 */	li r31, 0
/* 80B1F178  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80B1F17C  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l
/* 80B1F180  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80B1F184  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l
/* 80B1F188  48 00 00 48 */	b lbl_80B1F1D0
lbl_80B1F18C:
/* 80B1F18C  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80B1F190  48 00 00 71 */	bl getType__12daNpc_Toby_cFv
/* 80B1F194  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B1F198  7C 1A 00 00 */	cmpw r26, r0
/* 80B1F19C  40 82 00 2C */	bne lbl_80B1F1C8
/* 80B1F1A0  7F 23 CB 78 */	mr r3, r25
/* 80B1F1A4  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B1F1A8  4B 4F B6 38 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1F1AC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B1F1B0  40 80 00 18 */	bge lbl_80B1F1C8
/* 80B1F1B4  7F 23 CB 78 */	mr r3, r25
/* 80B1F1B8  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80B1F1BC  4B 4F B6 24 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1F1C0  FF E0 08 90 */	fmr f31, f1
/* 80B1F1C4  7F 9D F8 2E */	lwzx r28, r29, r31
lbl_80B1F1C8:
/* 80B1F1C8  3B 7B 00 01 */	addi r27, r27, 1
/* 80B1F1CC  3B FF 00 04 */	addi r31, r31, 4
lbl_80B1F1D0:
/* 80B1F1D0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80B1F1D4  7C 1B 00 00 */	cmpw r27, r0
/* 80B1F1D8  41 80 FF B4 */	blt lbl_80B1F18C
/* 80B1F1DC  7F 83 E3 78 */	mr r3, r28
/* 80B1F1E0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B1F1E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B1F1E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1F1EC  4B 84 30 2C */	b _restgpr_25
/* 80B1F1F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B1F1F4  7C 08 03 A6 */	mtlr r0
/* 80B1F1F8  38 21 00 40 */	addi r1, r1, 0x40
/* 80B1F1FC  4E 80 00 20 */	blr 
