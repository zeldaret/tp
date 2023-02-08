lbl_80CBC8BC:
/* 80CBC8BC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80CBC8C0  7C 08 02 A6 */	mflr r0
/* 80CBC8C4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80CBC8C8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80CBC8CC  4B 6A 59 11 */	bl _savegpr_29
/* 80CBC8D0  7C 7E 1B 78 */	mr r30, r3
/* 80CBC8D4  3C 60 80 CC */	lis r3, lit_3631@ha /* 0x80CBDA5C@ha */
/* 80CBC8D8  3B E3 DA 5C */	addi r31, r3, lit_3631@l /* 0x80CBDA5C@l */
/* 80CBC8DC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080251@ha */
/* 80CBC8E0  38 03 02 51 */	addi r0, r3, 0x0251 /* 0x00080251@l */
/* 80CBC8E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBC8E8  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80CBC8EC  38 81 00 24 */	addi r4, r1, 0x24
/* 80CBC8F0  38 A0 00 00 */	li r5, 0
/* 80CBC8F4  38 C0 FF FF */	li r6, -1
/* 80CBC8F8  81 9E 06 00 */	lwz r12, 0x600(r30)
/* 80CBC8FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CBC900  7D 89 03 A6 */	mtctr r12
/* 80CBC904  4E 80 04 21 */	bctrl 
/* 80CBC908  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80CBC90C  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80CBC910  EC 61 00 32 */	fmuls f3, f1, f0
/* 80CBC914  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80CBC918  C0 5E 05 C8 */	lfs f2, 0x5c8(r30)
/* 80CBC91C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CBC920  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CBC924  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80CBC928  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CBC92C  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 80CBC930  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80CBC934  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CBC938  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80CBC93C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CBC940  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 80CBC944  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CBC948  4B 35 04 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBC94C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CBC950  4B 35 05 F5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CBC954  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CBC958  FC 40 08 90 */	fmr f2, f1
/* 80CBC95C  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80CBC960  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80CBC964  EC 63 00 32 */	fmuls f3, f3, f0
/* 80CBC968  4B 35 04 35 */	bl transM__14mDoMtx_stack_cFfff
/* 80CBC96C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80CBC970  4B 35 05 D5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CBC974  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CBC978  FC 40 08 90 */	fmr f2, f1
/* 80CBC97C  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80CBC980  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80CBC984  EC 63 00 32 */	fmuls f3, f3, f0
/* 80CBC988  4B 35 04 15 */	bl transM__14mDoMtx_stack_cFfff
/* 80CBC98C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBC990  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBC994  38 81 00 4C */	addi r4, r1, 0x4c
/* 80CBC998  7C 85 23 78 */	mr r5, r4
/* 80CBC99C  4B 68 A3 D1 */	bl PSMTXMultVec
/* 80CBC9A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBC9A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBC9A8  38 81 00 40 */	addi r4, r1, 0x40
/* 80CBC9AC  7C 85 23 78 */	mr r5, r4
/* 80CBC9B0  4B 68 A3 BD */	bl PSMTXMultVec
/* 80CBC9B4  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80CBC9B8  38 81 00 40 */	addi r4, r1, 0x40
/* 80CBC9BC  38 A0 00 02 */	li r5, 2
/* 80CBC9C0  81 9E 06 00 */	lwz r12, 0x600(r30)
/* 80CBC9C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CBC9C8  7D 89 03 A6 */	mtctr r12
/* 80CBC9CC  4E 80 04 21 */	bctrl 
/* 80CBC9D0  38 61 00 58 */	addi r3, r1, 0x58
/* 80CBC9D4  4B 3B B2 95 */	bl __ct__11dBgS_LinChkFv
/* 80CBC9D8  38 61 00 58 */	addi r3, r1, 0x58
/* 80CBC9DC  38 9E 05 D0 */	addi r4, r30, 0x5d0
/* 80CBC9E0  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80CBC9E4  38 C0 00 00 */	li r6, 0
/* 80CBC9E8  4B 3B B3 7D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CBC9EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBC9F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBC9F4  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80CBC9F8  7F A3 EB 78 */	mr r3, r29
/* 80CBC9FC  38 81 00 58 */	addi r4, r1, 0x58
/* 80CBCA00  4B 3B 79 B5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80CBCA04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBCA08  41 82 01 CC */	beq lbl_80CBCBD4
/* 80CBCA0C  7F A3 EB 78 */	mr r3, r29
/* 80CBCA10  38 81 00 6C */	addi r4, r1, 0x6c
/* 80CBCA14  4B 3B 82 A9 */	bl GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 80CBCA18  2C 03 00 01 */	cmpwi r3, 1
/* 80CBCA1C  40 82 01 B8 */	bne lbl_80CBCBD4
/* 80CBCA20  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80CBCA24  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80CBCA28  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80CBCA2C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CBCA30  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80CBCA34  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80CBCA38  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CBCA3C  7C 03 07 74 */	extsb r3, r0
/* 80CBCA40  4B 37 06 2D */	bl dComIfGp_getReverb__Fi
/* 80CBCA44  7C 67 1B 78 */	mr r7, r3
/* 80CBCA48  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080252@ha */
/* 80CBCA4C  38 03 02 52 */	addi r0, r3, 0x0252 /* 0x00080252@l */
/* 80CBCA50  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CBCA54  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CBCA58  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CBCA5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBCA60  38 81 00 20 */	addi r4, r1, 0x20
/* 80CBCA64  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CBCA68  38 C0 00 00 */	li r6, 0
/* 80CBCA6C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80CBCA70  FC 40 08 90 */	fmr f2, f1
/* 80CBCA74  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80CBCA78  FC 80 18 90 */	fmr f4, f3
/* 80CBCA7C  39 00 00 00 */	li r8, 0
/* 80CBCA80  4B 5E EF 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CBCA84  88 9E 05 A8 */	lbz r4, 0x5a8(r30)
/* 80CBCA88  28 04 00 FF */	cmplwi r4, 0xff
/* 80CBCA8C  41 82 00 48 */	beq lbl_80CBCAD4
/* 80CBCA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBCA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBCA98  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CBCA9C  7C 05 07 74 */	extsb r5, r0
/* 80CBCAA0  4B 37 88 C1 */	bl isSwitch__10dSv_info_cCFii
/* 80CBCAA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CBCAA8  40 82 00 2C */	bne lbl_80CBCAD4
/* 80CBCAAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CBCAB0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CBCAB4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80CBCAB8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CBCABC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CBCAC0  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 80CBCAC4  38 80 00 08 */	li r4, 8
/* 80CBCAC8  38 A0 00 1F */	li r5, 0x1f
/* 80CBCACC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80CBCAD0  4B 3B 2F 55 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80CBCAD4:
/* 80CBCAD4  38 00 00 02 */	li r0, 2
/* 80CBCAD8  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 80CBCADC  C0 5E 05 CC */	lfs f2, 0x5cc(r30)
/* 80CBCAE0  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80CBCAE4  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 80CBCAE8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CBCAEC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CBCAF0  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80CBCAF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBCAF8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBCAFC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80CBCB00  38 80 00 00 */	li r4, 0
/* 80CBCB04  90 81 00 08 */	stw r4, 8(r1)
/* 80CBCB08  38 00 FF FF */	li r0, -1
/* 80CBCB0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBCB10  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBCB14  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBCB18  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBCB1C  38 80 00 00 */	li r4, 0
/* 80CBCB20  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008706@ha */
/* 80CBCB24  38 A5 87 06 */	addi r5, r5, 0x8706 /* 0x00008706@l */
/* 80CBCB28  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80CBCB2C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80CBCB30  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80CBCB34  39 21 00 34 */	addi r9, r1, 0x34
/* 80CBCB38  39 40 00 FF */	li r10, 0xff
/* 80CBCB3C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80CBCB40  4B 38 FF 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBCB44  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80CBCB48  38 80 00 00 */	li r4, 0
/* 80CBCB4C  90 81 00 08 */	stw r4, 8(r1)
/* 80CBCB50  38 00 FF FF */	li r0, -1
/* 80CBCB54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBCB58  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBCB5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBCB60  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBCB64  38 80 00 00 */	li r4, 0
/* 80CBCB68  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008707@ha */
/* 80CBCB6C  38 A5 87 07 */	addi r5, r5, 0x8707 /* 0x00008707@l */
/* 80CBCB70  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80CBCB74  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80CBCB78  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80CBCB7C  39 21 00 34 */	addi r9, r1, 0x34
/* 80CBCB80  39 40 00 FF */	li r10, 0xff
/* 80CBCB84  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80CBCB88  4B 38 FF 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBCB8C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80CBCB90  A8 1E 05 AA */	lha r0, 0x5aa(r30)
/* 80CBCB94  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 80CBCB98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBCB9C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80CBCBA0  3C 00 43 30 */	lis r0, 0x4330
/* 80CBCBA4  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80CBCBA8  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80CBCBAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBCBB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CBCBB4  FC 00 00 1E */	fctiwz f0, f0
/* 80CBCBB8  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 80CBCBBC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80CBCBC0  B0 1E 05 B0 */	sth r0, 0x5b0(r30)
/* 80CBCBC4  A8 1E 05 E8 */	lha r0, 0x5e8(r30)
/* 80CBCBC8  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80CBCBCC  38 00 04 00 */	li r0, 0x400
/* 80CBCBD0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_80CBCBD4:
/* 80CBCBD4  A8 1E 05 E8 */	lha r0, 0x5e8(r30)
/* 80CBCBD8  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80CBCBDC  40 81 00 0C */	ble lbl_80CBCBE8
/* 80CBCBE0  38 00 00 02 */	li r0, 2
/* 80CBCBE4  90 1E 05 A4 */	stw r0, 0x5a4(r30)
lbl_80CBCBE8:
/* 80CBCBE8  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80CBCBEC  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 80CBCBF0  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 80CBCBF4  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80CBCBF8  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80CBCBFC  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80CBCC00  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CBCC04  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80CBCC08  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CBCC0C  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80CBCC10  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CBCC14  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80CBCC18  38 61 00 58 */	addi r3, r1, 0x58
/* 80CBCC1C  38 80 FF FF */	li r4, -1
/* 80CBCC20  4B 3B B0 BD */	bl __dt__11dBgS_LinChkFv
/* 80CBCC24  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80CBCC28  4B 6A 56 01 */	bl _restgpr_29
/* 80CBCC2C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80CBCC30  7C 08 03 A6 */	mtlr r0
/* 80CBCC34  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80CBCC38  4E 80 00 20 */	blr 
