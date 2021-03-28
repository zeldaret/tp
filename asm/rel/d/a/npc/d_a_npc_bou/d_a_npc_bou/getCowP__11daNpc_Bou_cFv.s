lbl_8096D9B4:
/* 8096D9B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096D9B8  7C 08 02 A6 */	mflr r0
/* 8096D9BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096D9C0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8096D9C4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8096D9C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8096D9CC  4B 9F 48 04 */	b _savegpr_26
/* 8096D9D0  7C 7A 1B 78 */	mr r26, r3
/* 8096D9D4  3B 80 00 00 */	li r28, 0
/* 8096D9D8  3C 60 80 97 */	lis r3, lit_4568@ha
/* 8096D9DC  C3 E3 29 3C */	lfs f31, lit_4568@l(r3)
/* 8096D9E0  38 00 00 00 */	li r0, 0
/* 8096D9E4  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 8096D9E8  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 8096D9EC  3C 60 80 97 */	lis r3, srchCow__11daNpc_Bou_cFPvPv@ha
/* 8096D9F0  38 63 D9 18 */	addi r3, r3, srchCow__11daNpc_Bou_cFPvPv@l
/* 8096D9F4  7F 44 D3 78 */	mr r4, r26
/* 8096D9F8  4B 6A BE 00 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8096D9FC  3B 60 00 00 */	li r27, 0
/* 8096DA00  3B E0 00 00 */	li r31, 0
/* 8096DA04  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 8096DA08  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l
/* 8096DA0C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 8096DA10  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l
/* 8096DA14  48 00 00 34 */	b lbl_8096DA48
lbl_8096DA18:
/* 8096DA18  7F 43 D3 78 */	mr r3, r26
/* 8096DA1C  7C 9D F8 2E */	lwzx r4, r29, r31
/* 8096DA20  4B 6A CD C0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8096DA24  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8096DA28  40 80 00 18 */	bge lbl_8096DA40
/* 8096DA2C  7F 43 D3 78 */	mr r3, r26
/* 8096DA30  7C 9D F8 2E */	lwzx r4, r29, r31
/* 8096DA34  4B 6A CD AC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8096DA38  FF E0 08 90 */	fmr f31, f1
/* 8096DA3C  7F 9D F8 2E */	lwzx r28, r29, r31
lbl_8096DA40:
/* 8096DA40  3B 7B 00 01 */	addi r27, r27, 1
/* 8096DA44  3B FF 00 04 */	addi r31, r31, 4
lbl_8096DA48:
/* 8096DA48  80 1E 00 00 */	lwz r0, 0(r30)
/* 8096DA4C  7C 1B 00 00 */	cmpw r27, r0
/* 8096DA50  41 80 FF C8 */	blt lbl_8096DA18
/* 8096DA54  7F 83 E3 78 */	mr r3, r28
/* 8096DA58  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8096DA5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8096DA60  39 61 00 20 */	addi r11, r1, 0x20
/* 8096DA64  4B 9F 47 B8 */	b _restgpr_26
/* 8096DA68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096DA6C  7C 08 03 A6 */	mtlr r0
/* 8096DA70  38 21 00 30 */	addi r1, r1, 0x30
/* 8096DA74  4E 80 00 20 */	blr 
