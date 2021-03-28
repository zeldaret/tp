lbl_80D37058:
/* 80D37058  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D3705C  7C 08 02 A6 */	mflr r0
/* 80D37060  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D37064  39 61 00 30 */	addi r11, r1, 0x30
/* 80D37068  4B 62 B1 70 */	b _savegpr_28
/* 80D3706C  7C 7E 1B 78 */	mr r30, r3
/* 80D37070  3C 60 80 D3 */	lis r3, lit_3883@ha
/* 80D37074  3B E3 78 8C */	addi r31, r3, lit_3883@l
/* 80D37078  A8 7E 08 36 */	lha r3, 0x836(r30)
/* 80D3707C  38 03 00 01 */	addi r0, r3, 1
/* 80D37080  B0 1E 08 36 */	sth r0, 0x836(r30)
/* 80D37084  38 60 00 00 */	li r3, 0
/* 80D37088  38 00 00 02 */	li r0, 2
/* 80D3708C  7C 09 03 A6 */	mtctr r0
lbl_80D37090:
/* 80D37090  38 A3 08 30 */	addi r5, r3, 0x830
/* 80D37094  7C 9E 2A AE */	lhax r4, r30, r5
/* 80D37098  2C 04 00 00 */	cmpwi r4, 0
/* 80D3709C  41 82 00 0C */	beq lbl_80D370A8
/* 80D370A0  38 04 FF FF */	addi r0, r4, -1
/* 80D370A4  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80D370A8:
/* 80D370A8  38 63 00 02 */	addi r3, r3, 2
/* 80D370AC  42 00 FF E4 */	bdnz lbl_80D37090
/* 80D370B0  A8 7E 08 34 */	lha r3, 0x834(r30)
/* 80D370B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D370B8  41 82 00 0C */	beq lbl_80D370C4
/* 80D370BC  38 03 FF FF */	addi r0, r3, -1
/* 80D370C0  B0 1E 08 34 */	sth r0, 0x834(r30)
lbl_80D370C4:
/* 80D370C4  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 80D370C8  90 01 00 08 */	stw r0, 8(r1)
/* 80D370CC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80D370D0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80D370D4  38 81 00 08 */	addi r4, r1, 8
/* 80D370D8  4B 2E 27 20 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D370DC  28 03 00 00 */	cmplwi r3, 0
/* 80D370E0  41 82 00 98 */	beq lbl_80D37178
/* 80D370E4  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80D370E8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D370EC  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 80D370F0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D370F4  80 63 05 E0 */	lwz r3, 0x5e0(r3)
/* 80D370F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80D370FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D37100  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D37104  38 63 03 00 */	addi r3, r3, 0x300
/* 80D37108  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80D3710C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80D37110  80 84 00 00 */	lwz r4, 0(r4)
/* 80D37114  4B 60 F3 9C */	b PSMTXCopy
/* 80D37118  A8 1E 08 36 */	lha r0, 0x836(r30)
/* 80D3711C  1C 00 15 18 */	mulli r0, r0, 0x1518
/* 80D37120  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D37124  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D37128  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D3712C  7C 43 04 2E */	lfsx f2, r3, r0
/* 80D37130  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80D37134  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80D37138  80 63 00 00 */	lwz r3, 0(r3)
/* 80D3713C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80D37140  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80D37144  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D37148  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3714C  FC 00 00 1E */	fctiwz f0, f0
/* 80D37150  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D37154  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D37158  4B 2D 52 44 */	b mDoMtx_XrotM__FPA4_fs
/* 80D3715C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80D37160  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80D37164  80 63 00 00 */	lwz r3, 0(r3)
/* 80D37168  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80D3716C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D37170  4B 60 F3 40 */	b PSMTXCopy
/* 80D37174  48 00 00 40 */	b lbl_80D371B4
lbl_80D37178:
/* 80D37178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3717C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D37180  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D37184  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D37188  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D3718C  4B 60 F7 5C */	b PSMTXTrans
/* 80D37190  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D37194  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D37198  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D3719C  4B 2D 52 98 */	b mDoMtx_YrotM__FPA4_fs
/* 80D371A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D371A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D371A8  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80D371AC  38 84 00 24 */	addi r4, r4, 0x24
/* 80D371B0  4B 60 F3 00 */	b PSMTXCopy
lbl_80D371B4:
/* 80D371B4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D371B8  38 63 00 24 */	addi r3, r3, 0x24
/* 80D371BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D371C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D371C4  4B 60 F2 EC */	b PSMTXCopy
/* 80D371C8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D371CC  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80D371D0  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80D371D4  4B 2D 5B C8 */	b transM__14mDoMtx_stack_cFfff
/* 80D371D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D371DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D371E0  38 80 40 00 */	li r4, 0x4000
/* 80D371E4  4B 2D 52 50 */	b mDoMtx_YrotM__FPA4_fs
/* 80D371E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D371EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D371F0  38 80 08 34 */	li r4, 0x834
/* 80D371F4  4B 2D 51 A8 */	b mDoMtx_XrotM__FPA4_fs
/* 80D371F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D371FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D37200  38 80 00 00 */	li r4, 0
/* 80D37204  4B 2D 52 C8 */	b mDoMtx_ZrotM__FPA4_fs
/* 80D37208  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D3720C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D37210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D37214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D37218  38 84 00 24 */	addi r4, r4, 0x24
/* 80D3721C  4B 60 F2 94 */	b PSMTXCopy
/* 80D37220  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D37224  4B 2D 62 04 */	b play__14mDoExt_baseAnmFv
/* 80D37228  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80D3722C  4B 2D 61 FC */	b play__14mDoExt_baseAnmFv
/* 80D37230  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D37234  38 80 00 00 */	li r4, 0
/* 80D37238  38 A0 00 00 */	li r5, 0
/* 80D3723C  38 C0 00 00 */	li r6, 0
/* 80D37240  4B 2D 93 88 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80D37244  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D37248  4B 2D 94 64 */	b modelCalc__14mDoExt_McaMorfFv
/* 80D3724C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D37250  38 63 00 24 */	addi r3, r3, 0x24
/* 80D37254  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D37258  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D3725C  4B 60 F2 54 */	b PSMTXCopy
/* 80D37260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D37264  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 80D37268  3B 9E 05 80 */	addi r28, r30, 0x580
/* 80D3726C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80D37270  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80D37274  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80D37278  4B 2D 5B 24 */	b transM__14mDoMtx_stack_cFfff
/* 80D3727C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80D37280  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80D37284  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80D37288  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80D3728C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80D37290  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80D37294  A8 7C 00 00 */	lha r3, 0(r28)
/* 80D37298  38 03 00 01 */	addi r0, r3, 1
/* 80D3729C  B0 1C 00 00 */	sth r0, 0(r28)
/* 80D372A0  7F C3 F3 78 */	mr r3, r30
/* 80D372A4  7F 84 E3 78 */	mr r4, r28
/* 80D372A8  4B FF F9 F9 */	bl tail_control__FP10fopAc_ac_cP9wf_tail_s
/* 80D372AC  7F 83 E3 78 */	mr r3, r28
/* 80D372B0  4B FF FC E1 */	bl tail_mtxset__FP9wf_tail_s
/* 80D372B4  38 60 00 01 */	li r3, 1
/* 80D372B8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D372BC  4B 62 AF 68 */	b _restgpr_28
/* 80D372C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D372C4  7C 08 03 A6 */	mtlr r0
/* 80D372C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80D372CC  4E 80 00 20 */	blr 
