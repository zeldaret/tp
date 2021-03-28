lbl_80A6A1B8:
/* 80A6A1B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6A1BC  7C 08 02 A6 */	mflr r0
/* 80A6A1C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6A1C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6A1C8  4B 8F 80 14 */	b _savegpr_29
/* 80A6A1CC  7C 9D 23 78 */	mr r29, r4
/* 80A6A1D0  3C 80 80 A7 */	lis r4, lit_3769@ha
/* 80A6A1D4  3B C4 A9 7C */	addi r30, r4, lit_3769@l
/* 80A6A1D8  A8 9D 00 18 */	lha r4, 0x18(r29)
/* 80A6A1DC  38 04 00 01 */	addi r0, r4, 1
/* 80A6A1E0  B0 1D 00 18 */	sth r0, 0x18(r29)
/* 80A6A1E4  38 80 00 00 */	li r4, 0
/* 80A6A1E8  38 00 00 02 */	li r0, 2
/* 80A6A1EC  7C 09 03 A6 */	mtctr r0
lbl_80A6A1F0:
/* 80A6A1F0  38 C4 00 38 */	addi r6, r4, 0x38
/* 80A6A1F4  7C BD 32 AE */	lhax r5, r29, r6
/* 80A6A1F8  2C 05 00 00 */	cmpwi r5, 0
/* 80A6A1FC  41 82 00 0C */	beq lbl_80A6A208
/* 80A6A200  38 05 FF FF */	addi r0, r5, -1
/* 80A6A204  7C 1D 33 2E */	sthx r0, r29, r6
lbl_80A6A208:
/* 80A6A208  38 84 00 02 */	addi r4, r4, 2
/* 80A6A20C  42 00 FF E4 */	bdnz lbl_80A6A1F0
/* 80A6A210  A8 1D 00 1A */	lha r0, 0x1a(r29)
/* 80A6A214  2C 00 00 00 */	cmpwi r0, 0
/* 80A6A218  41 82 00 08 */	beq lbl_80A6A220
/* 80A6A21C  48 00 00 0C */	b lbl_80A6A228
lbl_80A6A220:
/* 80A6A220  7F A4 EB 78 */	mr r4, r29
/* 80A6A224  4B FF FB 6D */	bl npc_lf_move__FP10fopAc_ac_cP4lf_s
lbl_80A6A228:
/* 80A6A228  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A6A22C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A6A230  80 63 00 00 */	lwz r3, 0(r3)
/* 80A6A234  A8 9D 00 12 */	lha r4, 0x12(r29)
/* 80A6A238  4B 5A 21 A4 */	b mDoMtx_YrotS__FPA4_fs
/* 80A6A23C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A6A240  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A6A244  80 63 00 00 */	lwz r3, 0(r3)
/* 80A6A248  A8 9D 00 10 */	lha r4, 0x10(r29)
/* 80A6A24C  4B 5A 21 50 */	b mDoMtx_XrotM__FPA4_fs
/* 80A6A250  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80A6A254  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A6A258  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A6A25C  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80A6A260  3C 60 80 A7 */	lis r3, l_HIO@ha
/* 80A6A264  3B E3 AA A0 */	addi r31, r3, l_HIO@l
/* 80A6A268  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80A6A26C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A6A270  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A6A274  38 61 00 08 */	addi r3, r1, 8
/* 80A6A278  7C 64 1B 78 */	mr r4, r3
/* 80A6A27C  4B 80 6C 70 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A6A280  38 7D 00 04 */	addi r3, r29, 4
/* 80A6A284  38 81 00 08 */	addi r4, r1, 8
/* 80A6A288  7C 65 1B 78 */	mr r5, r3
/* 80A6A28C  4B 8D CE 04 */	b PSVECAdd
/* 80A6A290  38 7D 00 3C */	addi r3, r29, 0x3c
/* 80A6A294  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80A6A298  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80A6A29C  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 80A6A2A0  4B 80 57 9C */	b cLib_addCalc2__FPffff
/* 80A6A2A4  38 7D 00 5C */	addi r3, r29, 0x5c
/* 80A6A2A8  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80A6A2AC  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80A6A2B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A6A2B4  EC 21 00 2A */	fadds f1, f1, f0
/* 80A6A2B8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80A6A2BC  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80A6A2C0  4B 80 57 7C */	b cLib_addCalc2__FPffff
/* 80A6A2C4  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80A6A2C8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80A6A2CC  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80A6A2D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A6A2D4  EC 02 00 2A */	fadds f0, f2, f0
/* 80A6A2D8  FC 00 00 1E */	fctiwz f0, f0
/* 80A6A2DC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A6A2E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A6A2E4  B0 1D 00 4E */	sth r0, 0x4e(r29)
/* 80A6A2E8  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 80A6A2EC  A8 1D 00 4E */	lha r0, 0x4e(r29)
/* 80A6A2F0  7C 03 02 14 */	add r0, r3, r0
/* 80A6A2F4  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 80A6A2F8  38 60 00 00 */	li r3, 0
/* 80A6A2FC  38 80 00 00 */	li r4, 0
/* 80A6A300  38 A0 00 00 */	li r5, 0
/* 80A6A304  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha
/* 80A6A308  39 06 9A 20 */	addi r8, r6, sincosTable___5JMath@l
/* 80A6A30C  3C C0 80 A7 */	lis r6, wp@ha
/* 80A6A310  38 E6 AA 1C */	addi r7, r6, wp@l
/* 80A6A314  38 00 00 03 */	li r0, 3
/* 80A6A318  7C 09 03 A6 */	mtctr r0
lbl_80A6A31C:
/* 80A6A31C  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 80A6A320  7C 00 2A 14 */	add r0, r0, r5
/* 80A6A324  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A6A328  7C 48 04 2E */	lfsx f2, r8, r0
/* 80A6A32C  7C 27 24 2E */	lfsx f1, r7, r4
/* 80A6A330  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80A6A334  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80A6A338  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A6A33C  FC 00 00 1E */	fctiwz f0, f0
/* 80A6A340  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A6A344  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80A6A348  38 03 00 52 */	addi r0, r3, 0x52
/* 80A6A34C  7C DD 03 2E */	sthx r6, r29, r0
/* 80A6A350  38 63 00 02 */	addi r3, r3, 2
/* 80A6A354  38 84 00 04 */	addi r4, r4, 4
/* 80A6A358  38 A5 C5 68 */	addi r5, r5, -15000
/* 80A6A35C  42 00 FF C0 */	bdnz lbl_80A6A31C
/* 80A6A360  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 80A6A364  38 03 E4 A8 */	addi r0, r3, -7000
/* 80A6A368  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A6A36C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A6A370  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A6A374  7C 43 04 2E */	lfsx f2, r3, r0
/* 80A6A378  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80A6A37C  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80A6A380  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80A6A384  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A6A388  FC 00 00 1E */	fctiwz f0, f0
/* 80A6A38C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A6A390  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A6A394  B0 1D 00 50 */	sth r0, 0x50(r29)
/* 80A6A398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A6A39C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A6A3A0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80A6A3A4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80A6A3A8  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 80A6A3AC  4B 8D C5 3C */	b PSMTXTrans
/* 80A6A3B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A6A3B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A6A3B8  A8 9D 00 12 */	lha r4, 0x12(r29)
/* 80A6A3BC  A8 1D 00 50 */	lha r0, 0x50(r29)
/* 80A6A3C0  7C 04 02 14 */	add r0, r4, r0
/* 80A6A3C4  7C 04 07 34 */	extsh r4, r0
/* 80A6A3C8  4B 5A 20 6C */	b mDoMtx_YrotM__FPA4_fs
/* 80A6A3CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A6A3D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A6A3D4  A8 9D 00 10 */	lha r4, 0x10(r29)
/* 80A6A3D8  4B 5A 1F C4 */	b mDoMtx_XrotM__FPA4_fs
/* 80A6A3DC  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80A6A3E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80A6A3E4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A6A3E8  FC 40 08 90 */	fmr f2, f1
/* 80A6A3EC  FC 60 08 90 */	fmr f3, f1
/* 80A6A3F0  4B 5A 2A 48 */	b scaleM__14mDoMtx_stack_cFfff
/* 80A6A3F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A6A3F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A6A3FC  80 9D 00 00 */	lwz r4, 0(r29)
/* 80A6A400  38 84 00 24 */	addi r4, r4, 0x24
/* 80A6A404  4B 8D C0 AC */	b PSMTXCopy
/* 80A6A408  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6A40C  4B 8F 7E 1C */	b _restgpr_29
/* 80A6A410  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6A414  7C 08 03 A6 */	mtlr r0
/* 80A6A418  38 21 00 30 */	addi r1, r1, 0x30
/* 80A6A41C  4E 80 00 20 */	blr 
