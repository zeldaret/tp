lbl_80C8D040:
/* 80C8D040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8D044  7C 08 02 A6 */	mflr r0
/* 80C8D048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8D04C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8D050  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8D054  7C 7E 1B 78 */	mr r30, r3
/* 80C8D058  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C8D05C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C8D060  40 82 00 28 */	bne lbl_80C8D088
/* 80C8D064  28 1E 00 00 */	cmplwi r30, 0
/* 80C8D068  41 82 00 14 */	beq lbl_80C8D07C
/* 80C8D06C  4B 3E B5 B9 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C8D070  3C 60 80 C9 */	lis r3, __vt__16daLv9SwShutter_c@ha /* 0x80C8D8C4@ha */
/* 80C8D074  38 03 D8 C4 */	addi r0, r3, __vt__16daLv9SwShutter_c@l /* 0x80C8D8C4@l */
/* 80C8D078  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80C8D07C:
/* 80C8D07C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C8D080  60 00 00 08 */	ori r0, r0, 8
/* 80C8D084  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C8D088:
/* 80C8D088  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C8D08C  3C 80 80 C9 */	lis r4, d_a_obj_lv9SwShutter__stringBase0@ha /* 0x80C8D800@ha */
/* 80C8D090  38 84 D8 00 */	addi r4, r4, d_a_obj_lv9SwShutter__stringBase0@l /* 0x80C8D800@l */
/* 80C8D094  4B 39 FE 29 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C8D098  7C 7F 1B 78 */	mr r31, r3
/* 80C8D09C  2C 1F 00 04 */	cmpwi r31, 4
/* 80C8D0A0  40 82 00 AC */	bne lbl_80C8D14C
/* 80C8D0A4  7F C3 F3 78 */	mr r3, r30
/* 80C8D0A8  3C 80 80 C9 */	lis r4, d_a_obj_lv9SwShutter__stringBase0@ha /* 0x80C8D800@ha */
/* 80C8D0AC  38 84 D8 00 */	addi r4, r4, d_a_obj_lv9SwShutter__stringBase0@l /* 0x80C8D800@l */
/* 80C8D0B0  38 A0 00 07 */	li r5, 7
/* 80C8D0B4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C8D0B8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C8D0BC  38 E0 13 00 */	li r7, 0x1300
/* 80C8D0C0  39 00 00 00 */	li r8, 0
/* 80C8D0C4  4B 3E B6 F9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C8D0C8  2C 03 00 05 */	cmpwi r3, 5
/* 80C8D0CC  40 82 00 0C */	bne lbl_80C8D0D8
/* 80C8D0D0  38 60 00 05 */	li r3, 5
/* 80C8D0D4  48 00 00 7C */	b lbl_80C8D150
lbl_80C8D0D8:
/* 80C8D0D8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8D0DC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8D0E0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C8D0E4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8D0E8  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8D0EC  7F C3 F3 78 */	mr r3, r30
/* 80C8D0F0  4B 38 D4 89 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C8D0F4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8D0F8  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C8D0FC  3C 60 80 C9 */	lis r3, lit_3650@ha /* 0x80C8D7E8@ha */
/* 80C8D100  C0 03 D7 E8 */	lfs f0, lit_3650@l(r3)  /* 0x80C8D7E8@l */
/* 80C8D104  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80C8D108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8D10C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8D110  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C8D114  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C8D118  7C 05 07 74 */	extsb r5, r0
/* 80C8D11C  4B 3A 82 45 */	bl isSwitch__10dSv_info_cCFii
/* 80C8D120  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80C8D124  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C8D128  28 00 00 00 */	cmplwi r0, 0
/* 80C8D12C  41 82 00 10 */	beq lbl_80C8D13C
/* 80C8D130  3C 60 80 C9 */	lis r3, lit_3708@ha /* 0x80C8D7EC@ha */
/* 80C8D134  C0 03 D7 EC */	lfs f0, lit_3708@l(r3)  /* 0x80C8D7EC@l */
/* 80C8D138  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
lbl_80C8D13C:
/* 80C8D13C  7F C3 F3 78 */	mr r3, r30
/* 80C8D140  48 00 01 7D */	bl init_modeWait__16daLv9SwShutter_cFv
/* 80C8D144  7F C3 F3 78 */	mr r3, r30
/* 80C8D148  4B FF FD F1 */	bl setBaseMtx__16daLv9SwShutter_cFv
lbl_80C8D14C:
/* 80C8D14C  7F E3 FB 78 */	mr r3, r31
lbl_80C8D150:
/* 80C8D150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8D154  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8D158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8D15C  7C 08 03 A6 */	mtlr r0
/* 80C8D160  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8D164  4E 80 00 20 */	blr 
