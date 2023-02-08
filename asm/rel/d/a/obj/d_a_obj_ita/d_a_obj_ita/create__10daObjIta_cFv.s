lbl_80C28928:
/* 80C28928  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C2892C  7C 08 02 A6 */	mflr r0
/* 80C28930  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C28934  39 61 00 30 */	addi r11, r1, 0x30
/* 80C28938  4B 73 98 A5 */	bl _savegpr_29
/* 80C2893C  7C 7E 1B 78 */	mr r30, r3
/* 80C28940  3C 80 80 C3 */	lis r4, lit_3649@ha /* 0x80C29238@ha */
/* 80C28944  3B E4 92 38 */	addi r31, r4, lit_3649@l /* 0x80C29238@l */
/* 80C28948  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C2894C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C28950  40 82 00 94 */	bne lbl_80C289E4
/* 80C28954  7F C0 F3 79 */	or. r0, r30, r30
/* 80C28958  41 82 00 80 */	beq lbl_80C289D8
/* 80C2895C  7C 1D 03 78 */	mr r29, r0
/* 80C28960  4B 44 FC C5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C28964  3C 60 80 C3 */	lis r3, __vt__10daObjIta_c@ha /* 0x80C29390@ha */
/* 80C28968  38 03 93 90 */	addi r0, r3, __vt__10daObjIta_c@l /* 0x80C29390@l */
/* 80C2896C  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80C28970  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C28974  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C28978  90 1D 06 00 */	stw r0, 0x600(r29)
/* 80C2897C  38 7D 06 04 */	addi r3, r29, 0x604
/* 80C28980  4B 45 AD E1 */	bl __ct__10dCcD_GSttsFv
/* 80C28984  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C28988  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C2898C  90 7D 06 00 */	stw r3, 0x600(r29)
/* 80C28990  38 03 00 20 */	addi r0, r3, 0x20
/* 80C28994  90 1D 06 04 */	stw r0, 0x604(r29)
/* 80C28998  38 7D 06 28 */	addi r3, r29, 0x628
/* 80C2899C  4B 69 7A 2D */	bl __ct__10Z2CreatureFv
/* 80C289A0  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 80C289A4  4B 44 D5 09 */	bl __ct__12dBgS_AcchCirFv
/* 80C289A8  3B BD 07 04 */	addi r29, r29, 0x704
/* 80C289AC  7F A3 EB 78 */	mr r3, r29
/* 80C289B0  4B 44 D6 F1 */	bl __ct__9dBgS_AcchFv
/* 80C289B4  3C 60 80 C3 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C2936C@ha */
/* 80C289B8  38 63 93 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C2936C@l */
/* 80C289BC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C289C0  38 03 00 0C */	addi r0, r3, 0xc
/* 80C289C4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C289C8  38 03 00 18 */	addi r0, r3, 0x18
/* 80C289CC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C289D0  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C289D4  4B 45 04 95 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80C289D8:
/* 80C289D8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C289DC  60 00 00 08 */	ori r0, r0, 8
/* 80C289E0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C289E4:
/* 80C289E4  38 7E 06 B8 */	addi r3, r30, 0x6b8
/* 80C289E8  3C 80 80 C3 */	lis r4, l_arcName@ha /* 0x80C29318@ha */
/* 80C289EC  38 84 93 18 */	addi r4, r4, l_arcName@l /* 0x80C29318@l */
/* 80C289F0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C289F4  4B 40 44 C9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C289F8  7C 7D 1B 78 */	mr r29, r3
/* 80C289FC  2C 1D 00 04 */	cmpwi r29, 4
/* 80C28A00  40 82 00 68 */	bne lbl_80C28A68
/* 80C28A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C28A08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C28A0C  3C 63 00 02 */	addis r3, r3, 2
/* 80C28A10  3C 80 80 C3 */	lis r4, l_arcName@ha /* 0x80C29318@ha */
/* 80C28A14  38 84 93 18 */	addi r4, r4, l_arcName@l /* 0x80C29318@l */
/* 80C28A18  80 84 00 00 */	lwz r4, 0(r4)
/* 80C28A1C  3C A0 80 C3 */	lis r5, d_a_obj_ita__stringBase0@ha /* 0x80C292E8@ha */
/* 80C28A20  38 A5 92 E8 */	addi r5, r5, d_a_obj_ita__stringBase0@l /* 0x80C292E8@l */
/* 80C28A24  38 A5 00 06 */	addi r5, r5, 6
/* 80C28A28  38 63 C2 F8 */	addi r3, r3, -15624
/* 80C28A2C  4B 41 3C 8D */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80C28A30  7C 65 1B 78 */	mr r5, r3
/* 80C28A34  7F C3 F3 78 */	mr r3, r30
/* 80C28A38  3C 80 80 C3 */	lis r4, l_arcName@ha /* 0x80C29318@ha */
/* 80C28A3C  38 84 93 18 */	addi r4, r4, l_arcName@l /* 0x80C29318@l */
/* 80C28A40  80 84 00 00 */	lwz r4, 0(r4)
/* 80C28A44  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C28A48  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C28A4C  38 E0 13 20 */	li r7, 0x1320
/* 80C28A50  39 00 00 00 */	li r8, 0
/* 80C28A54  4B 44 FD 69 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C28A58  7C 7D 1B 78 */	mr r29, r3
/* 80C28A5C  2C 1D 00 05 */	cmpwi r29, 5
/* 80C28A60  40 82 00 08 */	bne lbl_80C28A68
/* 80C28A64  48 00 00 C4 */	b lbl_80C28B28
lbl_80C28A68:
/* 80C28A68  38 00 00 00 */	li r0, 0
/* 80C28A6C  90 01 00 08 */	stw r0, 8(r1)
/* 80C28A70  38 7E 07 04 */	addi r3, r30, 0x704
/* 80C28A74  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C28A78  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C28A7C  7F C6 F3 78 */	mr r6, r30
/* 80C28A80  38 E0 00 01 */	li r7, 1
/* 80C28A84  39 1E 06 C4 */	addi r8, r30, 0x6c4
/* 80C28A88  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C28A8C  39 40 00 00 */	li r10, 0
/* 80C28A90  4B 44 D7 B9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C28A94  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 80C28A98  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C28A9C  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80C28AA0  4B 44 D4 B9 */	bl SetWall__12dBgS_AcchCirFff
/* 80C28AA4  38 00 01 00 */	li r0, 0x100
/* 80C28AA8  B0 1E 05 B0 */	sth r0, 0x5b0(r30)
/* 80C28AAC  38 7E 07 04 */	addi r3, r30, 0x704
/* 80C28AB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C28AB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C28AB8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C28ABC  4B 44 DF F1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C28AC0  7F C3 F3 78 */	mr r3, r30
/* 80C28AC4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C28AC8  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80C28ACC  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C28AD0  C0 9F 00 28 */	lfs f4, 0x28(r31)
/* 80C28AD4  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 80C28AD8  C0 DF 00 30 */	lfs f6, 0x30(r31)
/* 80C28ADC  4B 3F 1A 6D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C28AE0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C28AE4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C28AE8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C28AEC  EC 21 00 2A */	fadds f1, f1, f0
/* 80C28AF0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C28AF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C28AF8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C28AFC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80C28B00  38 61 00 10 */	addi r3, r1, 0x10
/* 80C28B04  4B 3F 52 81 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80C28B08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C28B0C  41 82 00 18 */	beq lbl_80C28B24
/* 80C28B10  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80C28B14  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 80C28B18  C0 03 0C D8 */	lfs f0, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 80C28B1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C28B20  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80C28B24:
/* 80C28B24  7F A3 EB 78 */	mr r3, r29
lbl_80C28B28:
/* 80C28B28  39 61 00 30 */	addi r11, r1, 0x30
/* 80C28B2C  4B 73 96 FD */	bl _restgpr_29
/* 80C28B30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C28B34  7C 08 03 A6 */	mtlr r0
/* 80C28B38  38 21 00 30 */	addi r1, r1, 0x30
/* 80C28B3C  4E 80 00 20 */	blr 
