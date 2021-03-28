lbl_80763DF4:
/* 80763DF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80763DF8  7C 08 02 A6 */	mflr r0
/* 80763DFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80763E00  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80763E04  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80763E08  39 61 00 30 */	addi r11, r1, 0x30
/* 80763E0C  4B BF E3 D0 */	b _savegpr_29
/* 80763E10  7C 7D 1B 78 */	mr r29, r3
/* 80763E14  3C 80 80 76 */	lis r4, lit_3788@ha
/* 80763E18  3B C4 4D 0C */	addi r30, r4, lit_3788@l
/* 80763E1C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80763E20  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80763E24  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80763E28  4B 8B 68 E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80763E2C  B0 7D 0A 48 */	sth r3, 0xa48(r29)
/* 80763E30  7F A3 EB 78 */	mr r3, r29
/* 80763E34  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80763E38  4B 8B 6B 2C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80763E3C  D0 3D 0A 1C */	stfs f1, 0xa1c(r29)
/* 80763E40  A8 7D 0A 40 */	lha r3, 0xa40(r29)
/* 80763E44  38 03 00 01 */	addi r0, r3, 1
/* 80763E48  B0 1D 0A 40 */	sth r0, 0xa40(r29)
/* 80763E4C  38 60 00 00 */	li r3, 0
/* 80763E50  38 00 00 04 */	li r0, 4
/* 80763E54  7C 09 03 A6 */	mtctr r0
lbl_80763E58:
/* 80763E58  38 A3 0A 38 */	addi r5, r3, 0xa38
/* 80763E5C  7C 9D 2A AE */	lhax r4, r29, r5
/* 80763E60  2C 04 00 00 */	cmpwi r4, 0
/* 80763E64  41 82 00 0C */	beq lbl_80763E70
/* 80763E68  38 04 FF FF */	addi r0, r4, -1
/* 80763E6C  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_80763E70:
/* 80763E70  38 63 00 02 */	addi r3, r3, 2
/* 80763E74  42 00 FF E4 */	bdnz lbl_80763E58
/* 80763E78  88 1D 0A 66 */	lbz r0, 0xa66(r29)
/* 80763E7C  28 00 00 00 */	cmplwi r0, 0
/* 80763E80  40 82 00 14 */	bne lbl_80763E94
/* 80763E84  7F A3 EB 78 */	mr r3, r29
/* 80763E88  4B FF FF 29 */	bl e_rb_base__FP10e_rb_class
/* 80763E8C  38 60 00 01 */	li r3, 1
/* 80763E90  48 00 02 54 */	b lbl_807640E4
lbl_80763E94:
/* 80763E94  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80763E98  38 9D 05 B4 */	addi r4, r29, 0x5b4
/* 80763E9C  4B 8B 5B 20 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80763EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80763EA4  41 82 00 10 */	beq lbl_80763EB4
/* 80763EA8  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 80763EAC  28 00 00 00 */	cmplwi r0, 0
/* 80763EB0  40 82 00 0C */	bne lbl_80763EBC
lbl_80763EB4:
/* 80763EB4  38 60 00 01 */	li r3, 1
/* 80763EB8  48 00 02 2C */	b lbl_807640E4
lbl_80763EBC:
/* 80763EBC  A8 7D 0A 4A */	lha r3, 0xa4a(r29)
/* 80763EC0  2C 03 00 00 */	cmpwi r3, 0
/* 80763EC4  41 82 00 0C */	beq lbl_80763ED0
/* 80763EC8  38 03 FF FF */	addi r0, r3, -1
/* 80763ECC  B0 1D 0A 4A */	sth r0, 0xa4a(r29)
lbl_80763ED0:
/* 80763ED0  7F A3 EB 78 */	mr r3, r29
/* 80763ED4  4B FF F3 0D */	bl action__FP10e_rb_class
/* 80763ED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80763EDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80763EE0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80763EE4  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80763EE8  C0 5D 0A 20 */	lfs f2, 0xa20(r29)
/* 80763EEC  3C 80 80 76 */	lis r4, l_HIO@ha
/* 80763EF0  3B E4 4F 90 */	addi r31, r4, l_HIO@l
/* 80763EF4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80763EF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80763EFC  EC 43 00 2A */	fadds f2, f3, f0
/* 80763F00  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80763F04  4B BE 29 E4 */	b PSMTXTrans
/* 80763F08  A8 1D 0A 42 */	lha r0, 0xa42(r29)
/* 80763F0C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80763F10  40 82 00 14 */	bne lbl_80763F24
/* 80763F14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80763F18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80763F1C  A8 9D 0A 58 */	lha r4, 0xa58(r29)
/* 80763F20  4B 8A 85 14 */	b mDoMtx_YrotM__FPA4_fs
lbl_80763F24:
/* 80763F24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80763F28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80763F2C  A8 9D 0A 52 */	lha r4, 0xa52(r29)
/* 80763F30  4B 8A 85 04 */	b mDoMtx_YrotM__FPA4_fs
/* 80763F34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80763F38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80763F3C  A8 9D 0A 54 */	lha r4, 0xa54(r29)
/* 80763F40  4B 8A 84 5C */	b mDoMtx_XrotM__FPA4_fs
/* 80763F44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80763F48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80763F4C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80763F50  4B 8A 84 E4 */	b mDoMtx_YrotM__FPA4_fs
/* 80763F54  C3 FE 00 04 */	lfs f31, 4(r30)
/* 80763F58  C0 5D 0A 2C */	lfs f2, 0xa2c(r29)
/* 80763F5C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80763F60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80763F64  40 81 00 38 */	ble lbl_80763F9C
/* 80763F68  A8 1D 0A 40 */	lha r0, 0xa40(r29)
/* 80763F6C  1C 00 1F 40 */	mulli r0, r0, 0x1f40
/* 80763F70  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80763F74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80763F78  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80763F7C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80763F80  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80763F84  EC 00 00 72 */	fmuls f0, f0, f1
/* 80763F88  EF E2 00 32 */	fmuls f31, f2, f0
/* 80763F8C  38 7D 0A 2C */	addi r3, r29, 0xa2c
/* 80763F90  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80763F94  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 80763F98  4B B0 BA E8 */	b cLib_addCalc0__FPfff
lbl_80763F9C:
/* 80763F9C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80763FA0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80763FA4  EC 01 F8 2A */	fadds f0, f1, f31
/* 80763FA8  EC 62 00 32 */	fmuls f3, f2, f0
/* 80763FAC  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80763FB0  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80763FB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80763FB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80763FBC  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80763FC0  38 61 00 14 */	addi r3, r1, 0x14
/* 80763FC4  4B 8A 8E AC */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80763FC8  80 7D 09 68 */	lwz r3, 0x968(r29)
/* 80763FCC  80 83 00 04 */	lwz r4, 4(r3)
/* 80763FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80763FD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80763FD8  38 84 00 24 */	addi r4, r4, 0x24
/* 80763FDC  4B BE 24 D4 */	b PSMTXCopy
/* 80763FE0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80763FE4  7C 03 07 74 */	extsb r3, r0
/* 80763FE8  4B 8C 90 84 */	b dComIfGp_getReverb__Fi
/* 80763FEC  7C 65 1B 78 */	mr r5, r3
/* 80763FF0  80 7D 09 68 */	lwz r3, 0x968(r29)
/* 80763FF4  38 80 00 00 */	li r4, 0
/* 80763FF8  4B 8A D0 B8 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80763FFC  80 7D 09 68 */	lwz r3, 0x968(r29)
/* 80764000  4B 8A D1 EC */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80764004  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80764008  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 8076400C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80764010  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80764014  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80764018  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 8076401C  C0 5D 05 3C */	lfs f2, 0x53c(r29)
/* 80764020  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80764024  C0 1D 0A 20 */	lfs f0, 0xa20(r29)
/* 80764028  EC 01 00 2A */	fadds f0, f1, f0
/* 8076402C  EC 02 00 2A */	fadds f0, f2, f0
/* 80764030  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80764034  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80764038  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8076403C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80764040  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80764044  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80764048  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 8076404C  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 80764050  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80764054  EC 01 00 2A */	fadds f0, f1, f0
/* 80764058  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 8076405C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80764060  D0 01 00 08 */	stfs f0, 8(r1)
/* 80764064  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80764068  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8076406C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80764070  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80764074  A8 1D 0A 4A */	lha r0, 0xa4a(r29)
/* 80764078  2C 00 00 00 */	cmpwi r0, 0
/* 8076407C  41 82 00 10 */	beq lbl_8076408C
/* 80764080  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80764084  EC 01 00 2A */	fadds f0, f1, f0
/* 80764088  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_8076408C:
/* 8076408C  38 7D 09 30 */	addi r3, r29, 0x930
/* 80764090  38 81 00 08 */	addi r4, r1, 8
/* 80764094  4B B0 B5 B4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80764098  38 7D 09 30 */	addi r3, r29, 0x930
/* 8076409C  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 807640A0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807640A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 807640A8  4B B0 B6 60 */	b SetR__8cM3dGSphFf
/* 807640AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807640B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807640B4  38 63 23 3C */	addi r3, r3, 0x233c
/* 807640B8  38 9D 08 0C */	addi r4, r29, 0x80c
/* 807640BC  4B B0 0A EC */	b Set__4cCcSFP8cCcD_Obj
/* 807640C0  A8 1D 0A 42 */	lha r0, 0xa42(r29)
/* 807640C4  2C 00 00 00 */	cmpwi r0, 0
/* 807640C8  41 82 00 18 */	beq lbl_807640E0
/* 807640CC  7F A3 EB 78 */	mr r3, r29
/* 807640D0  38 9D 09 6C */	addi r4, r29, 0x96c
/* 807640D4  38 BD 05 38 */	addi r5, r29, 0x538
/* 807640D8  38 C1 00 14 */	addi r6, r1, 0x14
/* 807640DC  48 00 08 09 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
lbl_807640E0:
/* 807640E0  38 60 00 01 */	li r3, 1
lbl_807640E4:
/* 807640E4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807640E8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807640EC  39 61 00 30 */	addi r11, r1, 0x30
/* 807640F0  4B BF E1 38 */	b _restgpr_29
/* 807640F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807640F8  7C 08 03 A6 */	mtlr r0
/* 807640FC  38 21 00 40 */	addi r1, r1, 0x40
/* 80764100  4E 80 00 20 */	blr 
