lbl_80B69FD8:
/* 80B69FD8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B69FDC  7C 08 02 A6 */	mflr r0
/* 80B69FE0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B69FE4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B69FE8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B69FEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B69FF0  4B 7F 81 E5 */	bl _savegpr_27
/* 80B69FF4  7C 7E 1B 78 */	mr r30, r3
/* 80B69FF8  3C 60 80 B7 */	lis r3, m__18daNpc_zanB_Param_c@ha /* 0x80B6BCC4@ha */
/* 80B69FFC  3B E3 BC C4 */	addi r31, r3, m__18daNpc_zanB_Param_c@l /* 0x80B6BCC4@l */
/* 80B6A000  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80B6A004  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B6A008  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80B6A00C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B6A010  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80B6A014  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B6A018  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B6A01C  38 80 00 00 */	li r4, 0
/* 80B6A020  4B 5D DE 1D */	bl calc__19daNpcT_DmgStagger_cFi
/* 80B6A024  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 80B6A028  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B6A02C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B6A030  7C 03 00 50 */	subf r0, r3, r0
/* 80B6A034  7C 00 07 34 */	extsh r0, r0
/* 80B6A038  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 80B6A03C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6A040  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B6A044  3C 00 43 30 */	lis r0, 0x4330
/* 80B6A048  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B6A04C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B6A050  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B6A054  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B6A058  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B6A05C  83 63 00 04 */	lwz r27, 4(r3)
/* 80B6A060  7F C3 F3 78 */	mr r3, r30
/* 80B6A064  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B6A068  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B6A06C  7D 89 03 A6 */	mtctr r12
/* 80B6A070  4E 80 04 21 */	bctrl 
/* 80B6A074  7C 7C 1B 78 */	mr r28, r3
/* 80B6A078  7F C3 F3 78 */	mr r3, r30
/* 80B6A07C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B6A080  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B6A084  7D 89 03 A6 */	mtctr r12
/* 80B6A088  4E 80 04 21 */	bctrl 
/* 80B6A08C  7C 7D 1B 78 */	mr r29, r3
/* 80B6A090  7F C3 F3 78 */	mr r3, r30
/* 80B6A094  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B6A098  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B6A09C  7D 89 03 A6 */	mtctr r12
/* 80B6A0A0  4E 80 04 21 */	bctrl 
/* 80B6A0A4  7C 67 1B 78 */	mr r7, r3
/* 80B6A0A8  39 5F 00 00 */	addi r10, r31, 0
/* 80B6A0AC  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B6A0B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B6A0B4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80B6A0B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B6A0BC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B6A0C0  7F C4 F3 78 */	mr r4, r30
/* 80B6A0C4  7F 65 DB 78 */	mr r5, r27
/* 80B6A0C8  38 C1 00 34 */	addi r6, r1, 0x34
/* 80B6A0CC  7F A8 EB 78 */	mr r8, r29
/* 80B6A0D0  7F 89 E3 78 */	mr r9, r28
/* 80B6A0D4  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B6A0D8  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B6A0DC  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B6A0E0  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B6A0E4  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B6A0E8  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B6A0EC  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B6A0F0  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B6A0F4  39 40 00 00 */	li r10, 0
/* 80B6A0F8  4B 5D CB E1 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B6A0FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B6A100  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B6A104  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80B6A108  FC 60 F8 90 */	fmr f3, f31
/* 80B6A10C  4B 5D DB 2D */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B6A110  7F C3 F3 78 */	mr r3, r30
/* 80B6A114  4B 5D F0 7D */	bl setMtx__8daNpcT_cFv
/* 80B6A118  7F C3 F3 78 */	mr r3, r30
/* 80B6A11C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B6A120  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B6A124  7D 89 03 A6 */	mtctr r12
/* 80B6A128  4E 80 04 21 */	bctrl 
/* 80B6A12C  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B6A130  80 84 00 04 */	lwz r4, 4(r4)
/* 80B6A134  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B6A138  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B6A13C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B6A140  7C 64 02 14 */	add r3, r4, r0
/* 80B6A144  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6A148  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6A14C  4B 7D C3 65 */	bl PSMTXCopy
/* 80B6A150  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6A154  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6A158  38 81 00 34 */	addi r4, r1, 0x34
/* 80B6A15C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B6A160  4B 7D CC 0D */	bl PSMTXMultVec
/* 80B6A164  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B6A168  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B6A16C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B6A170  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B6A174  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B6A178  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B6A17C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B6A180  38 81 00 28 */	addi r4, r1, 0x28
/* 80B6A184  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B6A188  38 A0 00 00 */	li r5, 0
/* 80B6A18C  48 00 16 0D */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B6A190  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B6A194  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B6A198  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B6A19C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B6A1A0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B6A1A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B6A1A8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B6A1AC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B6A1B0  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B6A1B4  38 C0 00 00 */	li r6, 0
/* 80B6A1B8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B6A1BC  38 E0 00 00 */	li r7, 0
/* 80B6A1C0  48 00 14 BD */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B6A1C4  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80B6A1C8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B6A1CC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B6A1D0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B6A1D4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B6A1D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B6A1DC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B6A1E0  28 00 00 00 */	cmplwi r0, 0
/* 80B6A1E4  40 82 00 18 */	bne lbl_80B6A1FC
/* 80B6A1E8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B6A1EC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B6A1F0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B6A1F4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80B6A1F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80B6A1FC:
/* 80B6A1FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6A200  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6A204  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80B6A208  4B 4A 21 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B6A20C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6A210  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B6A214  38 81 00 34 */	addi r4, r1, 0x34
/* 80B6A218  7C 85 23 78 */	mr r5, r4
/* 80B6A21C  4B 7D CB 51 */	bl PSMTXMultVec
/* 80B6A220  38 61 00 10 */	addi r3, r1, 0x10
/* 80B6A224  38 81 00 34 */	addi r4, r1, 0x34
/* 80B6A228  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B6A22C  4B 6F C8 B9 */	bl __pl__4cXyzCFRC3Vec
/* 80B6A230  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B6A234  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B6A238  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B6A23C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B6A240  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B6A244  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B6A248  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B6A24C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B6A250  39 61 00 60 */	addi r11, r1, 0x60
/* 80B6A254  4B 7F 7F CD */	bl _restgpr_27
/* 80B6A258  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B6A25C  7C 08 03 A6 */	mtlr r0
/* 80B6A260  38 21 00 70 */	addi r1, r1, 0x70
/* 80B6A264  4E 80 00 20 */	blr 
