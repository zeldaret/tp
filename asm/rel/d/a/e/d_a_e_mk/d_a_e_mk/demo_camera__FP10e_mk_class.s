lbl_8071A22C:
/* 8071A22C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8071A230  7C 08 02 A6 */	mflr r0
/* 8071A234  90 01 00 74 */	stw r0, 0x74(r1)
/* 8071A238  39 61 00 70 */	addi r11, r1, 0x70
/* 8071A23C  4B C4 7F 9C */	b _savegpr_28
/* 8071A240  7C 7D 1B 78 */	mr r29, r3
/* 8071A244  3C 80 80 72 */	lis r4, lit_3777@ha
/* 8071A248  3B E4 C5 44 */	addi r31, r4, lit_3777@l
/* 8071A24C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8071A250  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8071A254  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8071A258  7C 00 07 74 */	extsb r0, r0
/* 8071A25C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8071A260  7C 84 02 14 */	add r4, r4, r0
/* 8071A264  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 8071A268  A8 03 0C 30 */	lha r0, 0xc30(r3)
/* 8071A26C  28 00 00 0A */	cmplwi r0, 0xa
/* 8071A270  41 81 01 58 */	bgt lbl_8071A3C8
/* 8071A274  3C 80 80 72 */	lis r4, lit_6176@ha
/* 8071A278  38 84 C8 B0 */	addi r4, r4, lit_6176@l
/* 8071A27C  54 00 10 3A */	slwi r0, r0, 2
/* 8071A280  7C 04 00 2E */	lwzx r0, r4, r0
/* 8071A284  7C 09 03 A6 */	mtctr r0
/* 8071A288  4E 80 04 20 */	bctr 
lbl_8071A28C:
/* 8071A28C  4B FF D2 59 */	bl demo_camera_start__FP10e_mk_class
/* 8071A290  48 00 01 38 */	b lbl_8071A3C8
lbl_8071A294:
/* 8071A294  4B FF DF A9 */	bl demo_camera_end__FP10e_mk_class
/* 8071A298  48 00 01 30 */	b lbl_8071A3C8
lbl_8071A29C:
/* 8071A29C  4B FF F2 F9 */	bl demo_camera_r04__FP10e_mk_class
/* 8071A2A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071A2A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071A2A8  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 8071A2AC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8071A2B0  41 82 01 18 */	beq lbl_8071A3C8
/* 8071A2B4  3C 60 80 72 */	lis r3, s_ks_sub__FPvPv@ha
/* 8071A2B8  38 63 94 88 */	addi r3, r3, s_ks_sub__FPvPv@l
/* 8071A2BC  7F A4 EB 78 */	mr r4, r29
/* 8071A2C0  4B 90 70 78 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8071A2C4  7C 7C 1B 79 */	or. r28, r3, r3
/* 8071A2C8  41 82 01 00 */	beq lbl_8071A3C8
/* 8071A2CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8071A2D0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8071A2D4  28 04 00 FF */	cmplwi r4, 0xff
/* 8071A2D8  41 82 00 18 */	beq lbl_8071A2F0
/* 8071A2DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071A2E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071A2E4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8071A2E8  7C 05 07 74 */	extsb r5, r0
/* 8071A2EC  4B 91 AF 14 */	b onSwitch__10dSv_info_cFii
lbl_8071A2F0:
/* 8071A2F0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8071A2F4  54 04 46 3E */	srwi r4, r0, 0x18
/* 8071A2F8  28 04 00 FF */	cmplwi r4, 0xff
/* 8071A2FC  41 82 00 18 */	beq lbl_8071A314
/* 8071A300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071A304  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071A308  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8071A30C  7C 05 07 74 */	extsb r5, r0
/* 8071A310  4B 91 AE F0 */	b onSwitch__10dSv_info_cFii
lbl_8071A314:
/* 8071A314  3C 60 80 72 */	lis r3, stringBase0@ha
/* 8071A318  38 63 C7 E8 */	addi r3, r3, stringBase0@l
/* 8071A31C  38 63 00 05 */	addi r3, r3, 5
/* 8071A320  38 80 00 00 */	li r4, 0
/* 8071A324  38 A0 00 04 */	li r5, 4
/* 8071A328  38 C0 00 00 */	li r6, 0
/* 8071A32C  4B 91 32 28 */	b dComIfGp_setNextStage__FPCcsScSc
/* 8071A330  48 00 00 98 */	b lbl_8071A3C8
lbl_8071A334:
/* 8071A334  4B FF FD 39 */	bl demo_camera_bohit__FP10e_mk_class
/* 8071A338  48 00 00 90 */	b lbl_8071A3C8
lbl_8071A33C:
/* 8071A33C  C0 1D 0C 44 */	lfs f0, 0xc44(r29)
/* 8071A340  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8071A344  C0 1D 0C 48 */	lfs f0, 0xc48(r29)
/* 8071A348  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8071A34C  C0 1D 0C 4C */	lfs f0, 0xc4c(r29)
/* 8071A350  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8071A354  C0 1D 0C 38 */	lfs f0, 0xc38(r29)
/* 8071A358  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8071A35C  C0 1D 0C 3C */	lfs f0, 0xc3c(r29)
/* 8071A360  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8071A364  C0 1D 0C 40 */	lfs f0, 0xc40(r29)
/* 8071A368  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8071A36C  38 7E 02 48 */	addi r3, r30, 0x248
/* 8071A370  38 81 00 2C */	addi r4, r1, 0x2c
/* 8071A374  38 A1 00 20 */	addi r5, r1, 0x20
/* 8071A378  4B A6 68 A0 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 8071A37C  38 7E 02 48 */	addi r3, r30, 0x248
/* 8071A380  4B A4 71 2C */	b Start__9dCamera_cFv
/* 8071A384  38 7E 02 48 */	addi r3, r30, 0x248
/* 8071A388  38 80 00 00 */	li r4, 0
/* 8071A38C  4B A4 8C 80 */	b SetTrimSize__9dCamera_cFl
/* 8071A390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071A394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071A398  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8071A39C  4B 92 80 CC */	b reset__14dEvt_control_cFv
/* 8071A3A0  38 00 00 00 */	li r0, 0
/* 8071A3A4  B0 1D 0C 30 */	sth r0, 0xc30(r29)
/* 8071A3A8  B0 1D 0C 32 */	sth r0, 0xc32(r29)
/* 8071A3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071A3B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071A3B4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8071A3B8  38 00 00 02 */	li r0, 2
/* 8071A3BC  B0 03 06 04 */	sth r0, 0x604(r3)
/* 8071A3C0  38 00 00 01 */	li r0, 1
/* 8071A3C4  90 03 06 14 */	stw r0, 0x614(r3)
lbl_8071A3C8:
/* 8071A3C8  A8 1D 0C 30 */	lha r0, 0xc30(r29)
/* 8071A3CC  2C 00 00 00 */	cmpwi r0, 0
/* 8071A3D0  41 82 01 50 */	beq lbl_8071A520
/* 8071A3D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8071A3D8  38 E3 9A 20 */	addi r7, r3, sincosTable___5JMath@l
/* 8071A3DC  39 07 00 04 */	addi r8, r7, 4
/* 8071A3E0  A8 BD 06 B4 */	lha r5, 0x6b4(r29)
/* 8071A3E4  1C 05 2C 00 */	mulli r0, r5, 0x2c00
/* 8071A3E8  7C 04 07 34 */	extsh r4, r0
/* 8071A3EC  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8071A3F0  7C 00 1E 70 */	srawi r0, r0, 3
/* 8071A3F4  54 00 18 38 */	slwi r0, r0, 3
/* 8071A3F8  7C 08 04 2E */	lfsx f0, r8, r0
/* 8071A3FC  C0 3F 02 20 */	lfs f1, 0x220(r31)
/* 8071A400  C1 3D 0C 98 */	lfs f9, 0xc98(r29)
/* 8071A404  EC 09 00 32 */	fmuls f0, f9, f0
/* 8071A408  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071A40C  FC 00 00 1E */	fctiwz f0, f0
/* 8071A410  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8071A414  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 8071A418  C1 1D 0C 44 */	lfs f8, 0xc44(r29)
/* 8071A41C  D1 01 00 44 */	stfs f8, 0x44(r1)
/* 8071A420  C0 7D 0C 48 */	lfs f3, 0xc48(r29)
/* 8071A424  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8071A428  C0 FD 0C 4C */	lfs f7, 0xc4c(r29)
/* 8071A42C  D0 E1 00 4C */	stfs f7, 0x4c(r1)
/* 8071A430  C0 5D 0C 38 */	lfs f2, 0xc38(r29)
/* 8071A434  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8071A438  C0 3D 0C 3C */	lfs f1, 0xc3c(r29)
/* 8071A43C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8071A440  C0 DD 0C 40 */	lfs f6, 0xc40(r29)
/* 8071A444  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 8071A448  1C 05 2A 00 */	mulli r0, r5, 0x2a00
/* 8071A44C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8071A450  7C 60 1E 70 */	srawi r0, r3, 3
/* 8071A454  54 00 18 38 */	slwi r0, r0, 3
/* 8071A458  7C 07 04 2E */	lfsx f0, r7, r0
/* 8071A45C  EC 09 00 32 */	fmuls f0, f9, f0
/* 8071A460  EC A3 00 2A */	fadds f5, f3, f0
/* 8071A464  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 8071A468  7C 60 1E 70 */	srawi r0, r3, 3
/* 8071A46C  54 00 18 38 */	slwi r0, r0, 3
/* 8071A470  7C 07 04 2E */	lfsx f0, r7, r0
/* 8071A474  EC 09 00 32 */	fmuls f0, f9, f0
/* 8071A478  EC 81 00 2A */	fadds f4, f1, f0
/* 8071A47C  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8071A480  1C 05 28 00 */	mulli r0, r5, 0x2800
/* 8071A484  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8071A488  7C 07 04 2E */	lfsx f0, r7, r0
/* 8071A48C  EC 09 00 32 */	fmuls f0, f9, f0
/* 8071A490  EC 68 00 2A */	fadds f3, f8, f0
/* 8071A494  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8071A498  7C 07 04 2E */	lfsx f0, r7, r0
/* 8071A49C  EC 09 00 32 */	fmuls f0, f9, f0
/* 8071A4A0  EC 42 00 2A */	fadds f2, f2, f0
/* 8071A4A4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8071A4A8  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 8071A4AC  7C 08 04 2E */	lfsx f0, r8, r0
/* 8071A4B0  EC 09 00 32 */	fmuls f0, f9, f0
/* 8071A4B4  EC 27 00 2A */	fadds f1, f7, f0
/* 8071A4B8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8071A4BC  EC 06 00 2A */	fadds f0, f6, f0
/* 8071A4C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8071A4C4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8071A4C8  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8071A4CC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8071A4D0  D0 41 00 08 */	stfs f2, 8(r1)
/* 8071A4D4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8071A4D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8071A4DC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8071A4E0  38 81 00 14 */	addi r4, r1, 0x14
/* 8071A4E4  38 A1 00 08 */	addi r5, r1, 8
/* 8071A4E8  C0 3D 0C 80 */	lfs f1, 0xc80(r29)
/* 8071A4EC  4B A6 66 54 */	b Set__9dCamera_cF4cXyz4cXyzsf
/* 8071A4F0  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 8071A4F4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8071A4F8  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 8071A4FC  4B B5 55 84 */	b cLib_addCalc0__FPfff
/* 8071A500  A8 7D 0C 34 */	lha r3, 0xc34(r29)
/* 8071A504  38 03 00 01 */	addi r0, r3, 1
/* 8071A508  B0 1D 0C 34 */	sth r0, 0xc34(r29)
/* 8071A50C  A8 1D 0C 34 */	lha r0, 0xc34(r29)
/* 8071A510  2C 00 27 10 */	cmpwi r0, 0x2710
/* 8071A514  40 81 00 0C */	ble lbl_8071A520
/* 8071A518  38 00 27 10 */	li r0, 0x2710
/* 8071A51C  B0 1D 0C 34 */	sth r0, 0xc34(r29)
lbl_8071A520:
/* 8071A520  39 61 00 70 */	addi r11, r1, 0x70
/* 8071A524  4B C4 7D 00 */	b _restgpr_28
/* 8071A528  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8071A52C  7C 08 03 A6 */	mtlr r0
/* 8071A530  38 21 00 70 */	addi r1, r1, 0x70
/* 8071A534  4E 80 00 20 */	blr 
