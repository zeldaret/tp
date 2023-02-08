lbl_8095253C:
/* 8095253C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80952540  7C 08 02 A6 */	mflr r0
/* 80952544  90 01 00 34 */	stw r0, 0x34(r1)
/* 80952548  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8095254C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80952550  39 61 00 20 */	addi r11, r1, 0x20
/* 80952554  4B A0 FC 7D */	bl _savegpr_26
/* 80952558  7C 7A 1B 78 */	mr r26, r3
/* 8095255C  3B 80 00 00 */	li r28, 0
/* 80952560  3C 60 80 95 */	lis r3, lit_4591@ha /* 0x809577B0@ha */
/* 80952564  C3 E3 77 B0 */	lfs f31, lit_4591@l(r3)  /* 0x809577B0@l */
/* 80952568  38 00 00 00 */	li r0, 0
/* 8095256C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80952570  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80952574  3C 60 80 95 */	lis r3, srchUDoor__11daNpc_Aru_cFPvPv@ha /* 0x809521E4@ha */
/* 80952578  38 63 21 E4 */	addi r3, r3, srchUDoor__11daNpc_Aru_cFPvPv@l /* 0x809521E4@l */
/* 8095257C  7F 44 D3 78 */	mr r4, r26
/* 80952580  4B 6C 72 79 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80952584  3B 60 00 00 */	li r27, 0
/* 80952588  3B E0 00 00 */	li r31, 0
/* 8095258C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80952590  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80952594  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80952598  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 8095259C  48 00 00 40 */	b lbl_809525DC
lbl_809525A0:
/* 809525A0  7C 9D F8 2E */	lwzx r4, r29, r31
/* 809525A4  88 04 05 70 */	lbz r0, 0x570(r4)
/* 809525A8  28 00 00 01 */	cmplwi r0, 1
/* 809525AC  40 82 00 28 */	bne lbl_809525D4
/* 809525B0  7F 43 D3 78 */	mr r3, r26
/* 809525B4  4B 6C 82 2D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809525B8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809525BC  40 80 00 18 */	bge lbl_809525D4
/* 809525C0  7F 43 D3 78 */	mr r3, r26
/* 809525C4  7C 9D F8 2E */	lwzx r4, r29, r31
/* 809525C8  4B 6C 82 19 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809525CC  FF E0 08 90 */	fmr f31, f1
/* 809525D0  7F 9D F8 2E */	lwzx r28, r29, r31
lbl_809525D4:
/* 809525D4  3B 7B 00 01 */	addi r27, r27, 1
/* 809525D8  3B FF 00 04 */	addi r31, r31, 4
lbl_809525DC:
/* 809525DC  80 1E 00 00 */	lwz r0, 0(r30)
/* 809525E0  7C 1B 00 00 */	cmpw r27, r0
/* 809525E4  41 80 FF BC */	blt lbl_809525A0
/* 809525E8  7F 83 E3 78 */	mr r3, r28
/* 809525EC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809525F0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809525F4  39 61 00 20 */	addi r11, r1, 0x20
/* 809525F8  4B A0 FC 25 */	bl _restgpr_26
/* 809525FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80952600  7C 08 03 A6 */	mtlr r0
/* 80952604  38 21 00 30 */	addi r1, r1, 0x30
/* 80952608  4E 80 00 20 */	blr 
