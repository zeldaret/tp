lbl_8046F7AC:
/* 8046F7AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8046F7B0  7C 08 02 A6 */	mflr r0
/* 8046F7B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8046F7B8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8046F7BC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8046F7C0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8046F7C4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8046F7C8  7C 7E 1B 78 */	mr r30, r3
/* 8046F7CC  3C 60 80 48 */	lis r3, l_cyl_info@ha
/* 8046F7D0  3B E3 99 0C */	addi r31, r3, l_cyl_info@l
/* 8046F7D4  38 7E 0C F4 */	addi r3, r30, 0xcf4
/* 8046F7D8  4B DF 78 D4 */	b isZero__4cXyzCFv
/* 8046F7DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046F7E0  41 82 00 10 */	beq lbl_8046F7F0
/* 8046F7E4  38 61 00 08 */	addi r3, r1, 8
/* 8046F7E8  4B ED 6C 9C */	b PSMTXIdentity
/* 8046F7EC  48 00 00 38 */	b lbl_8046F824
lbl_8046F7F0:
/* 8046F7F0  C0 5F 0A 8C */	lfs f2, 0xa8c(r31)
/* 8046F7F4  A8 1E 0D 00 */	lha r0, 0xd00(r30)
/* 8046F7F8  C8 3F 0A A0 */	lfd f1, 0xaa0(r31)
/* 8046F7FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046F800  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8046F804  3C 00 43 30 */	lis r0, 0x4330
/* 8046F808  90 01 00 38 */	stw r0, 0x38(r1)
/* 8046F80C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8046F810  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046F814  EC 22 00 32 */	fmuls f1, f2, f0
/* 8046F818  38 61 00 08 */	addi r3, r1, 8
/* 8046F81C  38 9E 0C F4 */	addi r4, r30, 0xcf4
/* 8046F820  4B ED 70 58 */	b PSMTXRotAxisRad
lbl_8046F824:
/* 8046F824  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 8046F828  28 00 00 06 */	cmplwi r0, 6
/* 8046F82C  40 82 01 10 */	bne lbl_8046F93C
/* 8046F830  C3 FE 04 D8 */	lfs f31, 0x4d8(r30)
/* 8046F834  7F C3 F3 78 */	mr r3, r30
/* 8046F838  4B FF FE 6D */	bl data__12daObjCarry_cFv
/* 8046F83C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8046F840  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8046F844  EC 40 08 2A */	fadds f2, f0, f1
/* 8046F848  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046F84C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046F850  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8046F854  FC 60 F8 90 */	fmr f3, f31
/* 8046F858  4B ED 70 90 */	b PSMTXTrans
/* 8046F85C  7F C3 F3 78 */	mr r3, r30
/* 8046F860  4B FF FE 45 */	bl data__12daObjCarry_cFv
/* 8046F864  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8046F868  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8046F86C  EC 40 00 72 */	fmuls f2, f0, f1
/* 8046F870  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 8046F874  FC 60 08 90 */	fmr f3, f1
/* 8046F878  4B B9 D5 24 */	b transM__14mDoMtx_stack_cFfff
/* 8046F87C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046F880  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046F884  38 81 00 08 */	addi r4, r1, 8
/* 8046F888  7C 65 1B 78 */	mr r5, r3
/* 8046F88C  4B ED 6C 58 */	b PSMTXConcat
/* 8046F890  7F C3 F3 78 */	mr r3, r30
/* 8046F894  4B FF FE 11 */	bl data__12daObjCarry_cFv
/* 8046F898  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8046F89C  FC 20 00 50 */	fneg f1, f0
/* 8046F8A0  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8046F8A4  EC 40 00 72 */	fmuls f2, f0, f1
/* 8046F8A8  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 8046F8AC  FC 60 08 90 */	fmr f3, f1
/* 8046F8B0  4B B9 D4 EC */	b transM__14mDoMtx_stack_cFfff
/* 8046F8B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046F8B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046F8BC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 8046F8C0  A8 1E 0D 64 */	lha r0, 0xd64(r30)
/* 8046F8C4  7C 04 02 14 */	add r0, r4, r0
/* 8046F8C8  7C 04 07 34 */	extsh r4, r0
/* 8046F8CC  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 8046F8D0  A8 1E 0D 6A */	lha r0, 0xd6a(r30)
/* 8046F8D4  7C 05 02 14 */	add r0, r5, r0
/* 8046F8D8  7C 05 07 34 */	extsh r5, r0
/* 8046F8DC  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 8046F8E0  A8 1E 0D 66 */	lha r0, 0xd66(r30)
/* 8046F8E4  7C 06 02 14 */	add r0, r6, r0
/* 8046F8E8  7C 06 07 34 */	extsh r6, r0
/* 8046F8EC  4B B9 C9 B4 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8046F8F0  C0 7E 0D 84 */	lfs f3, 0xd84(r30)
/* 8046F8F4  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 8046F8F8  C0 5F 0A 90 */	lfs f2, 0xa90(r31)
/* 8046F8FC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8046F900  EC 02 00 32 */	fmuls f0, f2, f0
/* 8046F904  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8046F908  C0 1F 0A 94 */	lfs f0, 0xa94(r31)
/* 8046F90C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8046F910  4B B9 D4 8C */	b transM__14mDoMtx_stack_cFfff
/* 8046F914  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046F918  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046F91C  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 8046F920  C0 1E 0D 84 */	lfs f0, 0xd84(r30)
/* 8046F924  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046F928  FC 00 00 1E */	fctiwz f0, f0
/* 8046F92C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8046F930  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8046F934  4B B9 CA 68 */	b mDoMtx_XrotM__FPA4_fs
/* 8046F938  48 00 01 44 */	b lbl_8046FA7C
lbl_8046F93C:
/* 8046F93C  28 00 00 02 */	cmplwi r0, 2
/* 8046F940  41 82 00 14 */	beq lbl_8046F954
/* 8046F944  28 00 00 04 */	cmplwi r0, 4
/* 8046F948  41 82 00 0C */	beq lbl_8046F954
/* 8046F94C  28 00 00 05 */	cmplwi r0, 5
/* 8046F950  40 82 00 84 */	bne lbl_8046F9D4
lbl_8046F954:
/* 8046F954  C3 FE 04 D8 */	lfs f31, 0x4d8(r30)
/* 8046F958  7F C3 F3 78 */	mr r3, r30
/* 8046F95C  4B FF FD 49 */	bl data__12daObjCarry_cFv
/* 8046F960  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8046F964  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8046F968  EC 40 08 2A */	fadds f2, f0, f1
/* 8046F96C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046F970  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046F974  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8046F978  FC 60 F8 90 */	fmr f3, f31
/* 8046F97C  4B ED 6F 6C */	b PSMTXTrans
/* 8046F980  7F C3 F3 78 */	mr r3, r30
/* 8046F984  4B FF FD 21 */	bl data__12daObjCarry_cFv
/* 8046F988  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 8046F98C  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 8046F990  FC 60 08 90 */	fmr f3, f1
/* 8046F994  4B B9 D4 08 */	b transM__14mDoMtx_stack_cFfff
/* 8046F998  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046F99C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046F9A0  38 81 00 08 */	addi r4, r1, 8
/* 8046F9A4  7C 65 1B 78 */	mr r5, r3
/* 8046F9A8  4B ED 6B 3C */	b PSMTXConcat
/* 8046F9AC  7F C3 F3 78 */	mr r3, r30
/* 8046F9B0  4B FF FC F5 */	bl data__12daObjCarry_cFv
/* 8046F9B4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8046F9B8  FC 40 00 50 */	fneg f2, f0
/* 8046F9BC  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 8046F9C0  FC 60 08 90 */	fmr f3, f1
/* 8046F9C4  4B B9 D3 D8 */	b transM__14mDoMtx_stack_cFfff
/* 8046F9C8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8046F9CC  4B B9 D5 78 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8046F9D0  48 00 00 AC */	b lbl_8046FA7C
lbl_8046F9D4:
/* 8046F9D4  38 7E 0D 4C */	addi r3, r30, 0xd4c
/* 8046F9D8  38 9E 0D 3C */	addi r4, r30, 0xd3c
/* 8046F9DC  7C 65 1B 78 */	mr r5, r3
/* 8046F9E0  4B ED 7A 38 */	b PSQUATMultiply
/* 8046F9E4  C3 FE 04 D8 */	lfs f31, 0x4d8(r30)
/* 8046F9E8  7F C3 F3 78 */	mr r3, r30
/* 8046F9EC  4B FF FC B9 */	bl data__12daObjCarry_cFv
/* 8046F9F0  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8046F9F4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8046F9F8  EC 20 08 2A */	fadds f1, f0, f1
/* 8046F9FC  C0 1E 0D DC */	lfs f0, 0xddc(r30)
/* 8046FA00  EC 40 08 2A */	fadds f2, f0, f1
/* 8046FA04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046FA08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046FA0C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8046FA10  FC 60 F8 90 */	fmr f3, f31
/* 8046FA14  4B ED 6E D4 */	b PSMTXTrans
/* 8046FA18  7F C3 F3 78 */	mr r3, r30
/* 8046FA1C  4B FF FC 89 */	bl data__12daObjCarry_cFv
/* 8046FA20  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 8046FA24  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 8046FA28  FC 60 08 90 */	fmr f3, f1
/* 8046FA2C  4B B9 D3 70 */	b transM__14mDoMtx_stack_cFfff
/* 8046FA30  38 7E 0D 4C */	addi r3, r30, 0xd4c
/* 8046FA34  4B B9 D5 48 */	b quatM__14mDoMtx_stack_cFPC10Quaternion
/* 8046FA38  7F C3 F3 78 */	mr r3, r30
/* 8046FA3C  4B FF FC 69 */	bl data__12daObjCarry_cFv
/* 8046FA40  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8046FA44  FC 40 00 50 */	fneg f2, f0
/* 8046FA48  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 8046FA4C  FC 60 08 90 */	fmr f3, f1
/* 8046FA50  4B B9 D3 4C */	b transM__14mDoMtx_stack_cFfff
/* 8046FA54  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8046FA58  4B B9 D4 EC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8046FA5C  C0 1E 0D 4C */	lfs f0, 0xd4c(r30)
/* 8046FA60  D0 1E 0D 3C */	stfs f0, 0xd3c(r30)
/* 8046FA64  C0 1E 0D 50 */	lfs f0, 0xd50(r30)
/* 8046FA68  D0 1E 0D 40 */	stfs f0, 0xd40(r30)
/* 8046FA6C  C0 1E 0D 54 */	lfs f0, 0xd54(r30)
/* 8046FA70  D0 1E 0D 44 */	stfs f0, 0xd44(r30)
/* 8046FA74  C0 1E 0D 58 */	lfs f0, 0xd58(r30)
/* 8046FA78  D0 1E 0D 48 */	stfs f0, 0xd48(r30)
lbl_8046FA7C:
/* 8046FA7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046FA80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046FA84  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 8046FA88  38 84 00 24 */	addi r4, r4, 0x24
/* 8046FA8C  4B ED 6A 24 */	b PSMTXCopy
/* 8046FA90  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8046FA94  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8046FA98  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8046FA9C  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8046FAA0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8046FAA4  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8046FAA8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8046FAAC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8046FAB0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8046FAB4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8046FAB8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8046FABC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8046FAC0  7C 08 03 A6 */	mtlr r0
/* 8046FAC4  38 21 00 60 */	addi r1, r1, 0x60
/* 8046FAC8  4E 80 00 20 */	blr 
