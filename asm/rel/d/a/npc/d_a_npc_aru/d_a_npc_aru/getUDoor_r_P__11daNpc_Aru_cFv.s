lbl_8095260C:
/* 8095260C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80952610  7C 08 02 A6 */	mflr r0
/* 80952614  90 01 00 34 */	stw r0, 0x34(r1)
/* 80952618  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8095261C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80952620  39 61 00 20 */	addi r11, r1, 0x20
/* 80952624  4B A0 FB AC */	b _savegpr_26
/* 80952628  7C 7A 1B 78 */	mr r26, r3
/* 8095262C  3B 80 00 00 */	li r28, 0
/* 80952630  3C 60 80 95 */	lis r3, lit_4591@ha
/* 80952634  C3 E3 77 B0 */	lfs f31, lit_4591@l(r3)
/* 80952638  38 00 00 00 */	li r0, 0
/* 8095263C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80952640  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 80952644  3C 60 80 95 */	lis r3, srchUDoor__11daNpc_Aru_cFPvPv@ha
/* 80952648  38 63 21 E4 */	addi r3, r3, srchUDoor__11daNpc_Aru_cFPvPv@l
/* 8095264C  7F 44 D3 78 */	mr r4, r26
/* 80952650  4B 6C 71 A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80952654  3B 60 00 00 */	li r27, 0
/* 80952658  3B E0 00 00 */	li r31, 0
/* 8095265C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80952660  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l
/* 80952664  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80952668  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l
/* 8095266C  48 00 00 40 */	b lbl_809526AC
lbl_80952670:
/* 80952670  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80952674  88 04 05 70 */	lbz r0, 0x570(r4)
/* 80952678  28 00 00 00 */	cmplwi r0, 0
/* 8095267C  40 82 00 28 */	bne lbl_809526A4
/* 80952680  7F 43 D3 78 */	mr r3, r26
/* 80952684  4B 6C 81 5C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80952688  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8095268C  40 80 00 18 */	bge lbl_809526A4
/* 80952690  7F 43 D3 78 */	mr r3, r26
/* 80952694  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80952698  4B 6C 81 48 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8095269C  FF E0 08 90 */	fmr f31, f1
/* 809526A0  7F 9D F8 2E */	lwzx r28, r29, r31
lbl_809526A4:
/* 809526A4  3B 7B 00 01 */	addi r27, r27, 1
/* 809526A8  3B FF 00 04 */	addi r31, r31, 4
lbl_809526AC:
/* 809526AC  80 1E 00 00 */	lwz r0, 0(r30)
/* 809526B0  7C 1B 00 00 */	cmpw r27, r0
/* 809526B4  41 80 FF BC */	blt lbl_80952670
/* 809526B8  7F 83 E3 78 */	mr r3, r28
/* 809526BC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809526C0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809526C4  39 61 00 20 */	addi r11, r1, 0x20
/* 809526C8  4B A0 FB 54 */	b _restgpr_26
/* 809526CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809526D0  7C 08 03 A6 */	mtlr r0
/* 809526D4  38 21 00 30 */	addi r1, r1, 0x30
/* 809526D8  4E 80 00 20 */	blr 
