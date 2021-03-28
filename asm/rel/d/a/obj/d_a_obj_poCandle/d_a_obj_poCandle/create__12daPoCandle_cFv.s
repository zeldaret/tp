lbl_80CB1BD8:
/* 80CB1BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1BDC  7C 08 02 A6 */	mflr r0
/* 80CB1BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1BE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB1BEC  7C 7E 1B 78 */	mr r30, r3
/* 80CB1BF0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB1BF4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB1BF8  40 82 00 48 */	bne lbl_80CB1C40
/* 80CB1BFC  28 1E 00 00 */	cmplwi r30, 0
/* 80CB1C00  41 82 00 34 */	beq lbl_80CB1C34
/* 80CB1C04  4B 3C 6A 20 */	b __ct__16dBgS_MoveBgActorFv
/* 80CB1C08  3C 60 80 CB */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80CB1C0C  38 03 27 C0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80CB1C10  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80CB1C14  93 DE 05 AC */	stw r30, 0x5ac(r30)
/* 80CB1C18  38 00 00 00 */	li r0, 0
/* 80CB1C1C  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80CB1C20  3C 60 80 CB */	lis r3, __vt__12daPoCandle_c@ha
/* 80CB1C24  38 63 27 D8 */	addi r3, r3, __vt__12daPoCandle_c@l
/* 80CB1C28  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80CB1C2C  38 03 00 28 */	addi r0, r3, 0x28
/* 80CB1C30  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80CB1C34:
/* 80CB1C34  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CB1C38  60 00 00 08 */	ori r0, r0, 8
/* 80CB1C3C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CB1C40:
/* 80CB1C40  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80CB1C44  3C 80 80 CB */	lis r4, stringBase0@ha
/* 80CB1C48  38 84 26 E8 */	addi r4, r4, stringBase0@l
/* 80CB1C4C  4B 37 B2 70 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CB1C50  7C 7F 1B 78 */	mr r31, r3
/* 80CB1C54  2C 1F 00 04 */	cmpwi r31, 4
/* 80CB1C58  40 82 01 00 */	bne lbl_80CB1D58
/* 80CB1C5C  7F C3 F3 78 */	mr r3, r30
/* 80CB1C60  3C 80 80 CB */	lis r4, stringBase0@ha
/* 80CB1C64  38 84 26 E8 */	addi r4, r4, stringBase0@l
/* 80CB1C68  38 A0 00 07 */	li r5, 7
/* 80CB1C6C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CB1C70  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CB1C74  38 E0 16 00 */	li r7, 0x1600
/* 80CB1C78  39 00 00 00 */	li r8, 0
/* 80CB1C7C  4B 3C 6B 40 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CB1C80  2C 03 00 05 */	cmpwi r3, 5
/* 80CB1C84  40 82 00 0C */	bne lbl_80CB1C90
/* 80CB1C88  38 60 00 05 */	li r3, 5
/* 80CB1C8C  48 00 00 D0 */	b lbl_80CB1D5C
lbl_80CB1C90:
/* 80CB1C90  7F C3 F3 78 */	mr r3, r30
/* 80CB1C94  4B FF FE 51 */	bl setBaseMtx__12daPoCandle_cFv
/* 80CB1C98  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80CB1C9C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB1CA0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CB1CA4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80CB1CA8  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB1CAC  7F C3 F3 78 */	mr r3, r30
/* 80CB1CB0  4B 36 88 C8 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CB1CB4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CB1CB8  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80CB1CBC  3C 60 80 CB */	lis r3, lit_3714@ha
/* 80CB1CC0  C0 23 26 BC */	lfs f1, lit_3714@l(r3)
/* 80CB1CC4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CB1CC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB1CCC  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80CB1CD0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CB1CD4  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80CB1CD8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CB1CDC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CB1CE0  98 1E 05 EC */	stb r0, 0x5ec(r30)
/* 80CB1CE4  88 1E 05 EC */	lbz r0, 0x5ec(r30)
/* 80CB1CE8  28 00 00 FF */	cmplwi r0, 0xff
/* 80CB1CEC  40 82 00 0C */	bne lbl_80CB1CF8
/* 80CB1CF0  38 00 00 01 */	li r0, 1
/* 80CB1CF4  98 1E 05 EC */	stb r0, 0x5ec(r30)
lbl_80CB1CF8:
/* 80CB1CF8  7F C3 F3 78 */	mr r3, r30
/* 80CB1CFC  48 00 00 79 */	bl lightInit__12daPoCandle_cFv
/* 80CB1D00  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CB1D04  98 1E 05 D4 */	stb r0, 0x5d4(r30)
/* 80CB1D08  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CB1D0C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CB1D10  98 1E 05 D5 */	stb r0, 0x5d5(r30)
/* 80CB1D14  38 00 00 00 */	li r0, 0
/* 80CB1D18  98 1E 05 D2 */	stb r0, 0x5d2(r30)
/* 80CB1D1C  98 1E 05 D1 */	stb r0, 0x5d1(r30)
/* 80CB1D20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB1D24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB1D28  88 9E 05 D4 */	lbz r4, 0x5d4(r30)
/* 80CB1D2C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CB1D30  7C 05 07 74 */	extsb r5, r0
/* 80CB1D34  4B 38 36 2C */	b isSwitch__10dSv_info_cCFii
/* 80CB1D38  98 7E 05 D7 */	stb r3, 0x5d7(r30)
/* 80CB1D3C  88 1E 05 D7 */	lbz r0, 0x5d7(r30)
/* 80CB1D40  28 00 00 00 */	cmplwi r0, 0
/* 80CB1D44  41 82 00 0C */	beq lbl_80CB1D50
/* 80CB1D48  38 00 00 01 */	li r0, 1
/* 80CB1D4C  98 1E 05 D1 */	stb r0, 0x5d1(r30)
lbl_80CB1D50:
/* 80CB1D50  7F C3 F3 78 */	mr r3, r30
/* 80CB1D54  48 00 03 ED */	bl init_modeWait__12daPoCandle_cFv
lbl_80CB1D58:
/* 80CB1D58  7F E3 FB 78 */	mr r3, r31
lbl_80CB1D5C:
/* 80CB1D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1D60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB1D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1D68  7C 08 03 A6 */	mtlr r0
/* 80CB1D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1D70  4E 80 00 20 */	blr 
