lbl_8085F2B0:
/* 8085F2B0  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 8085F2B4  7C 08 02 A6 */	mflr r0
/* 8085F2B8  90 01 01 94 */	stw r0, 0x194(r1)
/* 8085F2BC  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 8085F2C0  F3 E1 01 88 */	psq_st f31, 392(r1), 0, 0 /* qr0 */
/* 8085F2C4  DB C1 01 70 */	stfd f30, 0x170(r1)
/* 8085F2C8  F3 C1 01 78 */	psq_st f30, 376(r1), 0, 0 /* qr0 */
/* 8085F2CC  DB A1 01 60 */	stfd f29, 0x160(r1)
/* 8085F2D0  F3 A1 01 68 */	psq_st f29, 360(r1), 0, 0 /* qr0 */
/* 8085F2D4  DB 81 01 50 */	stfd f28, 0x150(r1)
/* 8085F2D8  F3 81 01 58 */	psq_st f28, 344(r1), 0, 0 /* qr0 */
/* 8085F2DC  DB 61 01 40 */	stfd f27, 0x140(r1)
/* 8085F2E0  F3 61 01 48 */	psq_st f27, 328(r1), 0, 0 /* qr0 */
/* 8085F2E4  39 61 01 40 */	addi r11, r1, 0x140
/* 8085F2E8  4B B0 2E D5 */	bl _savegpr_21
/* 8085F2EC  7C 7C 1B 78 */	mr r28, r3
/* 8085F2F0  3C 60 80 86 */	lis r3, lit_3783@ha /* 0x80860470@ha */
/* 8085F2F4  3B E3 04 70 */	addi r31, r3, lit_3783@l /* 0x80860470@l */
/* 8085F2F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085F2FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085F300  83 C3 0E 94 */	lwz r30, 0xe94(r3)
/* 8085F304  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085F308  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085F30C  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 8085F310  82 A3 5D AC */	lwz r21, 0x5dac(r3)
/* 8085F314  38 61 00 10 */	addi r3, r1, 0x10
/* 8085F318  4B 7F B7 E9 */	bl dKyw_get_wind_vecpow__Fv
/* 8085F31C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8085F320  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8085F324  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8085F328  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8085F32C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8085F330  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8085F334  3A C1 00 A0 */	addi r22, r1, 0xa0
/* 8085F338  7E C3 B3 78 */	mr r3, r22
/* 8085F33C  4B 81 82 41 */	bl __ct__11dBgS_GndChkFv
/* 8085F340  3C 60 80 86 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80860590@ha */
/* 8085F344  38 63 05 90 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80860590@l */
/* 8085F348  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 8085F34C  38 03 00 0C */	addi r0, r3, 0xc
/* 8085F350  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8085F354  38 03 00 18 */	addi r0, r3, 0x18
/* 8085F358  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8085F35C  38 03 00 24 */	addi r0, r3, 0x24
/* 8085F360  90 01 00 EC */	stw r0, 0xec(r1)
/* 8085F364  38 76 00 3C */	addi r3, r22, 0x3c
/* 8085F368  4B 81 9B 01 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8085F36C  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha /* 0x803AB6E8@ha */
/* 8085F370  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l /* 0x803AB6E8@l */
/* 8085F374  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 8085F378  38 03 00 0C */	addi r0, r3, 0xc
/* 8085F37C  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8085F380  38 03 00 18 */	addi r0, r3, 0x18
/* 8085F384  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8085F388  38 03 00 24 */	addi r0, r3, 0x24
/* 8085F38C  90 01 00 EC */	stw r0, 0xec(r1)
/* 8085F390  80 01 00 F0 */	lwz r0, 0xf0(r1)
/* 8085F394  60 00 00 03 */	ori r0, r0, 3
/* 8085F398  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8085F39C  28 1E 00 00 */	cmplwi r30, 0
/* 8085F3A0  40 82 00 18 */	bne lbl_8085F3B8
/* 8085F3A4  7E C3 B3 78 */	mr r3, r22
/* 8085F3A8  38 80 FF FF */	li r4, -1
/* 8085F3AC  4B 81 85 3D */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 8085F3B0  38 60 00 01 */	li r3, 1
/* 8085F3B4  48 00 0D 54 */	b lbl_80860108
lbl_8085F3B8:
/* 8085F3B8  C0 15 04 D0 */	lfs f0, 0x4d0(r21)
/* 8085F3BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8085F3C0  C0 35 04 D4 */	lfs f1, 0x4d4(r21)
/* 8085F3C4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8085F3C8  C0 15 04 D8 */	lfs f0, 0x4d8(r21)
/* 8085F3CC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8085F3D0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8085F3D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8085F3D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8085F3DC  7E C3 B3 78 */	mr r3, r22
/* 8085F3E0  38 81 00 34 */	addi r4, r1, 0x34
/* 8085F3E4  4B A0 89 45 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8085F3E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085F3EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085F3F0  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 8085F3F4  7F 43 D3 78 */	mr r3, r26
/* 8085F3F8  7E C4 B3 78 */	mr r4, r22
/* 8085F3FC  4B 81 50 A5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8085F400  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8085F404  EF C1 00 2A */	fadds f30, f1, f0
/* 8085F408  C3 7C 04 D4 */	lfs f27, 0x4d4(r28)
/* 8085F40C  88 9C 05 7A */	lbz r4, 0x57a(r28)
/* 8085F410  28 04 00 FF */	cmplwi r4, 0xff
/* 8085F414  41 82 00 34 */	beq lbl_8085F448
/* 8085F418  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8085F41C  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8085F420  7C A5 07 74 */	extsb r5, r5
/* 8085F424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085F428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085F42C  4B 7D 5F 35 */	bl isSwitch__10dSv_info_cCFii
/* 8085F430  2C 03 00 00 */	cmpwi r3, 0
/* 8085F434  40 82 00 14 */	bne lbl_8085F448
/* 8085F438  38 00 00 00 */	li r0, 0
/* 8085F43C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085F440  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085F444  98 03 0E 90 */	stb r0, 0xe90(r3)
lbl_8085F448:
/* 8085F448  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 8085F44C  D0 1E 6D 74 */	stfs f0, 0x6d74(r30)
/* 8085F450  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 8085F454  D0 1E 6D 78 */	stfs f0, 0x6d78(r30)
/* 8085F458  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 8085F45C  D0 1E 6D 7C */	stfs f0, 0x6d7c(r30)
/* 8085F460  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8085F464  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085F468  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085F46C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085F470  4B 7F B6 71 */	bl dKyw_get_wind_vec__Fv
/* 8085F474  7C 7B 1B 78 */	mr r27, r3
/* 8085F478  4B 7F B6 79 */	bl dKyw_get_wind_pow__Fv
/* 8085F47C  FF E0 08 90 */	fmr f31, f1
/* 8085F480  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8085F484  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8085F488  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8085F48C  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085F490  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085F494  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8085F498  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8085F49C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8085F4A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8085F4A4  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8085F4A8  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8085F4AC  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 8085F4B0  4B AE 74 39 */	bl PSMTXTrans
/* 8085F4B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8085F4B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8085F4BC  A8 9C 04 E0 */	lha r4, 0x4e0(r28)
/* 8085F4C0  4B 7A D0 0D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8085F4C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8085F4C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8085F4CC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8085F4D0  4B 7A CF 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 8085F4D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8085F4D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8085F4DC  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 8085F4E0  4B 7A CE BD */	bl mDoMtx_XrotM__FPA4_fs
/* 8085F4E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8085F4E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8085F4EC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8085F4F0  38 A1 00 40 */	addi r5, r1, 0x40
/* 8085F4F4  4B AE 78 79 */	bl PSMTXMultVec
/* 8085F4F8  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8085F4FC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8085F500  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8085F504  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8085F508  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8085F50C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8085F510  38 61 00 40 */	addi r3, r1, 0x40
/* 8085F514  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8085F518  38 A1 00 64 */	addi r5, r1, 0x64
/* 8085F51C  4B 7F C2 45 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8085F520  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8085F524  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 8085F528  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085F52C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 8085F530  C8 1F 00 00 */	lfd f0, 0(r31)
/* 8085F534  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8085F538  C0 3D 00 EC */	lfs f1, 0xec(r29)
/* 8085F53C  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 8085F540  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085F544  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8085F548  38 61 00 88 */	addi r3, r1, 0x88
/* 8085F54C  38 81 00 28 */	addi r4, r1, 0x28
/* 8085F550  4B FF FC B1 */	bl vectle_calc__FP10DOUBLE_POSP4cXyz
/* 8085F554  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8085F558  FC 40 08 90 */	fmr f2, f1
/* 8085F55C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8085F560  FC 60 00 50 */	fneg f3, f0
/* 8085F564  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8085F568  FC 80 00 50 */	fneg f4, f0
/* 8085F56C  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 8085F570  C0 C1 00 30 */	lfs f6, 0x30(r1)
/* 8085F574  4B A0 93 21 */	bl cM3d_VectorProduct2d__Fffffff
/* 8085F578  D0 3E 6D 84 */	stfs f1, 0x6d84(r30)
/* 8085F57C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8085F580  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8085F584  EC 41 00 32 */	fmuls f2, f1, f0
/* 8085F588  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8085F58C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8085F590  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085F594  EC 02 00 2A */	fadds f0, f2, f0
/* 8085F598  FC 00 02 10 */	fabs f0, f0
/* 8085F59C  FC 60 00 18 */	frsp f3, f0
/* 8085F5A0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8085F5A4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8085F5A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8085F5AC  FC 00 02 10 */	fabs f0, f0
/* 8085F5B0  FC 80 00 18 */	frsp f4, f0
/* 8085F5B4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8085F5B8  EC 02 18 28 */	fsubs f0, f2, f3
/* 8085F5BC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8085F5C0  EC 02 20 28 */	fsubs f0, f2, f4
/* 8085F5C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085F5C8  D0 1E 6D 80 */	stfs f0, 0x6d80(r30)
/* 8085F5CC  C0 1E 6D 84 */	lfs f0, 0x6d84(r30)
/* 8085F5D0  FC 00 02 10 */	fabs f0, f0
/* 8085F5D4  FC 20 00 18 */	frsp f1, f0
/* 8085F5D8  C0 1E 6D 80 */	lfs f0, 0x6d80(r30)
/* 8085F5DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8085F5E0  D0 1E 6D 80 */	stfs f0, 0x6d80(r30)
/* 8085F5E4  A0 7C 05 7E */	lhz r3, 0x57e(r28)
/* 8085F5E8  3A E3 FF FF */	addi r23, r3, -1
/* 8085F5EC  3B 5A 3E C8 */	addi r26, r26, 0x3ec8
/* 8085F5F0  3C 60 80 86 */	lis r3, d_a_kytag13__stringBase0@ha /* 0x80860538@ha */
/* 8085F5F4  3B 63 05 38 */	addi r27, r3, d_a_kytag13__stringBase0@l /* 0x80860538@l */
/* 8085F5F8  C3 FF 00 2C */	lfs f31, 0x2c(r31)
/* 8085F5FC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8085F600  3A A3 0D 64 */	addi r21, r3, struct_80450D64+0x0@l /* 0x80450D64@l */
/* 8085F604  1E D7 00 38 */	mulli r22, r23, 0x38
/* 8085F608  48 00 0A E4 */	b lbl_808600EC
lbl_8085F60C:
/* 8085F60C  7F 43 D3 78 */	mr r3, r26
/* 8085F610  7F 64 DB 78 */	mr r4, r27
/* 8085F614  4B B0 93 81 */	bl strcmp
/* 8085F618  2C 03 00 00 */	cmpwi r3, 0
/* 8085F61C  40 82 00 34 */	bne lbl_8085F650
/* 8085F620  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8085F624  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8085F628  7C 00 07 75 */	extsb. r0, r0
/* 8085F62C  40 82 00 24 */	bne lbl_8085F650
/* 8085F630  2C 17 00 64 */	cmpwi r23, 0x64
/* 8085F634  40 82 00 1C */	bne lbl_8085F650
/* 8085F638  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8085F63C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8085F640  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8085F644  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8085F648  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8085F64C  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_8085F650:
/* 8085F650  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8085F654  4B A0 83 01 */	bl cM_rndF__Ff
/* 8085F658  EC 1F 08 2A */	fadds f0, f31, f1
/* 8085F65C  FF 80 00 50 */	fneg f28, f0
/* 8085F660  7F 3E B2 14 */	add r25, r30, r22
/* 8085F664  88 19 00 14 */	lbz r0, 0x14(r25)
/* 8085F668  7C 00 07 75 */	extsb. r0, r0
/* 8085F66C  41 82 00 14 */	beq lbl_8085F680
/* 8085F670  41 80 0A 18 */	blt lbl_80860088
/* 8085F674  2C 00 00 03 */	cmpwi r0, 3
/* 8085F678  40 80 0A 10 */	bge lbl_80860088
/* 8085F67C  48 00 02 98 */	b lbl_8085F914
lbl_8085F680:
/* 8085F680  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8085F684  4B A0 82 D1 */	bl cM_rndF__Ff
/* 8085F688  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8085F68C  C0 1C 05 74 */	lfs f0, 0x574(r28)
/* 8085F690  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085F694  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F698  D0 19 00 3C */	stfs f0, 0x3c(r25)
/* 8085F69C  D3 99 00 38 */	stfs f28, 0x38(r25)
/* 8085F6A0  38 00 00 00 */	li r0, 0
/* 8085F6A4  B0 19 00 48 */	sth r0, 0x48(r25)
/* 8085F6A8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085F6AC  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085F6B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F6B4  4B A0 82 D9 */	bl cM_rndFX__Ff
/* 8085F6B8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8085F6BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F6C0  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 8085F6C4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8085F6C8  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085F6CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F6D0  4B A0 82 85 */	bl cM_rndF__Ff
/* 8085F6D4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8085F6D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085F6DC  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 8085F6E0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085F6E4  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085F6E8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F6EC  4B A0 82 A1 */	bl cM_rndFX__Ff
/* 8085F6F0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8085F6F4  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F6F8  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 8085F6FC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085F700  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085F704  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F708  4B A0 82 85 */	bl cM_rndFX__Ff
/* 8085F70C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8085F710  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F714  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 8085F718  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8085F71C  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085F720  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F724  4B A0 82 31 */	bl cM_rndF__Ff
/* 8085F728  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8085F72C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085F730  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085F734  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085F738  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085F73C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F740  4B A0 82 4D */	bl cM_rndFX__Ff
/* 8085F744  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8085F748  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F74C  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085F750  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8085F754  D0 19 00 40 */	stfs f0, 0x40(r25)
/* 8085F758  D0 19 00 44 */	stfs f0, 0x44(r25)
/* 8085F75C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8085F760  4B A0 81 F5 */	bl cM_rndF__Ff
/* 8085F764  D0 39 00 30 */	stfs f1, 0x30(r25)
/* 8085F768  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8085F76C  4B A0 81 E9 */	bl cM_rndF__Ff
/* 8085F770  D0 39 00 34 */	stfs f1, 0x34(r25)
/* 8085F774  38 00 00 01 */	li r0, 1
/* 8085F778  98 19 00 14 */	stb r0, 0x14(r25)
/* 8085F77C  7F 43 D3 78 */	mr r3, r26
/* 8085F780  3C 80 80 86 */	lis r4, d_a_kytag13__stringBase0@ha /* 0x80860538@ha */
/* 8085F784  38 84 05 38 */	addi r4, r4, d_a_kytag13__stringBase0@l /* 0x80860538@l */
/* 8085F788  4B B0 92 0D */	bl strcmp
/* 8085F78C  2C 03 00 00 */	cmpwi r3, 0
/* 8085F790  40 82 08 F8 */	bne lbl_80860088
/* 8085F794  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8085F798  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8085F79C  7C 00 07 75 */	extsb. r0, r0
/* 8085F7A0  40 82 08 E8 */	bne lbl_80860088
/* 8085F7A4  2C 17 00 19 */	cmpwi r23, 0x19
/* 8085F7A8  40 80 00 5C */	bge lbl_8085F804
/* 8085F7AC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8085F7B0  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085F7B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F7B8  4B A0 81 D5 */	bl cM_rndFX__Ff
/* 8085F7BC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8085F7C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F7C4  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 8085F7C8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8085F7CC  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085F7D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F7D4  4B A0 81 81 */	bl cM_rndF__Ff
/* 8085F7D8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8085F7DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085F7E0  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085F7E4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8085F7E8  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085F7EC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F7F0  4B A0 81 9D */	bl cM_rndFX__Ff
/* 8085F7F4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8085F7F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F7FC  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085F800  48 00 08 88 */	b lbl_80860088
lbl_8085F804:
/* 8085F804  2C 17 00 32 */	cmpwi r23, 0x32
/* 8085F808  40 80 00 5C */	bge lbl_8085F864
/* 8085F80C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8085F810  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085F814  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F818  4B A0 81 75 */	bl cM_rndFX__Ff
/* 8085F81C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8085F820  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F824  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 8085F828  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8085F82C  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085F830  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F834  4B A0 81 21 */	bl cM_rndF__Ff
/* 8085F838  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8085F83C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085F840  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085F844  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8085F848  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085F84C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F850  4B A0 81 3D */	bl cM_rndFX__Ff
/* 8085F854  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8085F858  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F85C  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085F860  48 00 08 28 */	b lbl_80860088
lbl_8085F864:
/* 8085F864  2C 17 00 4B */	cmpwi r23, 0x4b
/* 8085F868  40 80 00 54 */	bge lbl_8085F8BC
/* 8085F86C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085F870  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085F874  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F878  4B A0 81 15 */	bl cM_rndFX__Ff
/* 8085F87C  D0 39 00 24 */	stfs f1, 0x24(r25)
/* 8085F880  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8085F884  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085F888  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F88C  4B A0 80 C9 */	bl cM_rndF__Ff
/* 8085F890  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8085F894  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085F898  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085F89C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8085F8A0  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085F8A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F8A8  4B A0 80 E5 */	bl cM_rndFX__Ff
/* 8085F8AC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8085F8B0  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F8B4  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085F8B8  48 00 07 D0 */	b lbl_80860088
lbl_8085F8BC:
/* 8085F8BC  2C 17 00 64 */	cmpwi r23, 0x64
/* 8085F8C0  40 80 07 C8 */	bge lbl_80860088
/* 8085F8C4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085F8C8  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085F8CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F8D0  4B A0 80 BD */	bl cM_rndFX__Ff
/* 8085F8D4  D0 39 00 24 */	stfs f1, 0x24(r25)
/* 8085F8D8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8085F8DC  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085F8E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F8E4  4B A0 80 71 */	bl cM_rndF__Ff
/* 8085F8E8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8085F8EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085F8F0  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085F8F4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8085F8F8  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085F8FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085F900  4B A0 80 8D */	bl cM_rndFX__Ff
/* 8085F904  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8085F908  EC 00 08 2A */	fadds f0, f0, f1
/* 8085F90C  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085F910  48 00 07 78 */	b lbl_80860088
lbl_8085F914:
/* 8085F914  FF 80 D8 90 */	fmr f28, f27
/* 8085F918  FF A0 D8 90 */	fmr f29, f27
/* 8085F91C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8085F920  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8085F924  7C 00 07 75 */	extsb. r0, r0
/* 8085F928  40 82 00 10 */	bne lbl_8085F938
/* 8085F92C  C3 9F 00 60 */	lfs f28, 0x60(r31)
/* 8085F930  FF A0 E0 90 */	fmr f29, f28
/* 8085F934  48 00 00 50 */	b lbl_8085F984
lbl_8085F938:
/* 8085F938  2C 00 00 06 */	cmpwi r0, 6
/* 8085F93C  40 82 00 10 */	bne lbl_8085F94C
/* 8085F940  C3 9F 00 64 */	lfs f28, 0x64(r31)
/* 8085F944  FF A0 E0 90 */	fmr f29, f28
/* 8085F948  48 00 00 3C */	b lbl_8085F984
lbl_8085F94C:
/* 8085F94C  2C 00 00 03 */	cmpwi r0, 3
/* 8085F950  40 82 00 10 */	bne lbl_8085F960
/* 8085F954  C3 9F 00 60 */	lfs f28, 0x60(r31)
/* 8085F958  FF A0 E0 90 */	fmr f29, f28
/* 8085F95C  48 00 00 28 */	b lbl_8085F984
lbl_8085F960:
/* 8085F960  2C 00 00 09 */	cmpwi r0, 9
/* 8085F964  40 82 00 10 */	bne lbl_8085F974
/* 8085F968  C3 9F 00 68 */	lfs f28, 0x68(r31)
/* 8085F96C  FF A0 E0 90 */	fmr f29, f28
/* 8085F970  48 00 00 14 */	b lbl_8085F984
lbl_8085F974:
/* 8085F974  2C 00 00 0D */	cmpwi r0, 0xd
/* 8085F978  40 82 00 0C */	bne lbl_8085F984
/* 8085F97C  C3 9F 00 08 */	lfs f28, 8(r31)
/* 8085F980  FF A0 E0 90 */	fmr f29, f28
lbl_8085F984:
/* 8085F984  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 8085F988  38 99 00 18 */	addi r4, r25, 0x18
/* 8085F98C  4B AE 7A 11 */	bl PSVECSquareDistance
/* 8085F990  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8085F994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085F998  40 81 00 58 */	ble lbl_8085F9F0
/* 8085F99C  FC 00 08 34 */	frsqrte f0, f1
/* 8085F9A0  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 8085F9A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8085F9A8  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 8085F9AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8085F9B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8085F9B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8085F9B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8085F9BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8085F9C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8085F9C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8085F9C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8085F9CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8085F9D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8085F9D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8085F9D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8085F9DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8085F9E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8085F9E4  FC 21 00 32 */	fmul f1, f1, f0
/* 8085F9E8  FC 20 08 18 */	frsp f1, f1
/* 8085F9EC  48 00 00 88 */	b lbl_8085FA74
lbl_8085F9F0:
/* 8085F9F0  C8 1F 00 00 */	lfd f0, 0(r31)
/* 8085F9F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085F9F8  40 80 00 10 */	bge lbl_8085FA08
/* 8085F9FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085FA00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085FA04  48 00 00 70 */	b lbl_8085FA74
lbl_8085FA08:
/* 8085FA08  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8085FA0C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8085FA10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085FA14  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085FA18  7C 03 00 00 */	cmpw r3, r0
/* 8085FA1C  41 82 00 14 */	beq lbl_8085FA30
/* 8085FA20  40 80 00 40 */	bge lbl_8085FA60
/* 8085FA24  2C 03 00 00 */	cmpwi r3, 0
/* 8085FA28  41 82 00 20 */	beq lbl_8085FA48
/* 8085FA2C  48 00 00 34 */	b lbl_8085FA60
lbl_8085FA30:
/* 8085FA30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085FA34  41 82 00 0C */	beq lbl_8085FA40
/* 8085FA38  38 00 00 01 */	li r0, 1
/* 8085FA3C  48 00 00 28 */	b lbl_8085FA64
lbl_8085FA40:
/* 8085FA40  38 00 00 02 */	li r0, 2
/* 8085FA44  48 00 00 20 */	b lbl_8085FA64
lbl_8085FA48:
/* 8085FA48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085FA4C  41 82 00 0C */	beq lbl_8085FA58
/* 8085FA50  38 00 00 05 */	li r0, 5
/* 8085FA54  48 00 00 10 */	b lbl_8085FA64
lbl_8085FA58:
/* 8085FA58  38 00 00 03 */	li r0, 3
/* 8085FA5C  48 00 00 08 */	b lbl_8085FA64
lbl_8085FA60:
/* 8085FA60  38 00 00 04 */	li r0, 4
lbl_8085FA64:
/* 8085FA64  2C 00 00 01 */	cmpwi r0, 1
/* 8085FA68  40 82 00 0C */	bne lbl_8085FA74
/* 8085FA6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085FA70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085FA74:
/* 8085FA74  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8085FA78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085FA7C  40 80 00 08 */	bge lbl_8085FA84
/* 8085FA80  FF 80 F0 90 */	fmr f28, f30
lbl_8085FA84:
/* 8085FA84  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 8085FA88  38 99 00 24 */	addi r4, r25, 0x24
/* 8085FA8C  4B AE 79 11 */	bl PSVECSquareDistance
/* 8085FA90  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8085FA94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085FA98  40 81 00 58 */	ble lbl_8085FAF0
/* 8085FA9C  FC 00 08 34 */	frsqrte f0, f1
/* 8085FAA0  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 8085FAA4  FC 44 00 32 */	fmul f2, f4, f0
/* 8085FAA8  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 8085FAAC  FC 00 00 32 */	fmul f0, f0, f0
/* 8085FAB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8085FAB4  FC 03 00 28 */	fsub f0, f3, f0
/* 8085FAB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8085FABC  FC 44 00 32 */	fmul f2, f4, f0
/* 8085FAC0  FC 00 00 32 */	fmul f0, f0, f0
/* 8085FAC4  FC 01 00 32 */	fmul f0, f1, f0
/* 8085FAC8  FC 03 00 28 */	fsub f0, f3, f0
/* 8085FACC  FC 02 00 32 */	fmul f0, f2, f0
/* 8085FAD0  FC 44 00 32 */	fmul f2, f4, f0
/* 8085FAD4  FC 00 00 32 */	fmul f0, f0, f0
/* 8085FAD8  FC 01 00 32 */	fmul f0, f1, f0
/* 8085FADC  FC 03 00 28 */	fsub f0, f3, f0
/* 8085FAE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8085FAE4  FC 21 00 32 */	fmul f1, f1, f0
/* 8085FAE8  FC 20 08 18 */	frsp f1, f1
/* 8085FAEC  48 00 00 88 */	b lbl_8085FB74
lbl_8085FAF0:
/* 8085FAF0  C8 1F 00 00 */	lfd f0, 0(r31)
/* 8085FAF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085FAF8  40 80 00 10 */	bge lbl_8085FB08
/* 8085FAFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085FB00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085FB04  48 00 00 70 */	b lbl_8085FB74
lbl_8085FB08:
/* 8085FB08  D0 21 00 08 */	stfs f1, 8(r1)
/* 8085FB0C  80 81 00 08 */	lwz r4, 8(r1)
/* 8085FB10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085FB14  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085FB18  7C 03 00 00 */	cmpw r3, r0
/* 8085FB1C  41 82 00 14 */	beq lbl_8085FB30
/* 8085FB20  40 80 00 40 */	bge lbl_8085FB60
/* 8085FB24  2C 03 00 00 */	cmpwi r3, 0
/* 8085FB28  41 82 00 20 */	beq lbl_8085FB48
/* 8085FB2C  48 00 00 34 */	b lbl_8085FB60
lbl_8085FB30:
/* 8085FB30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085FB34  41 82 00 0C */	beq lbl_8085FB40
/* 8085FB38  38 00 00 01 */	li r0, 1
/* 8085FB3C  48 00 00 28 */	b lbl_8085FB64
lbl_8085FB40:
/* 8085FB40  38 00 00 02 */	li r0, 2
/* 8085FB44  48 00 00 20 */	b lbl_8085FB64
lbl_8085FB48:
/* 8085FB48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085FB4C  41 82 00 0C */	beq lbl_8085FB58
/* 8085FB50  38 00 00 05 */	li r0, 5
/* 8085FB54  48 00 00 10 */	b lbl_8085FB64
lbl_8085FB58:
/* 8085FB58  38 00 00 03 */	li r0, 3
/* 8085FB5C  48 00 00 08 */	b lbl_8085FB64
lbl_8085FB60:
/* 8085FB60  38 00 00 04 */	li r0, 4
lbl_8085FB64:
/* 8085FB64  2C 00 00 01 */	cmpwi r0, 1
/* 8085FB68  40 82 00 0C */	bne lbl_8085FB74
/* 8085FB6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085FB70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085FB74:
/* 8085FB74  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8085FB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085FB7C  40 80 00 08 */	bge lbl_8085FB84
/* 8085FB80  FF A0 F0 90 */	fmr f29, f30
lbl_8085FB84:
/* 8085FB84  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8085FB88  4B A0 7E 05 */	bl cM_rndFX__Ff
/* 8085FB8C  3B 19 00 3C */	addi r24, r25, 0x3c
/* 8085FB90  C0 19 00 3C */	lfs f0, 0x3c(r25)
/* 8085FB94  EC 20 08 28 */	fsubs f1, f0, f1
/* 8085FB98  7F 03 C3 78 */	mr r3, r24
/* 8085FB9C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 8085FBA0  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 8085FBA4  C0 9F 00 8C */	lfs f4, 0x8c(r31)
/* 8085FBA8  4B A0 FD D5 */	bl cLib_addCalc__FPfffff
/* 8085FBAC  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 8085FBB0  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 8085FBB4  40 81 00 E4 */	ble lbl_8085FC98
/* 8085FBB8  C0 19 00 30 */	lfs f0, 0x30(r25)
/* 8085FBBC  FC 00 00 1E */	fctiwz f0, f0
/* 8085FBC0  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 8085FBC4  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 8085FBC8  C0 19 00 34 */	lfs f0, 0x34(r25)
/* 8085FBCC  FC 00 00 1E */	fctiwz f0, f0
/* 8085FBD0  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 8085FBD4  80 C1 01 04 */	lwz r6, 0x104(r1)
/* 8085FBD8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8085FBDC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8085FBE0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8085FBE4  7C 83 02 14 */	add r4, r3, r0
/* 8085FBE8  C0 24 00 04 */	lfs f1, 4(r4)
/* 8085FBEC  54 C0 04 38 */	rlwinm r0, r6, 0, 0x10, 0x1c
/* 8085FBF0  7C 63 02 14 */	add r3, r3, r0
/* 8085FBF4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8085FBF8  EC C1 00 32 */	fmuls f6, f1, f0
/* 8085FBFC  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 8085FC00  C0 A4 00 00 */	lfs f5, 0(r4)
/* 8085FC04  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8085FC08  C0 03 00 04 */	lfs f0, 4(r3)
/* 8085FC0C  EC 81 00 32 */	fmuls f4, f1, f0
/* 8085FC10  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8085FC14  C0 59 00 18 */	lfs f2, 0x18(r25)
/* 8085FC18  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8085FC1C  C0 18 00 00 */	lfs f0, 0(r24)
/* 8085FC20  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085FC24  EC 02 00 2A */	fadds f0, f2, f0
/* 8085FC28  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 8085FC2C  C0 59 00 20 */	lfs f2, 0x20(r25)
/* 8085FC30  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8085FC34  C0 18 00 00 */	lfs f0, 0(r24)
/* 8085FC38  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085FC3C  EC 02 00 2A */	fadds f0, f2, f0
/* 8085FC40  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 8085FC44  C0 79 00 1C */	lfs f3, 0x1c(r25)
/* 8085FC48  C0 59 00 38 */	lfs f2, 0x38(r25)
/* 8085FC4C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8085FC50  C0 18 00 00 */	lfs f0, 0(r24)
/* 8085FC54  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085FC58  EC 02 00 2A */	fadds f0, f2, f0
/* 8085FC5C  EC 03 00 2A */	fadds f0, f3, f0
/* 8085FC60  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 8085FC64  C0 39 00 18 */	lfs f1, 0x18(r25)
/* 8085FC68  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8085FC6C  EC 02 01 B2 */	fmuls f0, f2, f6
/* 8085FC70  EC 01 00 2A */	fadds f0, f1, f0
/* 8085FC74  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 8085FC78  C0 39 00 1C */	lfs f1, 0x1c(r25)
/* 8085FC7C  EC 02 01 72 */	fmuls f0, f2, f5
/* 8085FC80  EC 01 00 2A */	fadds f0, f1, f0
/* 8085FC84  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 8085FC88  C0 39 00 20 */	lfs f1, 0x20(r25)
/* 8085FC8C  EC 02 01 32 */	fmuls f0, f2, f4
/* 8085FC90  EC 01 00 2A */	fadds f0, f1, f0
/* 8085FC94  D0 19 00 20 */	stfs f0, 0x20(r25)
lbl_8085FC98:
/* 8085FC98  C0 19 00 28 */	lfs f0, 0x28(r25)
/* 8085FC9C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8085FCA0  40 81 00 94 */	ble lbl_8085FD34
/* 8085FCA4  C0 59 00 24 */	lfs f2, 0x24(r25)
/* 8085FCA8  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8085FCAC  C0 18 00 00 */	lfs f0, 0(r24)
/* 8085FCB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085FCB4  EC 02 00 2A */	fadds f0, f2, f0
/* 8085FCB8  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 8085FCBC  C0 59 00 2C */	lfs f2, 0x2c(r25)
/* 8085FCC0  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8085FCC4  C0 18 00 00 */	lfs f0, 0(r24)
/* 8085FCC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085FCCC  EC 02 00 2A */	fadds f0, f2, f0
/* 8085FCD0  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085FCD4  C0 79 00 28 */	lfs f3, 0x28(r25)
/* 8085FCD8  C0 59 00 38 */	lfs f2, 0x38(r25)
/* 8085FCDC  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8085FCE0  C0 18 00 00 */	lfs f0, 0(r24)
/* 8085FCE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085FCE8  EC 02 00 2A */	fadds f0, f2, f0
/* 8085FCEC  EC 03 00 2A */	fadds f0, f3, f0
/* 8085FCF0  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085FCF4  C0 39 00 24 */	lfs f1, 0x24(r25)
/* 8085FCF8  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8085FCFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8085FD00  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085FD04  EC 01 00 2A */	fadds f0, f1, f0
/* 8085FD08  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 8085FD0C  C0 39 00 28 */	lfs f1, 0x28(r25)
/* 8085FD10  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8085FD14  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085FD18  EC 01 00 2A */	fadds f0, f1, f0
/* 8085FD1C  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085FD20  C0 39 00 2C */	lfs f1, 0x2c(r25)
/* 8085FD24  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8085FD28  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085FD2C  EC 01 00 2A */	fadds f0, f1, f0
/* 8085FD30  D0 19 00 2C */	stfs f0, 0x2c(r25)
lbl_8085FD34:
/* 8085FD34  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8085FD38  4B A0 7C 1D */	bl cM_rndF__Ff
/* 8085FD3C  C0 19 00 30 */	lfs f0, 0x30(r25)
/* 8085FD40  EC 20 08 2A */	fadds f1, f0, f1
/* 8085FD44  38 79 00 30 */	addi r3, r25, 0x30
/* 8085FD48  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 8085FD4C  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 8085FD50  C0 9F 00 A4 */	lfs f4, 0xa4(r31)
/* 8085FD54  4B A0 FC 29 */	bl cLib_addCalc__FPfffff
/* 8085FD58  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8085FD5C  4B A0 7B F9 */	bl cM_rndF__Ff
/* 8085FD60  C0 19 00 34 */	lfs f0, 0x34(r25)
/* 8085FD64  EC 20 08 2A */	fadds f1, f0, f1
/* 8085FD68  38 79 00 34 */	addi r3, r25, 0x34
/* 8085FD6C  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 8085FD70  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 8085FD74  C0 9F 00 A4 */	lfs f4, 0xa4(r31)
/* 8085FD78  4B A0 FC 05 */	bl cLib_addCalc__FPfffff
/* 8085FD7C  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 8085FD80  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8085FD84  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 8085FD88  40 80 00 10 */	bge lbl_8085FD98
/* 8085FD8C  D3 99 00 1C */	stfs f28, 0x1c(r25)
/* 8085FD90  38 00 00 02 */	li r0, 2
/* 8085FD94  98 19 00 14 */	stb r0, 0x14(r25)
lbl_8085FD98:
/* 8085FD98  C0 19 00 28 */	lfs f0, 0x28(r25)
/* 8085FD9C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8085FDA0  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8085FDA4  40 80 00 10 */	bge lbl_8085FDB4
/* 8085FDA8  D3 B9 00 28 */	stfs f29, 0x28(r25)
/* 8085FDAC  38 00 00 02 */	li r0, 2
/* 8085FDB0  98 19 00 14 */	stb r0, 0x14(r25)
lbl_8085FDB4:
/* 8085FDB4  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 8085FDB8  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 8085FDBC  40 82 00 90 */	bne lbl_8085FE4C
/* 8085FDC0  38 79 00 40 */	addi r3, r25, 0x40
/* 8085FDC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8085FDC8  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 8085FDCC  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 8085FDD0  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 8085FDD4  4B A0 FB A9 */	bl cLib_addCalc__FPfffff
/* 8085FDD8  C0 39 00 40 */	lfs f1, 0x40(r25)
/* 8085FDDC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8085FDE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085FDE4  4C 40 13 82 */	cror 2, 0, 2
/* 8085FDE8  40 82 00 6C */	bne lbl_8085FE54
/* 8085FDEC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085FDF0  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085FDF4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FDF8  4B A0 7B 95 */	bl cM_rndFX__Ff
/* 8085FDFC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8085FE00  EC 00 08 2A */	fadds f0, f0, f1
/* 8085FE04  D0 19 00 18 */	stfs f0, 0x18(r25)
/* 8085FE08  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8085FE0C  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085FE10  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FE14  4B A0 7B 41 */	bl cM_rndF__Ff
/* 8085FE18  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8085FE1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085FE20  D0 19 00 1C */	stfs f0, 0x1c(r25)
/* 8085FE24  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085FE28  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085FE2C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FE30  4B A0 7B 5D */	bl cM_rndFX__Ff
/* 8085FE34  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8085FE38  EC 00 08 2A */	fadds f0, f0, f1
/* 8085FE3C  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 8085FE40  38 00 00 01 */	li r0, 1
/* 8085FE44  98 19 00 14 */	stb r0, 0x14(r25)
/* 8085FE48  48 00 00 0C */	b lbl_8085FE54
lbl_8085FE4C:
/* 8085FE4C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8085FE50  D0 19 00 40 */	stfs f0, 0x40(r25)
lbl_8085FE54:
/* 8085FE54  C0 19 00 28 */	lfs f0, 0x28(r25)
/* 8085FE58  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 8085FE5C  40 82 02 24 */	bne lbl_80860080
/* 8085FE60  38 79 00 44 */	addi r3, r25, 0x44
/* 8085FE64  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8085FE68  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 8085FE6C  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 8085FE70  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 8085FE74  4B A0 FB 09 */	bl cLib_addCalc__FPfffff
/* 8085FE78  C0 39 00 44 */	lfs f1, 0x44(r25)
/* 8085FE7C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8085FE80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085FE84  4C 40 13 82 */	cror 2, 0, 2
/* 8085FE88  40 82 02 00 */	bne lbl_80860088
/* 8085FE8C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085FE90  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085FE94  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FE98  4B A0 7A F5 */	bl cM_rndFX__Ff
/* 8085FE9C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8085FEA0  EC 00 08 2A */	fadds f0, f0, f1
/* 8085FEA4  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 8085FEA8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8085FEAC  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085FEB0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FEB4  4B A0 7A A1 */	bl cM_rndF__Ff
/* 8085FEB8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8085FEBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085FEC0  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085FEC4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085FEC8  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085FECC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FED0  4B A0 7A BD */	bl cM_rndFX__Ff
/* 8085FED4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8085FED8  EC 00 08 2A */	fadds f0, f0, f1
/* 8085FEDC  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085FEE0  7F 43 D3 78 */	mr r3, r26
/* 8085FEE4  3C 80 80 86 */	lis r4, d_a_kytag13__stringBase0@ha /* 0x80860538@ha */
/* 8085FEE8  38 84 05 38 */	addi r4, r4, d_a_kytag13__stringBase0@l /* 0x80860538@l */
/* 8085FEEC  4B B0 8A A9 */	bl strcmp
/* 8085FEF0  2C 03 00 00 */	cmpwi r3, 0
/* 8085FEF4  40 82 01 80 */	bne lbl_80860074
/* 8085FEF8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8085FEFC  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8085FF00  7C 00 07 75 */	extsb. r0, r0
/* 8085FF04  40 82 01 70 */	bne lbl_80860074
/* 8085FF08  2C 17 00 14 */	cmpwi r23, 0x14
/* 8085FF0C  40 80 00 5C */	bge lbl_8085FF68
/* 8085FF10  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8085FF14  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085FF18  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FF1C  4B A0 7A 71 */	bl cM_rndFX__Ff
/* 8085FF20  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8085FF24  EC 00 08 2A */	fadds f0, f0, f1
/* 8085FF28  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 8085FF2C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8085FF30  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085FF34  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FF38  4B A0 7A 1D */	bl cM_rndF__Ff
/* 8085FF3C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8085FF40  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085FF44  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085FF48  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8085FF4C  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085FF50  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FF54  4B A0 7A 39 */	bl cM_rndFX__Ff
/* 8085FF58  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8085FF5C  EC 00 08 2A */	fadds f0, f0, f1
/* 8085FF60  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085FF64  48 00 01 10 */	b lbl_80860074
lbl_8085FF68:
/* 8085FF68  2C 17 00 32 */	cmpwi r23, 0x32
/* 8085FF6C  40 80 00 5C */	bge lbl_8085FFC8
/* 8085FF70  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8085FF74  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085FF78  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FF7C  4B A0 7A 11 */	bl cM_rndFX__Ff
/* 8085FF80  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8085FF84  EC 00 08 2A */	fadds f0, f0, f1
/* 8085FF88  D0 19 00 24 */	stfs f0, 0x24(r25)
/* 8085FF8C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8085FF90  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085FF94  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FF98  4B A0 79 BD */	bl cM_rndF__Ff
/* 8085FF9C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8085FFA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085FFA4  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 8085FFA8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8085FFAC  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8085FFB0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FFB4  4B A0 79 D9 */	bl cM_rndFX__Ff
/* 8085FFB8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8085FFBC  EC 00 08 2A */	fadds f0, f0, f1
/* 8085FFC0  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8085FFC4  48 00 00 B0 */	b lbl_80860074
lbl_8085FFC8:
/* 8085FFC8  2C 17 00 4B */	cmpwi r23, 0x4b
/* 8085FFCC  40 80 00 54 */	bge lbl_80860020
/* 8085FFD0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085FFD4  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8085FFD8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FFDC  4B A0 79 B1 */	bl cM_rndFX__Ff
/* 8085FFE0  D0 39 00 24 */	stfs f1, 0x24(r25)
/* 8085FFE4  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8085FFE8  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 8085FFEC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085FFF0  4B A0 79 65 */	bl cM_rndF__Ff
/* 8085FFF4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8085FFF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8085FFFC  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 80860000  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80860004  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 80860008  EC 21 00 32 */	fmuls f1, f1, f0
/* 8086000C  4B A0 79 81 */	bl cM_rndFX__Ff
/* 80860010  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80860014  EC 00 08 2A */	fadds f0, f0, f1
/* 80860018  D0 19 00 2C */	stfs f0, 0x2c(r25)
/* 8086001C  48 00 00 58 */	b lbl_80860074
lbl_80860020:
/* 80860020  2C 17 00 64 */	cmpwi r23, 0x64
/* 80860024  40 80 00 50 */	bge lbl_80860074
/* 80860028  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8086002C  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 80860030  EC 21 00 32 */	fmuls f1, f1, f0
/* 80860034  4B A0 79 59 */	bl cM_rndFX__Ff
/* 80860038  D0 39 00 24 */	stfs f1, 0x24(r25)
/* 8086003C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80860040  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 80860044  EC 21 00 32 */	fmuls f1, f1, f0
/* 80860048  4B A0 79 0D */	bl cM_rndF__Ff
/* 8086004C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80860050  EC 00 08 28 */	fsubs f0, f0, f1
/* 80860054  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 80860058  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8086005C  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 80860060  EC 21 00 32 */	fmuls f1, f1, f0
/* 80860064  4B A0 79 29 */	bl cM_rndFX__Ff
/* 80860068  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8086006C  EC 00 08 2A */	fadds f0, f0, f1
/* 80860070  D0 19 00 2C */	stfs f0, 0x2c(r25)
lbl_80860074:
/* 80860074  38 00 00 01 */	li r0, 1
/* 80860078  98 19 00 14 */	stb r0, 0x14(r25)
/* 8086007C  48 00 00 0C */	b lbl_80860088
lbl_80860080:
/* 80860080  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80860084  D0 19 00 44 */	stfs f0, 0x44(r25)
lbl_80860088:
/* 80860088  88 15 00 00 */	lbz r0, 0(r21)
/* 8086008C  2C 00 00 05 */	cmpwi r0, 5
/* 80860090  40 82 00 54 */	bne lbl_808600E4
/* 80860094  C0 39 00 2C */	lfs f1, 0x2c(r25)
/* 80860098  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8086009C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808600A0  40 81 00 1C */	ble lbl_808600BC
/* 808600A4  C0 39 00 28 */	lfs f1, 0x28(r25)
/* 808600A8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 808600AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808600B0  40 80 00 0C */	bge lbl_808600BC
/* 808600B4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 808600B8  D0 19 00 44 */	stfs f0, 0x44(r25)
lbl_808600BC:
/* 808600BC  C0 39 00 20 */	lfs f1, 0x20(r25)
/* 808600C0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 808600C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808600C8  40 81 00 1C */	ble lbl_808600E4
/* 808600CC  C0 39 00 1C */	lfs f1, 0x1c(r25)
/* 808600D0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 808600D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808600D8  40 80 00 0C */	bge lbl_808600E4
/* 808600DC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 808600E0  D0 19 00 40 */	stfs f0, 0x40(r25)
lbl_808600E4:
/* 808600E4  3A F7 FF FF */	addi r23, r23, -1
/* 808600E8  3A D6 FF C8 */	addi r22, r22, -56
lbl_808600EC:
/* 808600EC  A0 1C 05 7C */	lhz r0, 0x57c(r28)
/* 808600F0  7C 17 00 00 */	cmpw r23, r0
/* 808600F4  40 80 F5 18 */	bge lbl_8085F60C
/* 808600F8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 808600FC  38 80 FF FF */	li r4, -1
/* 80860100  4B 81 77 E9 */	bl __dt__18dBgS_ObjGndChk_AllFv
/* 80860104  38 60 00 01 */	li r3, 1
lbl_80860108:
/* 80860108  E3 E1 01 88 */	psq_l f31, 392(r1), 0, 0 /* qr0 */
/* 8086010C  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 80860110  E3 C1 01 78 */	psq_l f30, 376(r1), 0, 0 /* qr0 */
/* 80860114  CB C1 01 70 */	lfd f30, 0x170(r1)
/* 80860118  E3 A1 01 68 */	psq_l f29, 360(r1), 0, 0 /* qr0 */
/* 8086011C  CB A1 01 60 */	lfd f29, 0x160(r1)
/* 80860120  E3 81 01 58 */	psq_l f28, 344(r1), 0, 0 /* qr0 */
/* 80860124  CB 81 01 50 */	lfd f28, 0x150(r1)
/* 80860128  E3 61 01 48 */	psq_l f27, 328(r1), 0, 0 /* qr0 */
/* 8086012C  CB 61 01 40 */	lfd f27, 0x140(r1)
/* 80860130  39 61 01 40 */	addi r11, r1, 0x140
/* 80860134  4B B0 20 D5 */	bl _restgpr_21
/* 80860138  80 01 01 94 */	lwz r0, 0x194(r1)
/* 8086013C  7C 08 03 A6 */	mtlr r0
/* 80860140  38 21 01 90 */	addi r1, r1, 0x190
/* 80860144  4E 80 00 20 */	blr 
