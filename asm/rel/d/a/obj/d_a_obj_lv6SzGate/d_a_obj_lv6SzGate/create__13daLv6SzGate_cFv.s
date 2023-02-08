lbl_80C75C0C:
/* 80C75C0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C75C10  7C 08 02 A6 */	mflr r0
/* 80C75C14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C75C18  39 61 00 20 */	addi r11, r1, 0x20
/* 80C75C1C  4B 6E C5 C1 */	bl _savegpr_29
/* 80C75C20  7C 7E 1B 78 */	mr r30, r3
/* 80C75C24  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C75C28  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C75C2C  40 82 00 74 */	bne lbl_80C75CA0
/* 80C75C30  7F C0 F3 79 */	or. r0, r30, r30
/* 80C75C34  41 82 00 60 */	beq lbl_80C75C94
/* 80C75C38  7C 1F 03 78 */	mr r31, r0
/* 80C75C3C  4B 40 29 E9 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C75C40  3C 60 80 C7 */	lis r3, __vt__13daLv6SzGate_c@ha /* 0x80C7678C@ha */
/* 80C75C44  38 03 67 8C */	addi r0, r3, __vt__13daLv6SzGate_c@l /* 0x80C7678C@l */
/* 80C75C48  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80C75C4C  3B BF 05 B0 */	addi r29, r31, 0x5b0
/* 80C75C50  3C 60 80 C7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C76780@ha */
/* 80C75C54  38 03 67 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C76780@l */
/* 80C75C58  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80C75C5C  7F A3 EB 78 */	mr r3, r29
/* 80C75C60  38 80 00 00 */	li r4, 0
/* 80C75C64  4B 6B 27 99 */	bl init__12J3DFrameCtrlFs
/* 80C75C68  38 00 00 00 */	li r0, 0
/* 80C75C6C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C75C70  3B BF 05 C8 */	addi r29, r31, 0x5c8
/* 80C75C74  3C 60 80 C7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C76780@ha */
/* 80C75C78  38 03 67 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C76780@l */
/* 80C75C7C  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80C75C80  7F A3 EB 78 */	mr r3, r29
/* 80C75C84  38 80 00 00 */	li r4, 0
/* 80C75C88  4B 6B 27 75 */	bl init__12J3DFrameCtrlFs
/* 80C75C8C  38 00 00 00 */	li r0, 0
/* 80C75C90  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C75C94:
/* 80C75C94  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C75C98  60 00 00 08 */	ori r0, r0, 8
/* 80C75C9C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C75CA0:
/* 80C75CA0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C75CA4  3C 80 80 C7 */	lis r4, d_a_obj_lv6SzGate__stringBase0@ha /* 0x80C7665C@ha */
/* 80C75CA8  38 84 66 5C */	addi r4, r4, d_a_obj_lv6SzGate__stringBase0@l /* 0x80C7665C@l */
/* 80C75CAC  4B 3B 72 11 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C75CB0  7C 7F 1B 78 */	mr r31, r3
/* 80C75CB4  2C 1F 00 04 */	cmpwi r31, 4
/* 80C75CB8  40 82 00 FC */	bne lbl_80C75DB4
/* 80C75CBC  7F C3 F3 78 */	mr r3, r30
/* 80C75CC0  3C 80 80 C7 */	lis r4, d_a_obj_lv6SzGate__stringBase0@ha /* 0x80C7665C@ha */
/* 80C75CC4  38 84 66 5C */	addi r4, r4, d_a_obj_lv6SzGate__stringBase0@l /* 0x80C7665C@l */
/* 80C75CC8  38 A0 00 0F */	li r5, 0xf
/* 80C75CCC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C75CD0  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C75CD4  38 E0 1D 80 */	li r7, 0x1d80
/* 80C75CD8  39 00 00 00 */	li r8, 0
/* 80C75CDC  4B 40 2A E1 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C75CE0  2C 03 00 05 */	cmpwi r3, 5
/* 80C75CE4  40 82 00 0C */	bne lbl_80C75CF0
/* 80C75CE8  38 60 00 05 */	li r3, 5
/* 80C75CEC  48 00 00 CC */	b lbl_80C75DB8
lbl_80C75CF0:
/* 80C75CF0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C75CF4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C75CF8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C75CFC  3C 60 80 C7 */	lis r3, l_cull_box@ha /* 0x80C76688@ha */
/* 80C75D00  38 83 66 88 */	addi r4, r3, l_cull_box@l /* 0x80C76688@l */
/* 80C75D04  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C75D08  7F C3 F3 78 */	mr r3, r30
/* 80C75D0C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80C75D10  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C75D14  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C75D18  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C75D1C  FC C0 28 90 */	fmr f6, f5
/* 80C75D20  4B 3A 48 29 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C75D24  80 9E 05 E8 */	lwz r4, 0x5e8(r30)
/* 80C75D28  28 04 00 00 */	cmplwi r4, 0
/* 80C75D2C  41 82 00 20 */	beq lbl_80C75D4C
/* 80C75D30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C75D34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C75D38  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C75D3C  7F C5 F3 78 */	mr r5, r30
/* 80C75D40  4B 3F EC C9 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C75D44  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80C75D48  4B 40 5C 79 */	bl Move__4dBgWFv
lbl_80C75D4C:
/* 80C75D4C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C75D50  98 1E 05 E2 */	stb r0, 0x5e2(r30)
/* 80C75D54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C75D58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C75D5C  88 9E 05 E2 */	lbz r4, 0x5e2(r30)
/* 80C75D60  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C75D64  7C 05 07 74 */	extsb r5, r0
/* 80C75D68  4B 3B F5 F9 */	bl isSwitch__10dSv_info_cCFii
/* 80C75D6C  98 7E 05 E3 */	stb r3, 0x5e3(r30)
/* 80C75D70  3C 60 80 C7 */	lis r3, lit_3666@ha /* 0x80C76644@ha */
/* 80C75D74  C0 03 66 44 */	lfs f0, lit_3666@l(r3)  /* 0x80C76644@l */
/* 80C75D78  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80C75D7C  88 1E 05 E3 */	lbz r0, 0x5e3(r30)
/* 80C75D80  28 00 00 00 */	cmplwi r0, 0
/* 80C75D84  41 82 00 20 */	beq lbl_80C75DA4
/* 80C75D88  3C 60 80 C7 */	lis r3, l_HIO@ha /* 0x80C767E4@ha */
/* 80C75D8C  38 63 67 E4 */	addi r3, r3, l_HIO@l /* 0x80C767E4@l */
/* 80C75D90  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C75D94  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80C75D98  7F C3 F3 78 */	mr r3, r30
/* 80C75D9C  48 00 05 8D */	bl init_modeEnd__13daLv6SzGate_cFv
/* 80C75DA0  48 00 00 0C */	b lbl_80C75DAC
lbl_80C75DA4:
/* 80C75DA4  7F C3 F3 78 */	mr r3, r30
/* 80C75DA8  48 00 01 BD */	bl init_modeWait__13daLv6SzGate_cFv
lbl_80C75DAC:
/* 80C75DAC  7F C3 F3 78 */	mr r3, r30
/* 80C75DB0  4B FF FB 51 */	bl setBaseMtx__13daLv6SzGate_cFv
lbl_80C75DB4:
/* 80C75DB4  7F E3 FB 78 */	mr r3, r31
lbl_80C75DB8:
/* 80C75DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C75DBC  4B 6E C4 6D */	bl _restgpr_29
/* 80C75DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C75DC4  7C 08 03 A6 */	mtlr r0
/* 80C75DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C75DCC  4E 80 00 20 */	blr 
