lbl_8072B09C:
/* 8072B09C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8072B0A0  7C 08 02 A6 */	mflr r0
/* 8072B0A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8072B0A8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8072B0AC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8072B0B0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8072B0B4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8072B0B8  39 61 00 40 */	addi r11, r1, 0x40
/* 8072B0BC  4B C3 71 1D */	bl _savegpr_28
/* 8072B0C0  7C 7C 1B 78 */	mr r28, r3
/* 8072B0C4  3C 60 80 73 */	lis r3, lit_3789@ha /* 0x8072C180@ha */
/* 8072B0C8  3B C3 C1 80 */	addi r30, r3, lit_3789@l /* 0x8072C180@l */
/* 8072B0CC  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8072B0D0  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x8072C434@ha */
/* 8072B0D4  38 63 C4 34 */	addi r3, r3, l_HIO@l /* 0x8072C434@l */
/* 8072B0D8  C3 C3 00 1C */	lfs f30, 0x1c(r3)
/* 8072B0DC  4B A3 43 49 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 8072B0E0  2C 03 00 00 */	cmpwi r3, 0
/* 8072B0E4  41 82 00 24 */	beq lbl_8072B108
/* 8072B0E8  A8 1C 06 A8 */	lha r0, 0x6a8(r28)
/* 8072B0EC  2C 00 00 00 */	cmpwi r0, 0
/* 8072B0F0  40 82 00 28 */	bne lbl_8072B118
/* 8072B0F4  C3 FE 00 A0 */	lfs f31, 0xa0(r30)
/* 8072B0F8  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x8072C434@ha */
/* 8072B0FC  38 63 C4 34 */	addi r3, r3, l_HIO@l /* 0x8072C434@l */
/* 8072B100  C3 C3 00 18 */	lfs f30, 0x18(r3)
/* 8072B104  48 00 00 14 */	b lbl_8072B118
lbl_8072B108:
/* 8072B108  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x8072C434@ha */
/* 8072B10C  38 63 C4 34 */	addi r3, r3, l_HIO@l /* 0x8072C434@l */
/* 8072B110  A8 03 00 14 */	lha r0, 0x14(r3)
/* 8072B114  B0 1C 06 A8 */	sth r0, 0x6a8(r28)
lbl_8072B118:
/* 8072B118  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 8072B11C  FC 20 F8 90 */	fmr f1, f31
/* 8072B120  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8072B124  FC 60 F0 90 */	fmr f3, f30
/* 8072B128  4B B4 49 15 */	bl cLib_addCalc2__FPffff
/* 8072B12C  4B 8E D1 7D */	bl cDmrNowMidnaTalk__Fv
/* 8072B130  2C 03 00 00 */	cmpwi r3, 0
/* 8072B134  40 82 00 18 */	bne lbl_8072B14C
/* 8072B138  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072B13C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072B140  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8072B144  28 00 00 00 */	cmplwi r0, 0
/* 8072B148  41 82 00 0C */	beq lbl_8072B154
lbl_8072B14C:
/* 8072B14C  38 60 00 01 */	li r3, 1
/* 8072B150  48 00 04 5C */	b lbl_8072B5AC
lbl_8072B154:
/* 8072B154  80 9C 05 B8 */	lwz r4, 0x5b8(r28)
/* 8072B158  2C 04 00 00 */	cmpwi r4, 0
/* 8072B15C  41 82 00 30 */	beq lbl_8072B18C
/* 8072B160  7F E3 FB 78 */	mr r3, r31
/* 8072B164  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8072B168  7C 05 07 74 */	extsb r5, r0
/* 8072B16C  4B 90 A1 F5 */	bl isSwitch__10dSv_info_cCFii
/* 8072B170  2C 03 00 00 */	cmpwi r3, 0
/* 8072B174  41 82 00 10 */	beq lbl_8072B184
/* 8072B178  38 00 00 00 */	li r0, 0
/* 8072B17C  90 1C 05 B8 */	stw r0, 0x5b8(r28)
/* 8072B180  48 00 00 0C */	b lbl_8072B18C
lbl_8072B184:
/* 8072B184  38 60 00 01 */	li r3, 1
/* 8072B188  48 00 04 24 */	b lbl_8072B5AC
lbl_8072B18C:
/* 8072B18C  A8 7C 06 98 */	lha r3, 0x698(r28)
/* 8072B190  38 03 00 01 */	addi r0, r3, 1
/* 8072B194  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 8072B198  38 60 00 00 */	li r3, 0
/* 8072B19C  38 00 00 04 */	li r0, 4
/* 8072B1A0  7C 09 03 A6 */	mtctr r0
lbl_8072B1A4:
/* 8072B1A4  38 A3 06 A2 */	addi r5, r3, 0x6a2
/* 8072B1A8  7C 9C 2A AE */	lhax r4, r28, r5
/* 8072B1AC  2C 04 00 00 */	cmpwi r4, 0
/* 8072B1B0  41 82 00 0C */	beq lbl_8072B1BC
/* 8072B1B4  38 04 FF FF */	addi r0, r4, -1
/* 8072B1B8  7C 1C 2B 2E */	sthx r0, r28, r5
lbl_8072B1BC:
/* 8072B1BC  38 63 00 02 */	addi r3, r3, 2
/* 8072B1C0  42 00 FF E4 */	bdnz lbl_8072B1A4
/* 8072B1C4  A8 7C 06 AA */	lha r3, 0x6aa(r28)
/* 8072B1C8  2C 03 00 00 */	cmpwi r3, 0
/* 8072B1CC  41 82 00 0C */	beq lbl_8072B1D8
/* 8072B1D0  38 03 FF FF */	addi r0, r3, -1
/* 8072B1D4  B0 1C 06 AA */	sth r0, 0x6aa(r28)
lbl_8072B1D8:
/* 8072B1D8  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 8072B1DC  83 A3 00 04 */	lwz r29, 4(r3)
/* 8072B1E0  A8 1C 06 9A */	lha r0, 0x69a(r28)
/* 8072B1E4  2C 00 00 03 */	cmpwi r0, 3
/* 8072B1E8  41 82 00 0C */	beq lbl_8072B1F4
/* 8072B1EC  2C 00 00 01 */	cmpwi r0, 1
/* 8072B1F0  40 82 01 70 */	bne lbl_8072B360
lbl_8072B1F4:
/* 8072B1F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072B1F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072B1FC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8072B200  3C 80 80 73 */	lis r4, stick_d@ha /* 0x8072C28C@ha */
/* 8072B204  38 84 C2 8C */	addi r4, r4, stick_d@l /* 0x8072C28C@l */
/* 8072B208  88 1C 06 AC */	lbz r0, 0x6ac(r28)
/* 8072B20C  7C 00 07 74 */	extsb r0, r0
/* 8072B210  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8072B214  7C 84 02 14 */	add r4, r4, r0
/* 8072B218  88 84 FF F6 */	lbz r4, -0xa(r4)
/* 8072B21C  7C 84 07 74 */	extsb r4, r4
/* 8072B220  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8072B224  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8072B228  7D 89 03 A6 */	mtctr r12
/* 8072B22C  4E 80 04 21 */	bctrl 
/* 8072B230  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8072B234  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8072B238  80 84 00 00 */	lwz r4, 0(r4)
/* 8072B23C  4B C1 B2 75 */	bl PSMTXCopy
/* 8072B240  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8072B244  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8072B248  80 63 00 00 */	lwz r3, 0(r3)
/* 8072B24C  3C 80 80 73 */	lis r4, stick_d@ha /* 0x8072C28C@ha */
/* 8072B250  38 84 C2 8C */	addi r4, r4, stick_d@l /* 0x8072C28C@l */
/* 8072B254  88 1C 06 AC */	lbz r0, 0x6ac(r28)
/* 8072B258  7C 00 07 74 */	extsb r0, r0
/* 8072B25C  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8072B260  7C 84 02 14 */	add r4, r4, r0
/* 8072B264  A8 84 FF F8 */	lha r4, -8(r4)
/* 8072B268  4B 8E 11 CD */	bl mDoMtx_YrotM__FPA4_fs
/* 8072B26C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8072B270  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8072B274  80 63 00 00 */	lwz r3, 0(r3)
/* 8072B278  3C 80 80 73 */	lis r4, stick_d@ha /* 0x8072C28C@ha */
/* 8072B27C  38 84 C2 8C */	addi r4, r4, stick_d@l /* 0x8072C28C@l */
/* 8072B280  88 1C 06 AC */	lbz r0, 0x6ac(r28)
/* 8072B284  7C 00 07 74 */	extsb r0, r0
/* 8072B288  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8072B28C  7C 84 02 14 */	add r4, r4, r0
/* 8072B290  A8 84 FF FA */	lha r4, -6(r4)
/* 8072B294  4B 8E 11 09 */	bl mDoMtx_XrotM__FPA4_fs
/* 8072B298  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8072B29C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8072B2A0  80 63 00 00 */	lwz r3, 0(r3)
/* 8072B2A4  3C 80 80 73 */	lis r4, stick_d@ha /* 0x8072C28C@ha */
/* 8072B2A8  38 84 C2 8C */	addi r4, r4, stick_d@l /* 0x8072C28C@l */
/* 8072B2AC  88 1C 06 AC */	lbz r0, 0x6ac(r28)
/* 8072B2B0  7C 00 07 74 */	extsb r0, r0
/* 8072B2B4  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8072B2B8  7C 84 02 14 */	add r4, r4, r0
/* 8072B2BC  A8 84 FF FC */	lha r4, -4(r4)
/* 8072B2C0  4B 8E 12 0D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8072B2C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8072B2C8  3C 60 80 73 */	lis r3, stick_d@ha /* 0x8072C28C@ha */
/* 8072B2CC  38 63 C2 8C */	addi r3, r3, stick_d@l /* 0x8072C28C@l */
/* 8072B2D0  88 1C 06 AC */	lbz r0, 0x6ac(r28)
/* 8072B2D4  7C 00 07 74 */	extsb r0, r0
/* 8072B2D8  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8072B2DC  7C 63 02 14 */	add r3, r3, r0
/* 8072B2E0  A8 03 FF FE */	lha r0, -2(r3)
/* 8072B2E4  C8 5E 00 B8 */	lfd f2, 0xb8(r30)
/* 8072B2E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8072B2EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072B2F0  3C 00 43 30 */	lis r0, 0x4330
/* 8072B2F4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8072B2F8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8072B2FC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8072B300  FC 60 08 90 */	fmr f3, f1
/* 8072B304  38 60 00 01 */	li r3, 1
/* 8072B308  4B B4 5B 55 */	bl MtxTrans__FfffUc
/* 8072B30C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8072B310  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8072B314  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8072B318  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8072B31C  38 61 00 14 */	addi r3, r1, 0x14
/* 8072B320  38 9C 05 BC */	addi r4, r28, 0x5bc
/* 8072B324  4B B4 5B C9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8072B328  A8 1C 06 9A */	lha r0, 0x69a(r28)
/* 8072B32C  2C 00 00 03 */	cmpwi r0, 3
/* 8072B330  40 82 00 30 */	bne lbl_8072B360
/* 8072B334  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8072B338  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8072B33C  80 63 00 00 */	lwz r3, 0(r3)
/* 8072B340  38 9D 00 24 */	addi r4, r29, 0x24
/* 8072B344  4B C1 B1 6D */	bl PSMTXCopy
/* 8072B348  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 8072B34C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8072B350  C0 1C 05 C0 */	lfs f0, 0x5c0(r28)
/* 8072B354  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8072B358  C0 1C 05 C4 */	lfs f0, 0x5c4(r28)
/* 8072B35C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8072B360:
/* 8072B360  7F 83 E3 78 */	mr r3, r28
/* 8072B364  4B FF F8 05 */	bl action__FP10e_nz_class
/* 8072B368  7C 60 07 74 */	extsb r0, r3
/* 8072B36C  2C 00 00 03 */	cmpwi r0, 3
/* 8072B370  41 82 00 B4 */	beq lbl_8072B424
/* 8072B374  C0 3C 05 D8 */	lfs f1, 0x5d8(r28)
/* 8072B378  C0 1C 05 DC */	lfs f0, 0x5dc(r28)
/* 8072B37C  EC 01 00 2A */	fadds f0, f1, f0
/* 8072B380  D0 1C 05 D8 */	stfs f0, 0x5d8(r28)
/* 8072B384  C0 3C 05 DC */	lfs f1, 0x5dc(r28)
/* 8072B388  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8072B38C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8072B390  D0 1C 05 DC */	stfs f0, 0x5dc(r28)
/* 8072B394  C0 3C 05 D8 */	lfs f1, 0x5d8(r28)
/* 8072B398  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8072B39C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072B3A0  40 80 00 0C */	bge lbl_8072B3AC
/* 8072B3A4  D0 1C 05 DC */	stfs f0, 0x5dc(r28)
/* 8072B3A8  D0 1C 05 D8 */	stfs f0, 0x5d8(r28)
lbl_8072B3AC:
/* 8072B3AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072B3B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072B3B4  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8072B3B8  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8072B3BC  C0 1C 05 D8 */	lfs f0, 0x5d8(r28)
/* 8072B3C0  EC 42 00 2A */	fadds f2, f2, f0
/* 8072B3C4  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 8072B3C8  4B C1 B5 21 */	bl PSMTXTrans
/* 8072B3CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072B3D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072B3D4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8072B3D8  4B 8E 10 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 8072B3DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072B3E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072B3E4  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 8072B3E8  4B 8E 0F B5 */	bl mDoMtx_XrotM__FPA4_fs
/* 8072B3EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072B3F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072B3F4  A8 9C 04 E8 */	lha r4, 0x4e8(r28)
/* 8072B3F8  4B 8E 10 D5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8072B3FC  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x8072C434@ha */
/* 8072B400  38 63 C4 34 */	addi r3, r3, l_HIO@l /* 0x8072C434@l */
/* 8072B404  C0 23 00 08 */	lfs f1, 8(r3)
/* 8072B408  FC 40 08 90 */	fmr f2, f1
/* 8072B40C  FC 60 08 90 */	fmr f3, f1
/* 8072B410  4B 8E 1A 29 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8072B414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072B418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8072B41C  38 9D 00 24 */	addi r4, r29, 0x24
/* 8072B420  4B C1 B0 91 */	bl PSMTXCopy
lbl_8072B424:
/* 8072B424  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8072B428  7C 03 07 74 */	extsb r3, r0
/* 8072B42C  4B 90 1C 41 */	bl dComIfGp_getReverb__Fi
/* 8072B430  7C 65 1B 78 */	mr r5, r3
/* 8072B434  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 8072B438  38 80 00 00 */	li r4, 0
/* 8072B43C  4B 8E 5C 75 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8072B440  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 8072B444  4B 8E 5D A9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8072B448  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8072B44C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8072B450  38 63 01 20 */	addi r3, r3, 0x120
/* 8072B454  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8072B458  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8072B45C  80 84 00 00 */	lwz r4, 0(r4)
/* 8072B460  4B C1 B0 51 */	bl PSMTXCopy
/* 8072B464  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8072B468  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8072B46C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8072B470  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8072B474  38 61 00 14 */	addi r3, r1, 0x14
/* 8072B478  38 9C 05 38 */	addi r4, r28, 0x538
/* 8072B47C  4B B4 5A 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8072B480  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8072B484  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 8072B488  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8072B48C  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8072B490  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8072B494  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 8072B498  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 8072B49C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8072B4A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8072B4A4  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8072B4A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8072B4AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8072B4B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8072B4B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8072B4B8  38 61 00 14 */	addi r3, r1, 0x14
/* 8072B4BC  38 81 00 08 */	addi r4, r1, 8
/* 8072B4C0  4B B4 5A 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8072B4C4  C0 3C 05 F0 */	lfs f1, 0x5f0(r28)
/* 8072B4C8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8072B4CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072B4D0  40 80 00 2C */	bge lbl_8072B4FC
/* 8072B4D4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8072B4D8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8072B4DC  EC 01 00 2A */	fadds f0, f1, f0
/* 8072B4E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8072B4E4  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8072B4E8  54 00 00 3E */	slwi r0, r0, 0
/* 8072B4EC  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 8072B4F0  38 00 00 00 */	li r0, 0
/* 8072B4F4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8072B4F8  48 00 00 74 */	b lbl_8072B56C
lbl_8072B4FC:
/* 8072B4FC  A8 1C 06 9A */	lha r0, 0x69a(r28)
/* 8072B500  2C 00 00 03 */	cmpwi r0, 3
/* 8072B504  40 82 00 54 */	bne lbl_8072B558
/* 8072B508  3C 60 40 00 */	lis r3, 0x4000 /* 0x40000002@ha */
/* 8072B50C  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x40000002@l */
/* 8072B510  90 1C 09 30 */	stw r0, 0x930(r28)
/* 8072B514  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 8072B518  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8072B51C  41 82 00 24 */	beq lbl_8072B540
/* 8072B520  38 7F 5B 6C */	addi r3, r31, 0x5b6c
/* 8072B524  7F 84 E3 78 */	mr r4, r28
/* 8072B528  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8072B52C  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 8072B530  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 8072B534  38 A0 60 00 */	li r5, 0x6000
/* 8072B538  38 C0 00 01 */	li r6, 1
/* 8072B53C  4B 94 87 CD */	bl request__10dAttLook_cFP10fopAc_ac_cfffsi
lbl_8072B540:
/* 8072B540  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8072B544  54 00 00 3E */	slwi r0, r0, 0
/* 8072B548  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 8072B54C  38 00 00 00 */	li r0, 0
/* 8072B550  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8072B554  48 00 00 18 */	b lbl_8072B56C
lbl_8072B558:
/* 8072B558  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8072B55C  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 8072B560  90 1C 09 30 */	stw r0, 0x930(r28)
/* 8072B564  38 00 00 04 */	li r0, 4
/* 8072B568  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_8072B56C:
/* 8072B56C  38 7C 0A 2C */	addi r3, r28, 0xa2c
/* 8072B570  38 81 00 08 */	addi r4, r1, 8
/* 8072B574  4B B4 40 D5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8072B578  38 7C 0A 2C */	addi r3, r28, 0xa2c
/* 8072B57C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8072B580  3C 80 80 73 */	lis r4, l_HIO@ha /* 0x8072C434@ha */
/* 8072B584  38 84 C4 34 */	addi r4, r4, l_HIO@l /* 0x8072C434@l */
/* 8072B588  C0 04 00 08 */	lfs f0, 8(r4)
/* 8072B58C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8072B590  4B B4 41 79 */	bl SetR__8cM3dGSphFf
/* 8072B594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072B598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072B59C  38 63 23 3C */	addi r3, r3, 0x233c
/* 8072B5A0  38 9C 09 08 */	addi r4, r28, 0x908
/* 8072B5A4  4B B3 96 05 */	bl Set__4cCcSFP8cCcD_Obj
/* 8072B5A8  38 60 00 01 */	li r3, 1
lbl_8072B5AC:
/* 8072B5AC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8072B5B0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8072B5B4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8072B5B8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8072B5BC  39 61 00 40 */	addi r11, r1, 0x40
/* 8072B5C0  4B C3 6C 65 */	bl _restgpr_28
/* 8072B5C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8072B5C8  7C 08 03 A6 */	mtlr r0
/* 8072B5CC  38 21 00 60 */	addi r1, r1, 0x60
/* 8072B5D0  4E 80 00 20 */	blr 
