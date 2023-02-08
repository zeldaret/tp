lbl_80668A30:
/* 80668A30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80668A34  7C 08 02 A6 */	mflr r0
/* 80668A38  90 01 00 54 */	stw r0, 0x54(r1)
/* 80668A3C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80668A40  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80668A44  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80668A48  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80668A4C  7C 7E 1B 78 */	mr r30, r3
/* 80668A50  FF E0 08 90 */	fmr f31, f1
/* 80668A54  3C 60 80 67 */	lis r3, lit_3662@ha /* 0x8066EDE8@ha */
/* 80668A58  3B E3 ED E8 */	addi r31, r3, lit_3662@l /* 0x8066EDE8@l */
/* 80668A5C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80668A60  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80668A64  80 63 00 00 */	lwz r3, 0(r3)
/* 80668A68  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80668A6C  4B 9A 39 71 */	bl mDoMtx_YrotS__FPA4_fs
/* 80668A70  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80668A74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80668A78  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80668A7C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80668A80  C0 9E 06 7C */	lfs f4, 0x67c(r30)
/* 80668A84  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80668A88  EC 03 07 F2 */	fmuls f0, f3, f31
/* 80668A8C  EC 40 01 32 */	fmuls f2, f0, f4
/* 80668A90  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80668A94  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80668A98  EC 03 00 32 */	fmuls f0, f3, f0
/* 80668A9C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80668AA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80668AA4  EC 02 00 2A */	fadds f0, f2, f0
/* 80668AA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80668AAC  38 61 00 20 */	addi r3, r1, 0x20
/* 80668AB0  38 81 00 14 */	addi r4, r1, 0x14
/* 80668AB4  4B C0 84 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80668AB8  38 61 00 14 */	addi r3, r1, 0x14
/* 80668ABC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80668AC0  7C 65 1B 78 */	mr r5, r3
/* 80668AC4  4B CD E5 CD */	bl PSVECAdd
/* 80668AC8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80668ACC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80668AD0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80668AD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80668AD8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80668ADC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80668AE0  7F C3 F3 78 */	mr r3, r30
/* 80668AE4  38 81 00 08 */	addi r4, r1, 8
/* 80668AE8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80668AEC  4B FF FD 81 */	bl dansa_check__FP8do_class4cXyzf
/* 80668AF0  30 03 FF FF */	addic r0, r3, -1
/* 80668AF4  7C 60 19 10 */	subfe r3, r0, r3
/* 80668AF8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80668AFC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80668B00  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80668B04  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80668B08  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80668B0C  7C 08 03 A6 */	mtlr r0
/* 80668B10  38 21 00 50 */	addi r1, r1, 0x50
/* 80668B14  4E 80 00 20 */	blr 
