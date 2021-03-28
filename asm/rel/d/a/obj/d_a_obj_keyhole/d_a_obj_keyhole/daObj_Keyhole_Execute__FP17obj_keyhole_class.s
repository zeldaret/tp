lbl_80C427D0:
/* 80C427D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C427D4  7C 08 02 A6 */	mflr r0
/* 80C427D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C427DC  39 61 00 50 */	addi r11, r1, 0x50
/* 80C427E0  4B 71 F9 FC */	b _savegpr_29
/* 80C427E4  7C 7E 1B 78 */	mr r30, r3
/* 80C427E8  3C 60 80 C4 */	lis r3, lit_3655@ha
/* 80C427EC  3B E3 39 E4 */	addi r31, r3, lit_3655@l
/* 80C427F0  A8 7E 06 1A */	lha r3, 0x61a(r30)
/* 80C427F4  38 03 00 01 */	addi r0, r3, 1
/* 80C427F8  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 80C427FC  38 60 00 00 */	li r3, 0
/* 80C42800  38 00 00 02 */	li r0, 2
/* 80C42804  7C 09 03 A6 */	mtctr r0
lbl_80C42808:
/* 80C42808  38 A3 06 20 */	addi r5, r3, 0x620
/* 80C4280C  7C 9E 2A AE */	lhax r4, r30, r5
/* 80C42810  2C 04 00 00 */	cmpwi r4, 0
/* 80C42814  41 82 00 0C */	beq lbl_80C42820
/* 80C42818  38 04 FF FF */	addi r0, r4, -1
/* 80C4281C  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80C42820:
/* 80C42820  38 63 00 02 */	addi r3, r3, 2
/* 80C42824  42 00 FF E4 */	bdnz lbl_80C42808
/* 80C42828  A8 7E 06 18 */	lha r3, 0x618(r30)
/* 80C4282C  2C 03 00 00 */	cmpwi r3, 0
/* 80C42830  41 82 00 0C */	beq lbl_80C4283C
/* 80C42834  38 03 FF FF */	addi r0, r3, -1
/* 80C42838  B0 1E 06 18 */	sth r0, 0x618(r30)
lbl_80C4283C:
/* 80C4283C  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 80C42840  2C 00 00 01 */	cmpwi r0, 1
/* 80C42844  41 82 00 64 */	beq lbl_80C428A8
/* 80C42848  40 80 00 10 */	bge lbl_80C42858
/* 80C4284C  2C 00 00 00 */	cmpwi r0, 0
/* 80C42850  40 80 00 14 */	bge lbl_80C42864
/* 80C42854  48 00 00 68 */	b lbl_80C428BC
lbl_80C42858:
/* 80C42858  2C 00 00 03 */	cmpwi r0, 3
/* 80C4285C  40 80 00 60 */	bge lbl_80C428BC
/* 80C42860  48 00 00 54 */	b lbl_80C428B4
lbl_80C42864:
/* 80C42864  88 1E 2C A4 */	lbz r0, 0x2ca4(r30)
/* 80C42868  28 00 00 01 */	cmplwi r0, 1
/* 80C4286C  40 82 00 50 */	bne lbl_80C428BC
/* 80C42870  38 00 00 01 */	li r0, 1
/* 80C42874  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 80C42878  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80C4287C  D0 1E 2C A8 */	stfs f0, 0x2ca8(r30)
/* 80C42880  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80C42884  D0 1E 2C AC */	stfs f0, 0x2cac(r30)
/* 80C42888  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80C4288C  D0 1E 2C B0 */	stfs f0, 0x2cb0(r30)
/* 80C42890  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C42894  28 00 00 00 */	cmplwi r0, 0
/* 80C42898  41 82 00 24 */	beq lbl_80C428BC
/* 80C4289C  38 00 00 0A */	li r0, 0xa
/* 80C428A0  B0 1E 06 1E */	sth r0, 0x61e(r30)
/* 80C428A4  48 00 00 18 */	b lbl_80C428BC
lbl_80C428A8:
/* 80C428A8  7F C3 F3 78 */	mr r3, r30
/* 80C428AC  4B FF FA D5 */	bl open__FP17obj_keyhole_class
/* 80C428B0  48 00 00 0C */	b lbl_80C428BC
lbl_80C428B4:
/* 80C428B4  7F C3 F3 78 */	mr r3, r30
/* 80C428B8  4B FF FC 61 */	bl drop__FP17obj_keyhole_class
lbl_80C428BC:
/* 80C428BC  3B A0 00 00 */	li r29, 0
/* 80C428C0  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 80C428C4  7C 60 07 35 */	extsh. r0, r3
/* 80C428C8  40 82 01 00 */	bne lbl_80C429C8
/* 80C428CC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C428D0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C428D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C428D8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C428DC  4B 3C 9B 00 */	b mDoMtx_YrotS__FPA4_fs
/* 80C428E0  A8 9E 06 1A */	lha r4, 0x61a(r30)
/* 80C428E4  1C 04 16 A8 */	mulli r0, r4, 0x16a8
/* 80C428E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C428EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C428F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C428F4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C428F8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80C428FC  C0 3E 2A E4 */	lfs f1, 0x2ae4(r30)
/* 80C42900  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C42904  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C42908  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C4290C  1C 04 19 00 */	mulli r0, r4, 0x1900
/* 80C42910  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C42914  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C42918  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C4291C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C42920  1C 04 17 70 */	mulli r0, r4, 0x1770
/* 80C42924  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C42928  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C4292C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C42930  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C42934  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C42938  38 81 00 20 */	addi r4, r1, 0x20
/* 80C4293C  4B 62 E5 B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C42940  38 61 00 08 */	addi r3, r1, 8
/* 80C42944  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80C42948  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C4294C  4B 62 41 98 */	b __pl__4cXyzCFRC3Vec
/* 80C42950  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C42954  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C42958  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C4295C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C42960  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C42964  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C42968  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C4296C  D0 1E 2C A8 */	stfs f0, 0x2ca8(r30)
/* 80C42970  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C42974  D0 1E 2C AC */	stfs f0, 0x2cac(r30)
/* 80C42978  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C4297C  D0 1E 2C B0 */	stfs f0, 0x2cb0(r30)
/* 80C42980  A8 1E 06 1A */	lha r0, 0x61a(r30)
/* 80C42984  1C 00 16 A8 */	mulli r0, r0, 0x16a8
/* 80C42988  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C4298C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C42990  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C42994  7C 43 04 2E */	lfsx f2, r3, r0
/* 80C42998  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80C4299C  C0 1E 2A E4 */	lfs f0, 0x2ae4(r30)
/* 80C429A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C429A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C429A8  FC 00 00 1E */	fctiwz f0, f0
/* 80C429AC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C429B0  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 80C429B4  38 7E 2A E4 */	addi r3, r30, 0x2ae4
/* 80C429B8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C429BC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80C429C0  4B 62 D0 C0 */	b cLib_addCalc0__FPfff
/* 80C429C4  48 00 00 2C */	b lbl_80C429F0
lbl_80C429C8:
/* 80C429C8  2C 03 00 02 */	cmpwi r3, 2
/* 80C429CC  40 82 00 24 */	bne lbl_80C429F0
/* 80C429D0  C0 1E 2A E4 */	lfs f0, 0x2ae4(r30)
/* 80C429D4  FC 00 00 1E */	fctiwz f0, f0
/* 80C429D8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C429DC  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 80C429E0  38 7E 2A E4 */	addi r3, r30, 0x2ae4
/* 80C429E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C429E8  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80C429EC  4B 62 D0 94 */	b cLib_addCalc0__FPfff
lbl_80C429F0:
/* 80C429F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C429F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C429F8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C429FC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C42A00  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C42A04  4B 70 3E E4 */	b PSMTXTrans
/* 80C42A08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42A0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42A10  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C42A14  4B 3C 9A 20 */	b mDoMtx_YrotM__FPA4_fs
/* 80C42A18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42A1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42A20  A8 9E 2A EC */	lha r4, 0x2aec(r30)
/* 80C42A24  4B 3C 9A 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80C42A28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42A2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42A30  7F A4 07 34 */	extsh r4, r29
/* 80C42A34  4B 3C 99 68 */	b mDoMtx_XrotM__FPA4_fs
/* 80C42A38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42A3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42A40  A8 1E 2A EC */	lha r0, 0x2aec(r30)
/* 80C42A44  7C 00 00 D0 */	neg r0, r0
/* 80C42A48  7C 04 07 34 */	extsh r4, r0
/* 80C42A4C  4B 3C 99 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C42A50  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C42A54  28 00 00 00 */	cmplwi r0, 0
/* 80C42A58  40 82 00 18 */	bne lbl_80C42A70
/* 80C42A5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42A60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42A64  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C42A68  4B 3C 99 34 */	b mDoMtx_XrotM__FPA4_fs
/* 80C42A6C  48 00 00 1C */	b lbl_80C42A88
lbl_80C42A70:
/* 80C42A70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42A74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42A78  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C42A7C  38 04 C0 00 */	addi r0, r4, -16384
/* 80C42A80  7C 04 07 34 */	extsh r4, r0
/* 80C42A84  4B 3C 99 18 */	b mDoMtx_XrotM__FPA4_fs
lbl_80C42A88:
/* 80C42A88  C0 3E 2A F0 */	lfs f1, 0x2af0(r30)
/* 80C42A8C  C0 5E 2A F4 */	lfs f2, 0x2af4(r30)
/* 80C42A90  C0 7E 2A F8 */	lfs f3, 0x2af8(r30)
/* 80C42A94  4B 3C A3 08 */	b transM__14mDoMtx_stack_cFfff
/* 80C42A98  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C42A9C  28 00 00 00 */	cmplwi r0, 0
/* 80C42AA0  40 82 00 1C */	bne lbl_80C42ABC
/* 80C42AA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42AA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42AAC  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80C42AB0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C42AB4  4B 70 39 FC */	b PSMTXCopy
/* 80C42AB8  48 00 00 50 */	b lbl_80C42B08
lbl_80C42ABC:
/* 80C42ABC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C42AC0  83 A3 00 04 */	lwz r29, 4(r3)
/* 80C42AC4  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C42AC8  38 63 3C F4 */	addi r3, r3, l_HIO@l
/* 80C42ACC  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C42AD0  FC 40 08 90 */	fmr f2, f1
/* 80C42AD4  FC 60 08 90 */	fmr f3, f1
/* 80C42AD8  4B 3C A3 60 */	b scaleM__14mDoMtx_stack_cFfff
/* 80C42ADC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42AE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42AE4  38 9D 00 24 */	addi r4, r29, 0x24
/* 80C42AE8  4B 70 39 C8 */	b PSMTXCopy
/* 80C42AEC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C42AF0  38 9E 05 38 */	addi r4, r30, 0x538
/* 80C42AF4  38 A0 00 00 */	li r5, 0
/* 80C42AF8  38 C0 00 00 */	li r6, 0
/* 80C42AFC  4B 3C DA CC */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80C42B00  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C42B04  4B 3C DB A8 */	b modelCalc__14mDoExt_McaMorfFv
lbl_80C42B08:
/* 80C42B08  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C42B0C  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C42B10  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C42B14  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C42B18  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C42B1C  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C42B20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C42B24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C42B28  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C42B2C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C42B30  80 84 00 00 */	lwz r4, 0(r4)
/* 80C42B34  4B 70 39 7C */	b PSMTXCopy
/* 80C42B38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C42B3C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C42B40  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C42B44  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C42B48  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C42B4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C42B50  4B 62 E3 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 80C42B54  A8 1E 06 18 */	lha r0, 0x618(r30)
/* 80C42B58  2C 00 00 00 */	cmpwi r0, 0
/* 80C42B5C  41 82 00 14 */	beq lbl_80C42B70
/* 80C42B60  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80C42B64  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80C42B68  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C42B6C  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80C42B70:
/* 80C42B70  38 7E 2C 64 */	addi r3, r30, 0x2c64
/* 80C42B74  38 81 00 14 */	addi r4, r1, 0x14
/* 80C42B78  4B 62 CA D0 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C42B7C  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C42B80  28 00 00 00 */	cmplwi r0, 0
/* 80C42B84  40 82 00 14 */	bne lbl_80C42B98
/* 80C42B88  38 7E 2C 64 */	addi r3, r30, 0x2c64
/* 80C42B8C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80C42B90  4B 62 CB 78 */	b SetR__8cM3dGSphFf
/* 80C42B94  48 00 00 20 */	b lbl_80C42BB4
lbl_80C42B98:
/* 80C42B98  38 7E 2C 64 */	addi r3, r30, 0x2c64
/* 80C42B9C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80C42BA0  3C 80 80 C4 */	lis r4, l_HIO@ha
/* 80C42BA4  38 84 3C F4 */	addi r4, r4, l_HIO@l
/* 80C42BA8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C42BAC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C42BB0  4B 62 CB 58 */	b SetR__8cM3dGSphFf
lbl_80C42BB4:
/* 80C42BB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C42BB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C42BBC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C42BC0  38 9E 2B 40 */	addi r4, r30, 0x2b40
/* 80C42BC4  4B 62 1F E4 */	b Set__4cCcSFP8cCcD_Obj
/* 80C42BC8  A8 1E 06 18 */	lha r0, 0x618(r30)
/* 80C42BCC  2C 00 00 00 */	cmpwi r0, 0
/* 80C42BD0  40 82 00 1C */	bne lbl_80C42BEC
/* 80C42BD4  38 7E 2B 40 */	addi r3, r30, 0x2b40
/* 80C42BD8  4B 44 1A 80 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80C42BDC  28 03 00 00 */	cmplwi r3, 0
/* 80C42BE0  41 82 00 0C */	beq lbl_80C42BEC
/* 80C42BE4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C42BE8  D0 1E 2A E4 */	stfs f0, 0x2ae4(r30)
lbl_80C42BEC:
/* 80C42BEC  38 7E 2B 40 */	addi r3, r30, 0x2b40
/* 80C42BF0  4B 44 18 70 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C42BF4  28 03 00 00 */	cmplwi r3, 0
/* 80C42BF8  41 82 00 70 */	beq lbl_80C42C68
/* 80C42BFC  38 00 00 0A */	li r0, 0xa
/* 80C42C00  B0 1E 06 18 */	sth r0, 0x618(r30)
/* 80C42C04  38 7E 2B 40 */	addi r3, r30, 0x2b40
/* 80C42C08  4B 44 18 F0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C42C0C  90 7E 2C 78 */	stw r3, 0x2c78(r30)
/* 80C42C10  38 7E 2C 78 */	addi r3, r30, 0x2c78
/* 80C42C14  4B 44 4E 44 */	b at_power_check__FP11dCcU_AtInfo
/* 80C42C18  88 1E 2C 98 */	lbz r0, 0x2c98(r30)
/* 80C42C1C  28 00 00 02 */	cmplwi r0, 2
/* 80C42C20  40 82 00 10 */	bne lbl_80C42C30
/* 80C42C24  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80C42C28  D0 1E 2A E4 */	stfs f0, 0x2ae4(r30)
/* 80C42C2C  48 00 00 0C */	b lbl_80C42C38
lbl_80C42C30:
/* 80C42C30  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C42C34  D0 1E 2A E4 */	stfs f0, 0x2ae4(r30)
lbl_80C42C38:
/* 80C42C38  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C42C3C  28 00 00 00 */	cmplwi r0, 0
/* 80C42C40  41 82 00 14 */	beq lbl_80C42C54
/* 80C42C44  C0 3E 2A E4 */	lfs f1, 0x2ae4(r30)
/* 80C42C48  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80C42C4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C42C50  D0 1E 2A E4 */	stfs f0, 0x2ae4(r30)
lbl_80C42C54:
/* 80C42C54  38 7E 05 88 */	addi r3, r30, 0x588
/* 80C42C58  80 9E 2C 78 */	lwz r4, 0x2c78(r30)
/* 80C42C5C  38 A0 00 35 */	li r5, 0x35
/* 80C42C60  38 C0 00 00 */	li r6, 0
/* 80C42C64  4B 44 48 B0 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_80C42C68:
/* 80C42C68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C42C6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C42C70  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80C42C74  28 04 00 00 */	cmplwi r4, 0
/* 80C42C78  41 82 00 48 */	beq lbl_80C42CC0
/* 80C42C7C  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80C42C80  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C42C84  41 82 00 3C */	beq lbl_80C42CC0
/* 80C42C88  7F C3 F3 78 */	mr r3, r30
/* 80C42C8C  4B 3D 7C D8 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C42C90  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C42C94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C42C98  40 80 00 28 */	bge lbl_80C42CC0
/* 80C42C9C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C42CA0  D0 1E 2A E4 */	stfs f0, 0x2ae4(r30)
/* 80C42CA4  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C42CA8  28 00 00 00 */	cmplwi r0, 0
/* 80C42CAC  41 82 00 14 */	beq lbl_80C42CC0
/* 80C42CB0  C0 3E 2A E4 */	lfs f1, 0x2ae4(r30)
/* 80C42CB4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80C42CB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C42CBC  D0 1E 2A E4 */	stfs f0, 0x2ae4(r30)
lbl_80C42CC0:
/* 80C42CC0  7F C3 F3 78 */	mr r3, r30
/* 80C42CC4  4B FF F0 A9 */	bl chain_move__FP17obj_keyhole_class
/* 80C42CC8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C42CCC  7C 03 07 74 */	extsb r3, r0
/* 80C42CD0  4B 3E A3 9C */	b dComIfGp_getReverb__Fi
/* 80C42CD4  7C 65 1B 78 */	mr r5, r3
/* 80C42CD8  38 7E 05 88 */	addi r3, r30, 0x588
/* 80C42CDC  38 80 00 00 */	li r4, 0
/* 80C42CE0  81 9E 05 88 */	lwz r12, 0x588(r30)
/* 80C42CE4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C42CE8  7D 89 03 A6 */	mtctr r12
/* 80C42CEC  4E 80 04 21 */	bctrl 
/* 80C42CF0  38 60 00 01 */	li r3, 1
/* 80C42CF4  39 61 00 50 */	addi r11, r1, 0x50
/* 80C42CF8  4B 71 F5 30 */	b _restgpr_29
/* 80C42CFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C42D00  7C 08 03 A6 */	mtlr r0
/* 80C42D04  38 21 00 50 */	addi r1, r1, 0x50
/* 80C42D08  4E 80 00 20 */	blr 
