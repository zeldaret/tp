lbl_80B39F88:
/* 80B39F88  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80B39F8C  7C 08 02 A6 */	mflr r0
/* 80B39F90  90 01 01 04 */	stw r0, 0x104(r1)
/* 80B39F94  39 61 01 00 */	addi r11, r1, 0x100
/* 80B39F98  4B 82 82 3C */	b _savegpr_27
/* 80B39F9C  7C 7F 1B 78 */	mr r31, r3
/* 80B39FA0  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha
/* 80B39FA4  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l
/* 80B39FA8  4B 64 76 98 */	b dCam_getBody__Fv
/* 80B39FAC  7C 7D 1B 78 */	mr r29, r3
/* 80B39FB0  A0 1F 0E 96 */	lhz r0, 0xe96(r31)
/* 80B39FB4  2C 00 00 02 */	cmpwi r0, 2
/* 80B39FB8  41 82 02 5C */	beq lbl_80B3A214
/* 80B39FBC  40 80 0E 4C */	bge lbl_80B3AE08
/* 80B39FC0  2C 00 00 00 */	cmpwi r0, 0
/* 80B39FC4  41 82 00 0C */	beq lbl_80B39FD0
/* 80B39FC8  48 00 0E 40 */	b lbl_80B3AE08
/* 80B39FCC  48 00 0E 3C */	b lbl_80B3AE08
lbl_80B39FD0:
/* 80B39FD0  38 00 00 00 */	li r0, 0
/* 80B39FD4  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B39FD8  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B39FDC  2C 00 00 01 */	cmpwi r0, 1
/* 80B39FE0  41 82 00 34 */	beq lbl_80B3A014
/* 80B39FE4  40 80 00 4C */	bge lbl_80B3A030
/* 80B39FE8  2C 00 00 00 */	cmpwi r0, 0
/* 80B39FEC  40 80 00 08 */	bge lbl_80B39FF4
/* 80B39FF0  48 00 00 40 */	b lbl_80B3A030
lbl_80B39FF4:
/* 80B39FF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B39FF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B39FFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B3A000  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B3A004  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002B@ha */
/* 80B3A008  38 84 00 2B */	addi r4, r4, 0x002B /* 0x0100002B@l */
/* 80B3A00C  4B 77 54 90 */	b subBgmStart__8Z2SeqMgrFUl
/* 80B3A010  48 00 00 20 */	b lbl_80B3A030
lbl_80B3A014:
/* 80B3A014  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B3A018  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B3A01C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B3A020  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B3A024  3C 80 01 00 */	lis r4, 0x0100 /* 0x010000A7@ha */
/* 80B3A028  38 84 00 A7 */	addi r4, r4, 0x00A7 /* 0x010000A7@l */
/* 80B3A02C  4B 77 54 70 */	b subBgmStart__8Z2SeqMgrFUl
lbl_80B3A030:
/* 80B3A030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3A034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3A038  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B3A03C  7F E4 FB 78 */	mr r4, r31
/* 80B3A040  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B3A044  81 8C 02 18 */	lwz r12, 0x218(r12)
/* 80B3A048  7D 89 03 A6 */	mtctr r12
/* 80B3A04C  4E 80 04 21 */	bctrl 
/* 80B3A050  A8 7F 0E 00 */	lha r3, 0xe00(r31)
/* 80B3A054  3C 63 00 01 */	addis r3, r3, 1
/* 80B3A058  38 03 80 00 */	addi r0, r3, -32768
/* 80B3A05C  B0 1F 0E 5E */	sth r0, 0xe5e(r31)
/* 80B3A060  4B 64 75 E0 */	b dCam_getBody__Fv
/* 80B3A064  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 80B3A068  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80B3A06C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3A070  D0 1F 0E 50 */	stfs f0, 0xe50(r31)
/* 80B3A074  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A078  D0 1F 0E 54 */	stfs f0, 0xe54(r31)
/* 80B3A07C  D0 1F 0E 58 */	stfs f0, 0xe58(r31)
/* 80B3A080  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B3A084  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B3A088  C0 1F 0D F4 */	lfs f0, 0xdf4(r31)
/* 80B3A08C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B3A090  C0 1F 0D F8 */	lfs f0, 0xdf8(r31)
/* 80B3A094  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B3A098  38 61 00 14 */	addi r3, r1, 0x14
/* 80B3A09C  4B 4D 2C C8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3A0A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A0A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A0A8  A8 9F 0E 5E */	lha r4, 0xe5e(r31)
/* 80B3A0AC  4B 4D 23 88 */	b mDoMtx_YrotM__FPA4_fs
/* 80B3A0B0  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A0B4  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80B3A0B8  FC 20 00 50 */	fneg f1, f0
/* 80B3A0BC  C0 43 00 98 */	lfs f2, 0x98(r3)
/* 80B3A0C0  C0 63 00 90 */	lfs f3, 0x90(r3)
/* 80B3A0C4  4B 4D 2C D8 */	b transM__14mDoMtx_stack_cFfff
/* 80B3A0C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A0CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A0D0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3A0D4  D0 1F 0E 14 */	stfs f0, 0xe14(r31)
/* 80B3A0D8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3A0DC  D0 1F 0E 18 */	stfs f0, 0xe18(r31)
/* 80B3A0E0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3A0E4  D0 1F 0E 1C */	stfs f0, 0xe1c(r31)
/* 80B3A0E8  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3A0EC  A8 84 00 A8 */	lha r4, 0xa8(r4)
/* 80B3A0F0  4B 4D 22 AC */	b mDoMtx_XrotM__FPA4_fs
/* 80B3A0F4  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B3A0F8  C0 1F 0D FC */	lfs f0, 0xdfc(r31)
/* 80B3A0FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B3A100  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 80B3A104  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B3A108  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A10C  D0 1F 0E 08 */	stfs f0, 0xe08(r31)
/* 80B3A110  D0 1F 0E 0C */	stfs f0, 0xe0c(r31)
/* 80B3A114  D0 3F 0E 10 */	stfs f1, 0xe10(r31)
/* 80B3A118  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A11C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A120  38 9F 0E 08 */	addi r4, r31, 0xe08
/* 80B3A124  7C 85 23 78 */	mr r5, r4
/* 80B3A128  4B 80 CC 44 */	b PSMTXMultVec
/* 80B3A12C  7F E3 FB 78 */	mr r3, r31
/* 80B3A130  38 80 00 1B */	li r4, 0x1b
/* 80B3A134  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80B3A138  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3A13C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B3A140  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B3A144  7D 89 03 A6 */	mtctr r12
/* 80B3A148  4E 80 04 21 */	bctrl 
/* 80B3A14C  88 1F 0E 9A */	lbz r0, 0xe9a(r31)
/* 80B3A150  28 00 00 00 */	cmplwi r0, 0
/* 80B3A154  41 82 00 8C */	beq lbl_80B3A1E0
/* 80B3A158  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B3A15C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A160  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B3A164  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B3A168  FC 00 00 1E */	fctiwz f0, f0
/* 80B3A16C  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80B3A170  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80B3A174  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3A178  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A17C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B3A180  FC 20 00 50 */	fneg f1, f0
/* 80B3A184  4B 4C DF 4C */	b fadeOut__13mDoGph_gInf_cFf
/* 80B3A188  7F A3 EB 78 */	mr r3, r29
/* 80B3A18C  38 80 00 02 */	li r4, 2
/* 80B3A190  4B 62 8E 7C */	b SetTrimSize__9dCamera_cFl
/* 80B3A194  C0 1F 0E 08 */	lfs f0, 0xe08(r31)
/* 80B3A198  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B3A19C  C0 1F 0E 0C */	lfs f0, 0xe0c(r31)
/* 80B3A1A0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B3A1A4  C0 1F 0E 10 */	lfs f0, 0xe10(r31)
/* 80B3A1A8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B3A1AC  C0 1F 0E 14 */	lfs f0, 0xe14(r31)
/* 80B3A1B0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B3A1B4  C0 1F 0E 18 */	lfs f0, 0xe18(r31)
/* 80B3A1B8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B3A1BC  C0 1F 0E 1C */	lfs f0, 0xe1c(r31)
/* 80B3A1C0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80B3A1C4  7F A3 EB 78 */	mr r3, r29
/* 80B3A1C8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80B3A1CC  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80B3A1D0  C0 3F 0E 50 */	lfs f1, 0xe50(r31)
/* 80B3A1D4  38 C0 00 00 */	li r6, 0
/* 80B3A1D8  4B 64 69 08 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80B3A1DC  48 00 00 0C */	b lbl_80B3A1E8
lbl_80B3A1E0:
/* 80B3A1E0  38 00 00 00 */	li r0, 0
/* 80B3A1E4  90 1F 0E 80 */	stw r0, 0xe80(r31)
lbl_80B3A1E8:
/* 80B3A1E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3A1EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3A1F0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B3A1F4  7F E4 FB 78 */	mr r4, r31
/* 80B3A1F8  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80B3A1FC  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80B3A200  38 C0 00 00 */	li r6, 0
/* 80B3A204  4B 50 87 10 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80B3A208  38 00 00 02 */	li r0, 2
/* 80B3A20C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B3A210  48 00 0B F8 */	b lbl_80B3AE08
lbl_80B3A214:
/* 80B3A214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3A218  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80B3A21C  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 80B3A220  A0 1C 4F A2 */	lhz r0, 0x4fa2(r28)
/* 80B3A224  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B3A228  41 82 00 0C */	beq lbl_80B3A234
/* 80B3A22C  38 00 00 0A */	li r0, 0xa
/* 80B3A230  90 1F 0E 84 */	stw r0, 0xe84(r31)
lbl_80B3A234:
/* 80B3A234  80 1F 0E 84 */	lwz r0, 0xe84(r31)
/* 80B3A238  28 00 00 0A */	cmplwi r0, 0xa
/* 80B3A23C  41 81 0B 6C */	bgt lbl_80B3ADA8
/* 80B3A240  3C 80 80 B4 */	lis r4, lit_9274@ha
/* 80B3A244  38 84 2B EC */	addi r4, r4, lit_9274@l
/* 80B3A248  54 00 10 3A */	slwi r0, r0, 2
/* 80B3A24C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80B3A250  7C 09 03 A6 */	mtctr r0
/* 80B3A254  4E 80 04 20 */	bctr 
lbl_80B3A258:
/* 80B3A258  88 1F 0E 9A */	lbz r0, 0xe9a(r31)
/* 80B3A25C  28 00 00 00 */	cmplwi r0, 0
/* 80B3A260  40 82 00 DC */	bne lbl_80B3A33C
/* 80B3A264  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80B3A268  28 00 00 02 */	cmplwi r0, 2
/* 80B3A26C  41 82 00 30 */	beq lbl_80B3A29C
/* 80B3A270  7F E3 FB 78 */	mr r3, r31
/* 80B3A274  38 80 00 01 */	li r4, 1
/* 80B3A278  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B3A27C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B3A280  38 C0 00 00 */	li r6, 0
/* 80B3A284  4B 4E 16 84 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B3A288  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80B3A28C  60 00 00 02 */	ori r0, r0, 2
/* 80B3A290  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80B3A294  38 60 00 00 */	li r3, 0
/* 80B3A298  48 00 0B 74 */	b lbl_80B3AE0C
lbl_80B3A29C:
/* 80B3A29C  7F A3 EB 78 */	mr r3, r29
/* 80B3A2A0  4B 62 72 30 */	b Stop__9dCamera_cFv
/* 80B3A2A4  7F A3 EB 78 */	mr r3, r29
/* 80B3A2A8  38 80 00 02 */	li r4, 2
/* 80B3A2AC  4B 62 8D 60 */	b SetTrimSize__9dCamera_cFl
/* 80B3A2B0  C0 1F 0E 08 */	lfs f0, 0xe08(r31)
/* 80B3A2B4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B3A2B8  C0 1F 0E 0C */	lfs f0, 0xe0c(r31)
/* 80B3A2BC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B3A2C0  C0 1F 0E 10 */	lfs f0, 0xe10(r31)
/* 80B3A2C4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B3A2C8  C0 1F 0E 14 */	lfs f0, 0xe14(r31)
/* 80B3A2CC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B3A2D0  C0 1F 0E 18 */	lfs f0, 0xe18(r31)
/* 80B3A2D4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B3A2D8  C0 1F 0E 1C */	lfs f0, 0xe1c(r31)
/* 80B3A2DC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B3A2E0  7F A3 EB 78 */	mr r3, r29
/* 80B3A2E4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80B3A2E8  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80B3A2EC  C0 3F 0E 50 */	lfs f1, 0xe50(r31)
/* 80B3A2F0  38 C0 00 00 */	li r6, 0
/* 80B3A2F4  4B 64 67 EC */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80B3A2F8  7F E3 FB 78 */	mr r3, r31
/* 80B3A2FC  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B3A300  C0 1F 0D FC */	lfs f0, 0xdfc(r31)
/* 80B3A304  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B3A308  4B FF 6A 41 */	bl setOnToArena__15daNpcWrestler_cFf
/* 80B3A30C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3A310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3A314  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B3A318  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B3A31C  64 00 08 00 */	oris r0, r0, 0x800
/* 80B3A320  90 03 05 70 */	stw r0, 0x570(r3)
/* 80B3A324  38 00 00 00 */	li r0, 0
/* 80B3A328  98 1F 0E 9A */	stb r0, 0xe9a(r31)
/* 80B3A32C  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3A330  38 03 00 01 */	addi r0, r3, 1
/* 80B3A334  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3A338  48 00 0A 70 */	b lbl_80B3ADA8
lbl_80B3A33C:
/* 80B3A33C  7F E3 FB 78 */	mr r3, r31
/* 80B3A340  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B3A344  C0 1F 0D FC */	lfs f0, 0xdfc(r31)
/* 80B3A348  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B3A34C  4B FF 69 FD */	bl setOnToArena__15daNpcWrestler_cFf
/* 80B3A350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3A354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3A358  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B3A35C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B3A360  64 00 08 00 */	oris r0, r0, 0x800
/* 80B3A364  90 03 05 70 */	stw r0, 0x570(r3)
/* 80B3A368  38 00 00 00 */	li r0, 0
/* 80B3A36C  98 1F 0E 9A */	stb r0, 0xe9a(r31)
/* 80B3A370  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3A374  38 03 00 01 */	addi r0, r3, 1
/* 80B3A378  90 1F 0E 84 */	stw r0, 0xe84(r31)
lbl_80B3A37C:
/* 80B3A37C  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3A380  38 03 00 01 */	addi r0, r3, 1
/* 80B3A384  90 1F 0E 84 */	stw r0, 0xe84(r31)
lbl_80B3A388:
/* 80B3A388  C0 3F 0E 54 */	lfs f1, 0xe54(r31)
/* 80B3A38C  C0 1F 0E 58 */	lfs f0, 0xe58(r31)
/* 80B3A390  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3A394  D0 1F 0E 54 */	stfs f0, 0xe54(r31)
/* 80B3A398  38 7F 0E 58 */	addi r3, r31, 0xe58
/* 80B3A39C  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3A3A0  C0 24 00 A4 */	lfs f1, 0xa4(r4)
/* 80B3A3A4  C0 5E 06 1C */	lfs f2, 0x61c(r30)
/* 80B3A3A8  4B 73 63 98 */	b cLib_chaseF__FPfff
/* 80B3A3AC  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B3A3B0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B3A3B4  C0 1F 0D F4 */	lfs f0, 0xdf4(r31)
/* 80B3A3B8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B3A3BC  C0 1F 0D F8 */	lfs f0, 0xdf8(r31)
/* 80B3A3C0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B3A3C4  38 61 00 98 */	addi r3, r1, 0x98
/* 80B3A3C8  4B 4D 29 9C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3A3CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A3D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A3D4  A8 9F 0E 5E */	lha r4, 0xe5e(r31)
/* 80B3A3D8  4B 4D 20 5C */	b mDoMtx_YrotM__FPA4_fs
/* 80B3A3DC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A3E0  C0 23 00 A0 */	lfs f1, 0xa0(r3)
/* 80B3A3E4  C0 1F 0E 54 */	lfs f0, 0xe54(r31)
/* 80B3A3E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B3A3EC  C0 43 00 98 */	lfs f2, 0x98(r3)
/* 80B3A3F0  C0 63 00 90 */	lfs f3, 0x90(r3)
/* 80B3A3F4  4B 4D 29 A8 */	b transM__14mDoMtx_stack_cFfff
/* 80B3A3F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A3FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A400  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3A404  D0 1F 0E 14 */	stfs f0, 0xe14(r31)
/* 80B3A408  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3A40C  D0 1F 0E 18 */	stfs f0, 0xe18(r31)
/* 80B3A410  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3A414  D0 1F 0E 1C */	stfs f0, 0xe1c(r31)
/* 80B3A418  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3A41C  A8 84 00 A8 */	lha r4, 0xa8(r4)
/* 80B3A420  4B 4D 1F 7C */	b mDoMtx_XrotM__FPA4_fs
/* 80B3A424  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B3A428  C0 1F 0D FC */	lfs f0, 0xdfc(r31)
/* 80B3A42C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B3A430  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 80B3A434  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B3A438  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A43C  D0 1F 0E 08 */	stfs f0, 0xe08(r31)
/* 80B3A440  D0 1F 0E 0C */	stfs f0, 0xe0c(r31)
/* 80B3A444  D0 3F 0E 10 */	stfs f1, 0xe10(r31)
/* 80B3A448  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A44C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A450  38 9F 0E 08 */	addi r4, r31, 0xe08
/* 80B3A454  7C 85 23 78 */	mr r5, r4
/* 80B3A458  4B 80 C9 14 */	b PSMTXMultVec
/* 80B3A45C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A460  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80B3A464  FC 00 02 10 */	fabs f0, f0
/* 80B3A468  FC 20 00 18 */	frsp f1, f0
/* 80B3A46C  C0 1F 0E 54 */	lfs f0, 0xe54(r31)
/* 80B3A470  FC 00 02 10 */	fabs f0, f0
/* 80B3A474  FC 40 00 18 */	frsp f2, f0
/* 80B3A478  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 80B3A47C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B3A480  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B3A484  40 81 09 24 */	ble lbl_80B3ADA8
/* 80B3A488  7F E3 FB 78 */	mr r3, r31
/* 80B3A48C  38 80 00 07 */	li r4, 7
/* 80B3A490  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80B3A494  38 A0 00 00 */	li r5, 0
/* 80B3A498  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B3A49C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3A4A0  7D 89 03 A6 */	mtctr r12
/* 80B3A4A4  4E 80 04 21 */	bctrl 
/* 80B3A4A8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A4AC  A8 03 00 B4 */	lha r0, 0xb4(r3)
/* 80B3A4B0  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3A4B4  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3A4B8  38 03 00 01 */	addi r0, r3, 1
/* 80B3A4BC  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3A4C0  48 00 08 E8 */	b lbl_80B3ADA8
lbl_80B3A4C4:
/* 80B3A4C4  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 80B3A4C8  38 03 FF FF */	addi r0, r3, -1
/* 80B3A4CC  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3A4D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3A4D4  41 81 08 D4 */	bgt lbl_80B3ADA8
/* 80B3A4D8  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A4DC  D0 1F 0E 20 */	stfs f0, 0xe20(r31)
/* 80B3A4E0  D0 1F 0E 24 */	stfs f0, 0xe24(r31)
/* 80B3A4E4  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 80B3A4E8  D0 1F 0E 28 */	stfs f0, 0xe28(r31)
/* 80B3A4EC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B3A4F0  4B 4D 28 74 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3A4F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A4F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A4FC  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B3A500  4B 4D 1F 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80B3A504  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A508  C0 03 00 B8 */	lfs f0, 0xb8(r3)
/* 80B3A50C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B3A510  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 80B3A514  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B3A518  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 80B3A51C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B3A520  38 61 00 8C */	addi r3, r1, 0x8c
/* 80B3A524  4B 4D 28 B0 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80B3A528  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A52C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A530  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3A534  D0 1F 0E 2C */	stfs f0, 0xe2c(r31)
/* 80B3A538  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3A53C  D0 1F 0E 30 */	stfs f0, 0xe30(r31)
/* 80B3A540  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3A544  D0 1F 0E 34 */	stfs f0, 0xe34(r31)
/* 80B3A548  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3A54C  A8 84 00 E8 */	lha r4, 0xe8(r4)
/* 80B3A550  4B 4D 1E 4C */	b mDoMtx_XrotM__FPA4_fs
/* 80B3A554  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A558  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A55C  38 9F 0E 20 */	addi r4, r31, 0xe20
/* 80B3A560  7C 85 23 78 */	mr r5, r4
/* 80B3A564  4B 80 C8 08 */	b PSMTXMultVec
/* 80B3A568  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3A56C  38 03 00 01 */	addi r0, r3, 1
/* 80B3A570  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3A574  48 00 08 34 */	b lbl_80B3ADA8
lbl_80B3A578:
/* 80B3A578  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B3A57C  28 00 00 00 */	cmplwi r0, 0
/* 80B3A580  40 82 00 1C */	bne lbl_80B3A59C
/* 80B3A584  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B3A588  38 63 00 0C */	addi r3, r3, 0xc
/* 80B3A58C  C0 3E 06 28 */	lfs f1, 0x628(r30)
/* 80B3A590  4B 7E DE 9C */	b checkPass__12J3DFrameCtrlFf
/* 80B3A594  2C 03 00 00 */	cmpwi r3, 0
/* 80B3A598  40 82 00 28 */	bne lbl_80B3A5C0
lbl_80B3A59C:
/* 80B3A59C  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B3A5A0  28 00 00 01 */	cmplwi r0, 1
/* 80B3A5A4  40 82 00 C4 */	bne lbl_80B3A668
/* 80B3A5A8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B3A5AC  38 63 00 0C */	addi r3, r3, 0xc
/* 80B3A5B0  C0 3E 06 2C */	lfs f1, 0x62c(r30)
/* 80B3A5B4  4B 7E DE 78 */	b checkPass__12J3DFrameCtrlFf
/* 80B3A5B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B3A5BC  41 82 00 AC */	beq lbl_80B3A668
lbl_80B3A5C0:
/* 80B3A5C0  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B3A5C4  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80B3A5C8  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80B3A5CC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B3A5D0  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80B3A5D4  38 7C 5B D4 */	addi r3, r28, 0x5bd4
/* 80B3A5D8  38 80 00 08 */	li r4, 8
/* 80B3A5DC  38 A0 00 0F */	li r5, 0xf
/* 80B3A5E0  38 C1 00 80 */	addi r6, r1, 0x80
/* 80B3A5E4  4B 53 54 40 */	b StartShock__12dVibration_cFii4cXyz
/* 80B3A5E8  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B3A5EC  28 00 00 00 */	cmplwi r0, 0
/* 80B3A5F0  38 00 00 1B */	li r0, 0x1b
/* 80B3A5F4  40 82 00 08 */	bne lbl_80B3A5FC
/* 80B3A5F8  38 00 00 1E */	li r0, 0x1e
lbl_80B3A5FC:
/* 80B3A5FC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B3A600  80 63 00 04 */	lwz r3, 4(r3)
/* 80B3A604  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B3A608  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B3A60C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B3A610  7C 63 02 14 */	add r3, r3, r0
/* 80B3A614  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B3A618  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B3A61C  4B 80 BE 94 */	b PSMTXCopy
/* 80B3A620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A628  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3A62C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B3A630  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3A634  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B3A638  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3A63C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B3A640  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B3A644  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B3A648  38 7F 0D E8 */	addi r3, r31, 0xde8
/* 80B3A64C  38 9F 0D EC */	addi r4, r31, 0xdec
/* 80B3A650  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80B3A654  38 C0 00 00 */	li r6, 0
/* 80B3A658  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80B3A65C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80B3A660  39 00 00 01 */	li r8, 1
/* 80B3A664  4B 4E 29 BC */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80B3A668:
/* 80B3A668  38 7F 0E 08 */	addi r3, r31, 0xe08
/* 80B3A66C  38 9F 0E 20 */	addi r4, r31, 0xe20
/* 80B3A670  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80B3A674  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 80B3A678  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80B3A67C  4B 73 54 3C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3A680  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A684  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3A688  7C 00 00 26 */	mfcr r0
/* 80B3A68C  54 1B 1F FE */	rlwinm r27, r0, 3, 0x1f, 0x1f
/* 80B3A690  38 7F 0E 14 */	addi r3, r31, 0xe14
/* 80B3A694  38 9F 0E 2C */	addi r4, r31, 0xe2c
/* 80B3A698  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80B3A69C  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 80B3A6A0  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80B3A6A4  4B 73 54 14 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3A6A8  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A6AC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3A6B0  7C 00 00 26 */	mfcr r0
/* 80B3A6B4  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 80B3A6B8  41 82 06 F0 */	beq lbl_80B3ADA8
/* 80B3A6BC  28 1B 00 00 */	cmplwi r27, 0
/* 80B3A6C0  41 82 06 E8 */	beq lbl_80B3ADA8
/* 80B3A6C4  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80B3A6C8  2C 00 00 01 */	cmpwi r0, 1
/* 80B3A6CC  40 82 06 DC */	bne lbl_80B3ADA8
/* 80B3A6D0  D0 1F 0E 20 */	stfs f0, 0xe20(r31)
/* 80B3A6D4  D0 1F 0E 24 */	stfs f0, 0xe24(r31)
/* 80B3A6D8  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 80B3A6DC  D0 1F 0E 28 */	stfs f0, 0xe28(r31)
/* 80B3A6E0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B3A6E4  4B 4D 26 80 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3A6E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A6EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A6F0  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B3A6F4  4B 4D 1D 40 */	b mDoMtx_YrotM__FPA4_fs
/* 80B3A6F8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A6FC  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 80B3A700  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B3A704  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 80B3A708  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B3A70C  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 80B3A710  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B3A714  38 61 00 74 */	addi r3, r1, 0x74
/* 80B3A718  4B 4D 26 BC */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80B3A71C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A724  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3A728  D0 1F 0E 2C */	stfs f0, 0xe2c(r31)
/* 80B3A72C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3A730  D0 1F 0E 30 */	stfs f0, 0xe30(r31)
/* 80B3A734  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3A738  D0 1F 0E 34 */	stfs f0, 0xe34(r31)
/* 80B3A73C  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3A740  A8 84 00 EA */	lha r4, 0xea(r4)
/* 80B3A744  4B 4D 1C 58 */	b mDoMtx_XrotM__FPA4_fs
/* 80B3A748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A74C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A750  38 9F 0E 20 */	addi r4, r31, 0xe20
/* 80B3A754  7C 85 23 78 */	mr r5, r4
/* 80B3A758  4B 80 C6 14 */	b PSMTXMultVec
/* 80B3A75C  38 00 00 3C */	li r0, 0x3c
/* 80B3A760  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3A764  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3A768  38 03 00 01 */	addi r0, r3, 1
/* 80B3A76C  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3A770  48 00 06 38 */	b lbl_80B3ADA8
lbl_80B3A774:
/* 80B3A774  38 7F 0E 08 */	addi r3, r31, 0xe08
/* 80B3A778  38 9F 0E 20 */	addi r4, r31, 0xe20
/* 80B3A77C  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80B3A780  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 80B3A784  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80B3A788  4B 73 53 30 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3A78C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A790  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3A794  7C 00 00 26 */	mfcr r0
/* 80B3A798  54 1B 1F FE */	rlwinm r27, r0, 3, 0x1f, 0x1f
/* 80B3A79C  38 7F 0E 14 */	addi r3, r31, 0xe14
/* 80B3A7A0  38 9F 0E 2C */	addi r4, r31, 0xe2c
/* 80B3A7A4  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80B3A7A8  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 80B3A7AC  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80B3A7B0  4B 73 53 08 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3A7B4  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A7B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3A7BC  7C 00 00 26 */	mfcr r0
/* 80B3A7C0  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 80B3A7C4  41 82 05 E4 */	beq lbl_80B3ADA8
/* 80B3A7C8  28 1B 00 00 */	cmplwi r27, 0
/* 80B3A7CC  41 82 05 DC */	beq lbl_80B3ADA8
/* 80B3A7D0  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 80B3A7D4  38 03 FF FF */	addi r0, r3, -1
/* 80B3A7D8  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3A7DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3A7E0  41 81 05 C8 */	bgt lbl_80B3ADA8
/* 80B3A7E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3A7E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3A7EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B3A7F0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B3A7F4  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B3A7F8  90 03 05 70 */	stw r0, 0x570(r3)
/* 80B3A7FC  38 00 00 01 */	li r0, 1
/* 80B3A800  98 1F 0E 9C */	stb r0, 0xe9c(r31)
/* 80B3A804  A8 1F 0E 00 */	lha r0, 0xe00(r31)
/* 80B3A808  B0 1F 0E 5E */	sth r0, 0xe5e(r31)
/* 80B3A80C  4B 64 6E 34 */	b dCam_getBody__Fv
/* 80B3A810  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 80B3A814  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80B3A818  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3A81C  D0 1F 0E 50 */	stfs f0, 0xe50(r31)
/* 80B3A820  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A824  D0 1F 0E 54 */	stfs f0, 0xe54(r31)
/* 80B3A828  D0 1F 0E 58 */	stfs f0, 0xe58(r31)
/* 80B3A82C  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B3A830  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B3A834  C0 1F 0D F4 */	lfs f0, 0xdf4(r31)
/* 80B3A838  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B3A83C  C0 1F 0D F8 */	lfs f0, 0xdf8(r31)
/* 80B3A840  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B3A844  38 61 00 08 */	addi r3, r1, 8
/* 80B3A848  4B 4D 25 1C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3A84C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A850  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A854  A8 9F 0E 5E */	lha r4, 0xe5e(r31)
/* 80B3A858  4B 4D 1B DC */	b mDoMtx_YrotM__FPA4_fs
/* 80B3A85C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A860  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80B3A864  FC 20 00 50 */	fneg f1, f0
/* 80B3A868  C0 43 00 9C */	lfs f2, 0x9c(r3)
/* 80B3A86C  C0 63 00 94 */	lfs f3, 0x94(r3)
/* 80B3A870  4B 4D 25 2C */	b transM__14mDoMtx_stack_cFfff
/* 80B3A874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A878  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A87C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3A880  D0 1F 0E 14 */	stfs f0, 0xe14(r31)
/* 80B3A884  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3A888  D0 1F 0E 18 */	stfs f0, 0xe18(r31)
/* 80B3A88C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3A890  D0 1F 0E 1C */	stfs f0, 0xe1c(r31)
/* 80B3A894  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3A898  A8 84 00 AA */	lha r4, 0xaa(r4)
/* 80B3A89C  4B 4D 1B 00 */	b mDoMtx_XrotM__FPA4_fs
/* 80B3A8A0  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B3A8A4  C0 1F 0D FC */	lfs f0, 0xdfc(r31)
/* 80B3A8A8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B3A8AC  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 80B3A8B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B3A8B4  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A8B8  D0 1F 0E 08 */	stfs f0, 0xe08(r31)
/* 80B3A8BC  D0 1F 0E 0C */	stfs f0, 0xe0c(r31)
/* 80B3A8C0  D0 3F 0E 10 */	stfs f1, 0xe10(r31)
/* 80B3A8C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A8C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A8CC  38 9F 0E 08 */	addi r4, r31, 0xe08
/* 80B3A8D0  7C 85 23 78 */	mr r5, r4
/* 80B3A8D4  4B 80 C4 98 */	b PSMTXMultVec
/* 80B3A8D8  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3A8DC  38 03 00 01 */	addi r0, r3, 1
/* 80B3A8E0  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3A8E4  48 00 04 C4 */	b lbl_80B3ADA8
lbl_80B3A8E8:
/* 80B3A8E8  C0 3F 0E 54 */	lfs f1, 0xe54(r31)
/* 80B3A8EC  C0 1F 0E 58 */	lfs f0, 0xe58(r31)
/* 80B3A8F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3A8F4  D0 1F 0E 54 */	stfs f0, 0xe54(r31)
/* 80B3A8F8  38 7F 0E 58 */	addi r3, r31, 0xe58
/* 80B3A8FC  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3A900  C0 24 00 A4 */	lfs f1, 0xa4(r4)
/* 80B3A904  C0 5E 06 1C */	lfs f2, 0x61c(r30)
/* 80B3A908  4B 73 5E 38 */	b cLib_chaseF__FPfff
/* 80B3A90C  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B3A910  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B3A914  C0 1F 0D F4 */	lfs f0, 0xdf4(r31)
/* 80B3A918  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B3A91C  C0 1F 0D F8 */	lfs f0, 0xdf8(r31)
/* 80B3A920  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B3A924  38 61 00 68 */	addi r3, r1, 0x68
/* 80B3A928  4B 4D 24 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3A92C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A930  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A934  A8 9F 0E 00 */	lha r4, 0xe00(r31)
/* 80B3A938  4B 4D 1A FC */	b mDoMtx_YrotM__FPA4_fs
/* 80B3A93C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A940  C0 3F 0E 54 */	lfs f1, 0xe54(r31)
/* 80B3A944  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80B3A948  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B3A94C  C0 43 00 9C */	lfs f2, 0x9c(r3)
/* 80B3A950  C0 63 00 94 */	lfs f3, 0x94(r3)
/* 80B3A954  4B 4D 24 48 */	b transM__14mDoMtx_stack_cFfff
/* 80B3A958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A95C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A960  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3A964  D0 1F 0E 14 */	stfs f0, 0xe14(r31)
/* 80B3A968  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3A96C  D0 1F 0E 18 */	stfs f0, 0xe18(r31)
/* 80B3A970  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3A974  D0 1F 0E 1C */	stfs f0, 0xe1c(r31)
/* 80B3A978  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3A97C  A8 84 00 AA */	lha r4, 0xaa(r4)
/* 80B3A980  4B 4D 1A 1C */	b mDoMtx_XrotM__FPA4_fs
/* 80B3A984  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B3A988  C0 1F 0D FC */	lfs f0, 0xdfc(r31)
/* 80B3A98C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B3A990  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 80B3A994  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B3A998  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3A99C  D0 1F 0E 08 */	stfs f0, 0xe08(r31)
/* 80B3A9A0  D0 1F 0E 0C */	stfs f0, 0xe0c(r31)
/* 80B3A9A4  D0 3F 0E 10 */	stfs f1, 0xe10(r31)
/* 80B3A9A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3A9AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3A9B0  38 9F 0E 08 */	addi r4, r31, 0xe08
/* 80B3A9B4  7C 85 23 78 */	mr r5, r4
/* 80B3A9B8  4B 80 C3 B4 */	b PSMTXMultVec
/* 80B3A9BC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3A9C0  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80B3A9C4  FC 00 02 10 */	fabs f0, f0
/* 80B3A9C8  FC 20 00 18 */	frsp f1, f0
/* 80B3A9CC  C0 1F 0E 54 */	lfs f0, 0xe54(r31)
/* 80B3A9D0  FC 00 02 10 */	fabs f0, f0
/* 80B3A9D4  FC 40 00 18 */	frsp f2, f0
/* 80B3A9D8  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 80B3A9DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B3A9E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B3A9E4  40 81 03 C4 */	ble lbl_80B3ADA8
/* 80B3A9E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3A9EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3A9F0  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80B3A9F4  38 00 00 03 */	li r0, 3
/* 80B3A9F8  B0 04 06 04 */	sth r0, 0x604(r4)
/* 80B3A9FC  38 60 00 00 */	li r3, 0
/* 80B3AA00  90 64 06 0C */	stw r3, 0x60c(r4)
/* 80B3AA04  38 00 00 33 */	li r0, 0x33
/* 80B3AA08  90 04 06 14 */	stw r0, 0x614(r4)
/* 80B3AA0C  90 64 06 0C */	stw r3, 0x60c(r4)
/* 80B3AA10  90 64 06 10 */	stw r3, 0x610(r4)
/* 80B3AA14  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 80B3AA18  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3AA1C  A8 03 00 B6 */	lha r0, 0xb6(r3)
/* 80B3AA20  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3AA24  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3AA28  38 03 00 01 */	addi r0, r3, 1
/* 80B3AA2C  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3AA30  48 00 03 78 */	b lbl_80B3ADA8
lbl_80B3AA34:
/* 80B3AA34  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 80B3AA38  38 03 FF FF */	addi r0, r3, -1
/* 80B3AA3C  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3AA40  2C 03 00 00 */	cmpwi r3, 0
/* 80B3AA44  41 81 03 64 */	bgt lbl_80B3ADA8
/* 80B3AA48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3AA4C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80B3AA50  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80B3AA54  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80B3AA58  4B 4D 23 0C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3AA5C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80B3AA60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3AA64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3AA68  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80B3AA6C  4B 4D 19 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80B3AA70  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3AA74  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 80B3AA78  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B3AA7C  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 80B3AA80  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B3AA84  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 80B3AA88  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B3AA8C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B3AA90  4B 4D 23 44 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80B3AA94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3AA98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3AA9C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3AAA0  D0 1F 0E 2C */	stfs f0, 0xe2c(r31)
/* 80B3AAA4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3AAA8  D0 1F 0E 30 */	stfs f0, 0xe30(r31)
/* 80B3AAAC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3AAB0  D0 1F 0E 34 */	stfs f0, 0xe34(r31)
/* 80B3AAB4  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3AAB8  A8 84 00 EC */	lha r4, 0xec(r4)
/* 80B3AABC  4B 4D 18 E0 */	b mDoMtx_XrotM__FPA4_fs
/* 80B3AAC0  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3AAC4  D0 1F 0E 20 */	stfs f0, 0xe20(r31)
/* 80B3AAC8  D0 1F 0E 24 */	stfs f0, 0xe24(r31)
/* 80B3AACC  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 80B3AAD0  D0 1F 0E 28 */	stfs f0, 0xe28(r31)
/* 80B3AAD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3AAD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3AADC  38 9F 0E 20 */	addi r4, r31, 0xe20
/* 80B3AAE0  7C 85 23 78 */	mr r5, r4
/* 80B3AAE4  4B 80 C2 88 */	b PSMTXMultVec
/* 80B3AAE8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3AAEC  A8 03 00 B6 */	lha r0, 0xb6(r3)
/* 80B3AAF0  20 00 00 96 */	subfic r0, r0, 0x96
/* 80B3AAF4  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3AAF8  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3AAFC  38 03 00 01 */	addi r0, r3, 1
/* 80B3AB00  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3AB04  48 00 02 A4 */	b lbl_80B3ADA8
lbl_80B3AB08:
/* 80B3AB08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3AB0C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80B3AB10  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80B3AB14  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B3AB18  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B3AB1C  7D 89 03 A6 */	mtctr r12
/* 80B3AB20  4E 80 04 21 */	bctrl 
/* 80B3AB24  C0 1E 06 34 */	lfs f0, 0x634(r30)
/* 80B3AB28  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3AB2C  40 82 00 2C */	bne lbl_80B3AB58
/* 80B3AB30  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B3AB34  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B3AB38  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80B3AB3C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B3AB40  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B3AB44  38 7C 5B D4 */	addi r3, r28, 0x5bd4
/* 80B3AB48  38 80 00 03 */	li r4, 3
/* 80B3AB4C  38 A0 00 0F */	li r5, 0xf
/* 80B3AB50  38 C1 00 50 */	addi r6, r1, 0x50
/* 80B3AB54  4B 53 4E D0 */	b StartShock__12dVibration_cFii4cXyz
lbl_80B3AB58:
/* 80B3AB58  38 7F 0E 08 */	addi r3, r31, 0xe08
/* 80B3AB5C  38 9F 0E 20 */	addi r4, r31, 0xe20
/* 80B3AB60  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80B3AB64  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 80B3AB68  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80B3AB6C  4B 73 4F 4C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3AB70  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3AB74  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3AB78  7C 00 00 26 */	mfcr r0
/* 80B3AB7C  54 1C 1F FE */	rlwinm r28, r0, 3, 0x1f, 0x1f
/* 80B3AB80  38 7F 0E 14 */	addi r3, r31, 0xe14
/* 80B3AB84  38 9F 0E 2C */	addi r4, r31, 0xe2c
/* 80B3AB88  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80B3AB8C  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 80B3AB90  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80B3AB94  4B 73 4F 24 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3AB98  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3AB9C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3ABA0  7C 00 00 26 */	mfcr r0
/* 80B3ABA4  54 04 1F FE */	rlwinm r4, r0, 3, 0x1f, 0x1f
/* 80B3ABA8  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 80B3ABAC  38 03 FF FF */	addi r0, r3, -1
/* 80B3ABB0  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3ABB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B3ABB8  41 81 01 F0 */	bgt lbl_80B3ADA8
/* 80B3ABBC  28 04 00 00 */	cmplwi r4, 0
/* 80B3ABC0  41 82 01 E8 */	beq lbl_80B3ADA8
/* 80B3ABC4  28 1C 00 00 */	cmplwi r28, 0
/* 80B3ABC8  41 82 01 E0 */	beq lbl_80B3ADA8
/* 80B3ABCC  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80B3ABD0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80B3ABD4  4B 4D 21 90 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3ABD8  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80B3ABDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3ABE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3ABE4  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80B3ABE8  4B 4D 18 4C */	b mDoMtx_YrotM__FPA4_fs
/* 80B3ABEC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3ABF0  C0 03 00 DC */	lfs f0, 0xdc(r3)
/* 80B3ABF4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B3ABF8  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 80B3ABFC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B3AC00  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 80B3AC04  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B3AC08  38 61 00 44 */	addi r3, r1, 0x44
/* 80B3AC0C  4B 4D 21 C8 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80B3AC10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3AC14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3AC18  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3AC1C  D0 1F 0E 2C */	stfs f0, 0xe2c(r31)
/* 80B3AC20  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3AC24  D0 1F 0E 30 */	stfs f0, 0xe30(r31)
/* 80B3AC28  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3AC2C  D0 1F 0E 34 */	stfs f0, 0xe34(r31)
/* 80B3AC30  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B3AC34  A8 84 00 EE */	lha r4, 0xee(r4)
/* 80B3AC38  4B 4D 17 64 */	b mDoMtx_XrotM__FPA4_fs
/* 80B3AC3C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3AC40  D0 1F 0E 20 */	stfs f0, 0xe20(r31)
/* 80B3AC44  D0 1F 0E 24 */	stfs f0, 0xe24(r31)
/* 80B3AC48  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 80B3AC4C  D0 1F 0E 28 */	stfs f0, 0xe28(r31)
/* 80B3AC50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3AC54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3AC58  38 9F 0E 20 */	addi r4, r31, 0xe20
/* 80B3AC5C  7C 85 23 78 */	mr r5, r4
/* 80B3AC60  4B 80 C1 0C */	b PSMTXMultVec
/* 80B3AC64  38 00 00 3C */	li r0, 0x3c
/* 80B3AC68  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3AC6C  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3AC70  38 03 00 01 */	addi r0, r3, 1
/* 80B3AC74  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3AC78  48 00 01 30 */	b lbl_80B3ADA8
lbl_80B3AC7C:
/* 80B3AC7C  38 7F 0E 08 */	addi r3, r31, 0xe08
/* 80B3AC80  38 9F 0E 20 */	addi r4, r31, 0xe20
/* 80B3AC84  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80B3AC88  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 80B3AC8C  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80B3AC90  4B 73 4E 28 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3AC94  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3AC98  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3AC9C  7C 00 00 26 */	mfcr r0
/* 80B3ACA0  54 1B 1F FE */	rlwinm r27, r0, 3, 0x1f, 0x1f
/* 80B3ACA4  38 7F 0E 14 */	addi r3, r31, 0xe14
/* 80B3ACA8  38 9F 0E 2C */	addi r4, r31, 0xe2c
/* 80B3ACAC  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80B3ACB0  C0 5E 05 F4 */	lfs f2, 0x5f4(r30)
/* 80B3ACB4  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80B3ACB8  4B 73 4E 00 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3ACBC  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3ACC0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3ACC4  7C 00 00 26 */	mfcr r0
/* 80B3ACC8  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 80B3ACCC  41 82 00 DC */	beq lbl_80B3ADA8
/* 80B3ACD0  28 1B 00 00 */	cmplwi r27, 0
/* 80B3ACD4  41 82 00 D4 */	beq lbl_80B3ADA8
/* 80B3ACD8  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 80B3ACDC  38 03 FF FF */	addi r0, r3, -1
/* 80B3ACE0  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B3ACE4  2C 03 00 00 */	cmpwi r3, 0
/* 80B3ACE8  41 81 00 C0 */	bgt lbl_80B3ADA8
/* 80B3ACEC  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80B3ACF0  38 03 00 01 */	addi r0, r3, 1
/* 80B3ACF4  90 1F 0E 84 */	stw r0, 0xe84(r31)
/* 80B3ACF8  48 00 00 B0 */	b lbl_80B3ADA8
lbl_80B3ACFC:
/* 80B3ACFC  7F E4 FB 78 */	mr r4, r31
/* 80B3AD00  38 A0 00 00 */	li r5, 0
/* 80B3AD04  38 C0 00 00 */	li r6, 0
/* 80B3AD08  4B 50 7C 0C */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80B3AD0C  38 00 00 01 */	li r0, 1
/* 80B3AD10  98 1F 09 EC */	stb r0, 0x9ec(r31)
/* 80B3AD14  38 A0 00 03 */	li r5, 3
/* 80B3AD18  90 BF 0E 7C */	stw r5, 0xe7c(r31)
/* 80B3AD1C  3C 60 80 B4 */	lis r3, lit_8996@ha
/* 80B3AD20  38 83 2B E0 */	addi r4, r3, lit_8996@l
/* 80B3AD24  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3AD28  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3AD2C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B3AD30  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B3AD34  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3AD38  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B3AD3C  B0 BF 0E 96 */	sth r5, 0xe96(r31)
/* 80B3AD40  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3AD44  4B 82 72 D4 */	b __ptmf_test
/* 80B3AD48  2C 03 00 00 */	cmpwi r3, 0
/* 80B3AD4C  41 82 00 18 */	beq lbl_80B3AD64
/* 80B3AD50  7F E3 FB 78 */	mr r3, r31
/* 80B3AD54  38 80 00 00 */	li r4, 0
/* 80B3AD58  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B3AD5C  4B 82 73 28 */	b __ptmf_scall
/* 80B3AD60  60 00 00 00 */	nop 
lbl_80B3AD64:
/* 80B3AD64  38 00 00 00 */	li r0, 0
/* 80B3AD68  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B3AD6C  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80B3AD70  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B3AD74  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B3AD78  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B3AD7C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80B3AD80  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B3AD84  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3AD88  4B 82 72 90 */	b __ptmf_test
/* 80B3AD8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3AD90  41 82 00 18 */	beq lbl_80B3ADA8
/* 80B3AD94  7F E3 FB 78 */	mr r3, r31
/* 80B3AD98  38 80 00 00 */	li r4, 0
/* 80B3AD9C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B3ADA0  4B 82 72 E4 */	b __ptmf_scall
/* 80B3ADA4  60 00 00 00 */	nop 
lbl_80B3ADA8:
/* 80B3ADA8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3ADAC  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 80B3ADB0  D0 1F 0E 50 */	stfs f0, 0xe50(r31)
/* 80B3ADB4  80 1F 0E 84 */	lwz r0, 0xe84(r31)
/* 80B3ADB8  2C 00 00 00 */	cmpwi r0, 0
/* 80B3ADBC  40 81 00 4C */	ble lbl_80B3AE08
/* 80B3ADC0  C0 1F 0E 08 */	lfs f0, 0xe08(r31)
/* 80B3ADC4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B3ADC8  C0 1F 0E 0C */	lfs f0, 0xe0c(r31)
/* 80B3ADCC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B3ADD0  C0 1F 0E 10 */	lfs f0, 0xe10(r31)
/* 80B3ADD4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B3ADD8  C0 1F 0E 14 */	lfs f0, 0xe14(r31)
/* 80B3ADDC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B3ADE0  C0 1F 0E 18 */	lfs f0, 0xe18(r31)
/* 80B3ADE4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B3ADE8  C0 1F 0E 1C */	lfs f0, 0xe1c(r31)
/* 80B3ADEC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B3ADF0  7F A3 EB 78 */	mr r3, r29
/* 80B3ADF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B3ADF8  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B3ADFC  C0 3F 0E 50 */	lfs f1, 0xe50(r31)
/* 80B3AE00  38 C0 00 00 */	li r6, 0
/* 80B3AE04  4B 64 5C DC */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_80B3AE08:
/* 80B3AE08  38 60 00 01 */	li r3, 1
lbl_80B3AE0C:
/* 80B3AE0C  39 61 01 00 */	addi r11, r1, 0x100
/* 80B3AE10  4B 82 74 10 */	b _restgpr_27
/* 80B3AE14  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80B3AE18  7C 08 03 A6 */	mtlr r0
/* 80B3AE1C  38 21 01 00 */	addi r1, r1, 0x100
/* 80B3AE20  4E 80 00 20 */	blr 
