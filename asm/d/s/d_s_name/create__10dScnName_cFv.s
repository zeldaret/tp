lbl_802588A0:
/* 802588A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802588A4  7C 08 02 A6 */	mflr r0
/* 802588A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 802588AC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802588B0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802588B4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802588B8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802588BC  39 61 00 30 */	addi r11, r1, 0x30
/* 802588C0  48 10 99 19 */	bl _savegpr_28
/* 802588C4  7C 7D 1B 78 */	mr r29, r3
/* 802588C8  38 7D 01 C4 */	addi r3, r29, 0x1c4
/* 802588CC  3C 80 80 3A */	lis r4, d_s_d_s_name__stringBase0@ha
/* 802588D0  38 84 A2 A8 */	addi r4, r4, d_s_d_s_name__stringBase0@l
/* 802588D4  38 84 00 0D */	addi r4, r4, 0xd
/* 802588D8  4B FF FF A1 */	bl resLoad__FP30request_of_phase_process_classPc
/* 802588DC  7C 7E 1B 78 */	mr r30, r3
/* 802588E0  2C 1E 00 04 */	cmpwi r30, 4
/* 802588E4  40 82 02 1C */	bne lbl_80258B00
/* 802588E8  4B DB 64 69 */	bl mDoExt_getGameHeap__Fv
/* 802588EC  7C 64 1B 78 */	mr r4, r3
/* 802588F0  3C 60 00 18 */	lis r3, 0x18
/* 802588F4  38 A0 00 00 */	li r5, 0
/* 802588F8  48 07 65 35 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 802588FC  90 7D 01 CC */	stw r3, 0x1cc(r29)
/* 80258900  80 7D 01 CC */	lwz r3, 0x1cc(r29)
/* 80258904  4B DB 68 C9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80258908  90 7D 01 D0 */	stw r3, 0x1d0(r29)
/* 8025890C  3C 60 80 3A */	lis r3, d_s_d_s_name__stringBase0@ha
/* 80258910  38 63 A2 A8 */	addi r3, r3, d_s_d_s_name__stringBase0@l
/* 80258914  38 63 00 0D */	addi r3, r3, 0xd
/* 80258918  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8025891C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80258920  3C 84 00 02 */	addis r4, r4, 2
/* 80258924  38 A0 00 80 */	li r5, 0x80
/* 80258928  38 84 C2 F8 */	addi r4, r4, -15624
/* 8025892C  4B DE 38 B9 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 80258930  7C 7F 1B 78 */	mr r31, r3
/* 80258934  38 60 23 7C */	li r3, 0x237c
/* 80258938  48 07 63 15 */	bl __nw__FUl
/* 8025893C  7C 60 1B 79 */	or. r0, r3, r3
/* 80258940  41 82 00 10 */	beq lbl_80258950
/* 80258944  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80258948  4B F2 AD 25 */	bl __ct__14dFile_select_cFP10JKRArchive
/* 8025894C  7C 60 1B 78 */	mr r0, r3
lbl_80258950:
/* 80258950  90 1D 04 14 */	stw r0, 0x414(r29)
/* 80258954  80 7D 04 14 */	lwz r3, 0x414(r29)
/* 80258958  4B F2 BA 75 */	bl _create__14dFile_select_cFv
/* 8025895C  A8 1D 00 08 */	lha r0, 8(r29)
/* 80258960  2C 00 00 0D */	cmpwi r0, 0xd
/* 80258964  40 82 00 1C */	bne lbl_80258980
/* 80258968  38 00 00 00 */	li r0, 0
/* 8025896C  80 7D 04 14 */	lwz r3, 0x414(r29)
/* 80258970  98 03 03 B0 */	stb r0, 0x3b0(r3)
/* 80258974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80258978  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025897C  98 03 0F 1A */	stb r0, 0xf1a(r3)
lbl_80258980:
/* 80258980  38 60 00 1C */	li r3, 0x1c
/* 80258984  48 07 62 C9 */	bl __nw__FUl
/* 80258988  7C 60 1B 79 */	or. r0, r3, r3
/* 8025898C  41 82 00 10 */	beq lbl_8025899C
/* 80258990  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80258994  4B F3 A5 7D */	bl __ct__14dBrightCheck_cFP10JKRArchive
/* 80258998  7C 60 1B 78 */	mr r0, r3
lbl_8025899C:
/* 8025899C  90 1D 04 18 */	stw r0, 0x418(r29)
/* 802589A0  38 00 00 00 */	li r0, 0
/* 802589A4  98 1D 04 20 */	stb r0, 0x420(r29)
/* 802589A8  38 00 FF FF */	li r0, -1
/* 802589AC  38 6D 8B 70 */	la r3, g_snHIO(r13) /* 804510F0-_SDA_BASE_ */
/* 802589B0  98 03 00 04 */	stb r0, 4(r3)
/* 802589B4  80 7D 01 D0 */	lwz r3, 0x1d0(r29)
/* 802589B8  48 07 5A 81 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802589BC  38 00 00 01 */	li r0, 1
/* 802589C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802589C4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 802589C8  98 1F 5D 44 */	stb r0, 0x5d44(r31)
/* 802589CC  80 8D 80 20 */	lwz r4, mRenderModeObj__15mDoMch_render_c(r13)
/* 802589D0  A0 04 00 06 */	lhz r0, 6(r4)
/* 802589D4  C8 22 B5 10 */	lfd f1, lit_3930(r2)
/* 802589D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802589DC  3C 60 43 30 */	lis r3, 0x4330
/* 802589E0  90 61 00 08 */	stw r3, 8(r1)
/* 802589E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802589E8  EF C0 08 28 */	fsubs f30, f0, f1
/* 802589EC  A0 04 00 04 */	lhz r0, 4(r4)
/* 802589F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802589F4  90 61 00 10 */	stw r3, 0x10(r1)
/* 802589F8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802589FC  EF E0 08 28 */	fsubs f31, f0, f1
/* 80258A00  3B 9F 5D 48 */	addi r28, r31, 0x5d48
/* 80258A04  7F 83 E3 78 */	mr r3, r28
/* 80258A08  C0 22 B4 F8 */	lfs f1, lit_3923(r2)
/* 80258A0C  FC 40 08 90 */	fmr f2, f1
/* 80258A10  FC 60 F8 90 */	fmr f3, f31
/* 80258A14  FC 80 F0 90 */	fmr f4, f30
/* 80258A18  FC A0 08 90 */	fmr f5, f1
/* 80258A1C  C0 C2 B4 FC */	lfs f6, lit_3924(r2)
/* 80258A20  4B DF 90 A1 */	bl setViewPort__14dDlst_window_cFffffff
/* 80258A24  7F 83 E3 78 */	mr r3, r28
/* 80258A28  C0 22 B4 F8 */	lfs f1, lit_3923(r2)
/* 80258A2C  FC 40 08 90 */	fmr f2, f1
/* 80258A30  FC 60 F8 90 */	fmr f3, f31
/* 80258A34  FC 80 F0 90 */	fmr f4, f30
/* 80258A38  4B DF 90 A5 */	bl setScissor__14dDlst_window_cFffff
/* 80258A3C  38 80 00 00 */	li r4, 0
/* 80258A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80258A44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80258A48  98 83 5D 70 */	stb r4, 0x5d70(r3)
/* 80258A4C  38 00 00 02 */	li r0, 2
/* 80258A50  98 03 5D 71 */	stb r0, 0x5d71(r3)
/* 80258A54  38 1D 01 D4 */	addi r0, r29, 0x1d4
/* 80258A58  90 03 5D 74 */	stw r0, 0x5d74(r3)
/* 80258A5C  C0 02 B4 FC */	lfs f0, lit_3924(r2)
/* 80258A60  D0 1D 02 9C */	stfs f0, 0x29c(r29)
/* 80258A64  C0 02 B5 00 */	lfs f0, lit_3925(r2)
/* 80258A68  D0 1D 02 A0 */	stfs f0, 0x2a0(r29)
/* 80258A6C  C0 02 B5 04 */	lfs f0, lit_3926(r2)
/* 80258A70  D0 1D 02 A4 */	stfs f0, 0x2a4(r29)
/* 80258A74  C0 02 B5 08 */	lfs f0, lit_3927(r2)
/* 80258A78  D0 1D 02 A8 */	stfs f0, 0x2a8(r29)
/* 80258A7C  C0 22 B4 F8 */	lfs f1, lit_3923(r2)
/* 80258A80  D0 3D 02 AC */	stfs f1, 0x2ac(r29)
/* 80258A84  D0 3D 02 B0 */	stfs f1, 0x2b0(r29)
/* 80258A88  C0 02 B5 0C */	lfs f0, lit_3928(r2)
/* 80258A8C  D0 1D 02 B4 */	stfs f0, 0x2b4(r29)
/* 80258A90  D0 3D 02 B8 */	stfs f1, 0x2b8(r29)
/* 80258A94  D0 3D 02 BC */	stfs f1, 0x2bc(r29)
/* 80258A98  D0 3D 02 C0 */	stfs f1, 0x2c0(r29)
/* 80258A9C  B0 9D 02 D0 */	sth r4, 0x2d0(r29)
/* 80258AA0  90 83 5D AC */	stw r4, 0x5dac(r3)
/* 80258AA4  93 83 61 A8 */	stw r28, 0x61a8(r3)
/* 80258AA8  93 83 61 AC */	stw r28, 0x61ac(r3)
/* 80258AAC  90 03 61 B0 */	stw r0, 0x61b0(r3)
/* 80258AB0  98 8D 86 67 */	stb r4, struct_80450BE4+0x3(r13)
/* 80258AB4  7F A3 EB 78 */	mr r3, r29
/* 80258AB8  48 00 00 75 */	bl setView__10dScnName_cFv
/* 80258ABC  4B F4 D3 99 */	bl dKy_setLight_init__Fv
/* 80258AC0  38 6D 8B 70 */	la r3, g_snHIO(r13) /* 804510F0-_SDA_BASE_ */
/* 80258AC4  88 03 00 05 */	lbz r0, 5(r3)
/* 80258AC8  98 1D 04 1E */	stb r0, 0x41e(r29)
/* 80258ACC  38 80 00 00 */	li r4, 0
/* 80258AD0  98 9D 04 1C */	stb r4, 0x41c(r29)
/* 80258AD4  98 9D 04 1D */	stb r4, 0x41d(r29)
/* 80258AD8  80 AD 8C 40 */	lwz r5, sManager__10JFWDisplay(r13)
/* 80258ADC  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80258AE0  80 03 00 F8 */	lwz r0, 0x00F8(r3)
/* 80258AE4  54 03 F0 BE */	srwi r3, r0, 2
/* 80258AE8  38 00 00 1E */	li r0, 0x1e
/* 80258AEC  7C 03 03 96 */	divwu r0, r3, r0
/* 80258AF0  90 05 00 20 */	stw r0, 0x20(r5)
/* 80258AF4  B0 85 00 1C */	sth r4, 0x1c(r5)
/* 80258AF8  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 80258AFC  4B E1 74 09 */	bl Init__12dVibration_cFv
lbl_80258B00:
/* 80258B00  7F C3 F3 78 */	mr r3, r30
/* 80258B04  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80258B08  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80258B0C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80258B10  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80258B14  39 61 00 30 */	addi r11, r1, 0x30
/* 80258B18  48 10 97 0D */	bl _restgpr_28
/* 80258B1C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80258B20  7C 08 03 A6 */	mtlr r0
/* 80258B24  38 21 00 50 */	addi r1, r1, 0x50
/* 80258B28  4E 80 00 20 */	blr 
