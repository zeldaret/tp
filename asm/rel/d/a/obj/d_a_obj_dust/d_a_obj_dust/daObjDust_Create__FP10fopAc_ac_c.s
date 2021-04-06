lbl_80BE2834:
/* 80BE2834  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE2838  7C 08 02 A6 */	mflr r0
/* 80BE283C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE2840  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE2844  4B 77 F9 99 */	bl _savegpr_29
/* 80BE2848  3C 80 80 BE */	lis r4, lit_3673@ha /* 0x80BE2F98@ha */
/* 80BE284C  3B E4 2F 98 */	addi r31, r4, lit_3673@l /* 0x80BE2F98@l */
/* 80BE2850  7C 7E 1B 78 */	mr r30, r3
/* 80BE2854  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BE2858  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BE285C  40 82 00 8C */	bne lbl_80BE28E8
/* 80BE2860  7F C0 F3 79 */	or. r0, r30, r30
/* 80BE2864  41 82 00 78 */	beq lbl_80BE28DC
/* 80BE2868  7C 1D 03 78 */	mr r29, r0
/* 80BE286C  4B 49 5D B9 */	bl __ct__16dBgS_MoveBgActorFv
/* 80BE2870  3C 60 80 BE */	lis r3, __vt__11daObjDust_c@ha /* 0x80BE30CC@ha */
/* 80BE2874  38 03 30 CC */	addi r0, r3, __vt__11daObjDust_c@l /* 0x80BE30CC@l */
/* 80BE2878  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80BE287C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BE2880  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BE2884  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 80BE2888  38 7D 06 00 */	addi r3, r29, 0x600
/* 80BE288C  4B 4A 0E D5 */	bl __ct__10dCcD_GSttsFv
/* 80BE2890  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BE2894  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BE2898  90 7D 05 FC */	stw r3, 0x5fc(r29)
/* 80BE289C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BE28A0  90 1D 06 00 */	stw r0, 0x600(r29)
/* 80BE28A4  38 7D 06 34 */	addi r3, r29, 0x634
/* 80BE28A8  4B 49 36 05 */	bl __ct__12dBgS_AcchCirFv
/* 80BE28AC  3B BD 06 74 */	addi r29, r29, 0x674
/* 80BE28B0  7F A3 EB 78 */	mr r3, r29
/* 80BE28B4  4B 49 37 ED */	bl __ct__9dBgS_AcchFv
/* 80BE28B8  3C 60 80 BE */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BE30A8@ha */
/* 80BE28BC  38 63 30 A8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BE30A8@l */
/* 80BE28C0  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BE28C4  38 03 00 0C */	addi r0, r3, 0xc
/* 80BE28C8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BE28CC  38 03 00 18 */	addi r0, r3, 0x18
/* 80BE28D0  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BE28D4  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BE28D8  4B 49 65 91 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80BE28DC:
/* 80BE28DC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BE28E0  60 00 00 08 */	ori r0, r0, 8
/* 80BE28E4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BE28E8:
/* 80BE28E8  38 7E 06 28 */	addi r3, r30, 0x628
/* 80BE28EC  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BE3054@ha */
/* 80BE28F0  38 84 30 54 */	addi r4, r4, l_arcName@l /* 0x80BE3054@l */
/* 80BE28F4  80 84 00 00 */	lwz r4, 0(r4)
/* 80BE28F8  4B 44 A5 C5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BE28FC  7C 7D 1B 78 */	mr r29, r3
/* 80BE2900  2C 1D 00 04 */	cmpwi r29, 4
/* 80BE2904  40 82 00 68 */	bne lbl_80BE296C
/* 80BE2908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE290C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE2910  3C 63 00 02 */	addis r3, r3, 2
/* 80BE2914  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BE3054@ha */
/* 80BE2918  38 84 30 54 */	addi r4, r4, l_arcName@l /* 0x80BE3054@l */
/* 80BE291C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BE2920  3C A0 80 BE */	lis r5, d_a_obj_dust__stringBase0@ha /* 0x80BE3020@ha */
/* 80BE2924  38 A5 30 20 */	addi r5, r5, d_a_obj_dust__stringBase0@l /* 0x80BE3020@l */
/* 80BE2928  38 A5 00 07 */	addi r5, r5, 7
/* 80BE292C  38 63 C2 F8 */	addi r3, r3, -15624
/* 80BE2930  4B 45 9D 89 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80BE2934  7C 65 1B 78 */	mr r5, r3
/* 80BE2938  7F C3 F3 78 */	mr r3, r30
/* 80BE293C  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BE3054@ha */
/* 80BE2940  38 84 30 54 */	addi r4, r4, l_arcName@l /* 0x80BE3054@l */
/* 80BE2944  80 84 00 00 */	lwz r4, 0(r4)
/* 80BE2948  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BE294C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BE2950  38 E0 10 60 */	li r7, 0x1060
/* 80BE2954  39 00 00 00 */	li r8, 0
/* 80BE2958  4B 49 5E 65 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BE295C  7C 7D 1B 78 */	mr r29, r3
/* 80BE2960  2C 1D 00 05 */	cmpwi r29, 5
/* 80BE2964  40 82 00 08 */	bne lbl_80BE296C
/* 80BE2968  48 00 00 7C */	b lbl_80BE29E4
lbl_80BE296C:
/* 80BE296C  7F C3 F3 78 */	mr r3, r30
/* 80BE2970  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BE2974  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80BE2978  FC 60 08 90 */	fmr f3, f1
/* 80BE297C  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 80BE2980  C0 BF 00 60 */	lfs f5, 0x60(r31)
/* 80BE2984  FC C0 20 90 */	fmr f6, f4
/* 80BE2988  4B 43 7B C1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BE298C  38 00 00 00 */	li r0, 0
/* 80BE2990  90 01 00 08 */	stw r0, 8(r1)
/* 80BE2994  38 7E 06 74 */	addi r3, r30, 0x674
/* 80BE2998  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BE299C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80BE29A0  7F C6 F3 78 */	mr r6, r30
/* 80BE29A4  38 E0 00 01 */	li r7, 1
/* 80BE29A8  39 1E 06 34 */	addi r8, r30, 0x634
/* 80BE29AC  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80BE29B0  39 40 00 00 */	li r10, 0
/* 80BE29B4  4B 49 38 95 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BE29B8  38 7E 06 34 */	addi r3, r30, 0x634
/* 80BE29BC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80BE29C0  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80BE29C4  4B 49 35 95 */	bl SetWall__12dBgS_AcchCirFff
/* 80BE29C8  38 7E 06 74 */	addi r3, r30, 0x674
/* 80BE29CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE29D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE29D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BE29D8  4B 49 40 D5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BE29DC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BE29E0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80BE29E4:
/* 80BE29E4  7F A3 EB 78 */	mr r3, r29
/* 80BE29E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE29EC  4B 77 F8 3D */	bl _restgpr_29
/* 80BE29F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE29F4  7C 08 03 A6 */	mtlr r0
/* 80BE29F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE29FC  4E 80 00 20 */	blr 
