lbl_80C5DF34:
/* 80C5DF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5DF38  7C 08 02 A6 */	mflr r0
/* 80C5DF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5DF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5DF44  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5DF48  7C 7E 1B 78 */	mr r30, r3
/* 80C5DF4C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5DF50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5DF54  40 82 00 48 */	bne lbl_80C5DF9C
/* 80C5DF58  28 1E 00 00 */	cmplwi r30, 0
/* 80C5DF5C  41 82 00 34 */	beq lbl_80C5DF90
/* 80C5DF60  4B 41 A6 C5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C5DF64  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C5E9D4@ha */
/* 80C5DF68  38 03 E9 D4 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C5E9D4@l */
/* 80C5DF6C  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C5DF70  93 DE 05 AC */	stw r30, 0x5ac(r30)
/* 80C5DF74  38 00 00 00 */	li r0, 0
/* 80C5DF78  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80C5DF7C  3C 60 80 C6 */	lis r3, __vt__16daLv4EdShutter_c@ha /* 0x80C5E9EC@ha */
/* 80C5DF80  38 63 E9 EC */	addi r3, r3, __vt__16daLv4EdShutter_c@l /* 0x80C5E9EC@l */
/* 80C5DF84  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C5DF88  38 03 00 28 */	addi r0, r3, 0x28
/* 80C5DF8C  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C5DF90:
/* 80C5DF90  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C5DF94  60 00 00 08 */	ori r0, r0, 8
/* 80C5DF98  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C5DF9C:
/* 80C5DF9C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80C5DFA0  3C 80 80 C6 */	lis r4, d_a_obj_lv4EdShutter__stringBase0@ha /* 0x80C5E8FC@ha */
/* 80C5DFA4  38 84 E8 FC */	addi r4, r4, d_a_obj_lv4EdShutter__stringBase0@l /* 0x80C5E8FC@l */
/* 80C5DFA8  4B 3C EF 15 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C5DFAC  7C 7F 1B 78 */	mr r31, r3
/* 80C5DFB0  2C 1F 00 04 */	cmpwi r31, 4
/* 80C5DFB4  40 82 00 D4 */	bne lbl_80C5E088
/* 80C5DFB8  7F C3 F3 78 */	mr r3, r30
/* 80C5DFBC  3C 80 80 C6 */	lis r4, d_a_obj_lv4EdShutter__stringBase0@ha /* 0x80C5E8FC@ha */
/* 80C5DFC0  38 84 E8 FC */	addi r4, r4, d_a_obj_lv4EdShutter__stringBase0@l /* 0x80C5E8FC@l */
/* 80C5DFC4  38 A0 00 07 */	li r5, 7
/* 80C5DFC8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C5DFCC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C5DFD0  38 E0 19 00 */	li r7, 0x1900
/* 80C5DFD4  39 00 00 00 */	li r8, 0
/* 80C5DFD8  4B 41 A7 E5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C5DFDC  2C 03 00 05 */	cmpwi r3, 5
/* 80C5DFE0  40 82 00 0C */	bne lbl_80C5DFEC
/* 80C5DFE4  38 60 00 05 */	li r3, 5
/* 80C5DFE8  48 00 00 A4 */	b lbl_80C5E08C
lbl_80C5DFEC:
/* 80C5DFEC  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C5DFF0  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5DFF4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C5DFF8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C5DFFC  80 83 00 04 */	lwz r4, 4(r3)
/* 80C5E000  7F C3 F3 78 */	mr r3, r30
/* 80C5E004  4B 3B C5 75 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C5E008  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5E00C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C5E010  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 80C5E014  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5E018  98 1E 05 C9 */	stb r0, 0x5c9(r30)
/* 80C5E01C  3C 60 80 C6 */	lis r3, lit_3704@ha /* 0x80C5E8E4@ha */
/* 80C5E020  C0 03 E8 E4 */	lfs f0, lit_3704@l(r3)  /* 0x80C5E8E4@l */
/* 80C5E024  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80C5E028  38 00 00 00 */	li r0, 0
/* 80C5E02C  98 1E 05 CA */	stb r0, 0x5ca(r30)
/* 80C5E030  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80C5E034  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C5E038  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C5E03C  7F C3 F3 78 */	mr r3, r30
/* 80C5E040  4B FF FD F9 */	bl setBaseMtx__16daLv4EdShutter_cFv
/* 80C5E044  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 80C5E048  98 1E 05 CC */	stb r0, 0x5cc(r30)
/* 80C5E04C  88 9E 05 CC */	lbz r4, 0x5cc(r30)
/* 80C5E050  28 04 00 FF */	cmplwi r4, 0xff
/* 80C5E054  41 82 00 2C */	beq lbl_80C5E080
/* 80C5E058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5E05C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5E060  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5E064  7C 05 07 74 */	extsb r5, r0
/* 80C5E068  4B 3D 72 F9 */	bl isSwitch__10dSv_info_cCFii
/* 80C5E06C  2C 03 00 00 */	cmpwi r3, 0
/* 80C5E070  41 82 00 10 */	beq lbl_80C5E080
/* 80C5E074  7F C3 F3 78 */	mr r3, r30
/* 80C5E078  48 00 05 0D */	bl init_modeEnd__16daLv4EdShutter_cFv
/* 80C5E07C  48 00 00 0C */	b lbl_80C5E088
lbl_80C5E080:
/* 80C5E080  7F C3 F3 78 */	mr r3, r30
/* 80C5E084  48 00 01 2D */	bl init_modeWait__16daLv4EdShutter_cFv
lbl_80C5E088:
/* 80C5E088  7F E3 FB 78 */	mr r3, r31
lbl_80C5E08C:
/* 80C5E08C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E090  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5E094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E098  7C 08 03 A6 */	mtlr r0
/* 80C5E09C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E0A0  4E 80 00 20 */	blr 
