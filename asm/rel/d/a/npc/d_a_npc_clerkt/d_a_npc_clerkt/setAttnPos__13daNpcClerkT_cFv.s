lbl_8099BF20:
/* 8099BF20  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8099BF24  7C 08 02 A6 */	mflr r0
/* 8099BF28  90 01 00 74 */	stw r0, 0x74(r1)
/* 8099BF2C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8099BF30  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8099BF34  39 61 00 60 */	addi r11, r1, 0x60
/* 8099BF38  4B 9C 62 9D */	bl _savegpr_27
/* 8099BF3C  7C 7E 1B 78 */	mr r30, r3
/* 8099BF40  3C 60 80 9A */	lis r3, m__19daNpcClerkt_Param_c@ha /* 0x8099D244@ha */
/* 8099BF44  3B E3 D2 44 */	addi r31, r3, m__19daNpcClerkt_Param_c@l /* 0x8099D244@l */
/* 8099BF48  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8099BF4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8099BF50  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8099BF54  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8099BF58  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8099BF5C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8099BF60  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8099BF64  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8099BF68  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8099BF6C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8099BF70  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8099BF74  38 80 00 00 */	li r4, 0
/* 8099BF78  4B 7A BE C5 */	bl calc__19daNpcT_DmgStagger_cFi
/* 8099BF7C  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 8099BF80  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 8099BF84  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8099BF88  7C 03 00 50 */	subf r0, r3, r0
/* 8099BF8C  7C 00 07 34 */	extsh r0, r0
/* 8099BF90  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 8099BF94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099BF98  90 01 00 44 */	stw r0, 0x44(r1)
/* 8099BF9C  3C 00 43 30 */	lis r0, 0x4330
/* 8099BFA0  90 01 00 40 */	stw r0, 0x40(r1)
/* 8099BFA4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8099BFA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8099BFAC  EF E2 00 32 */	fmuls f31, f2, f0
/* 8099BFB0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8099BFB4  83 63 00 04 */	lwz r27, 4(r3)
/* 8099BFB8  7F C3 F3 78 */	mr r3, r30
/* 8099BFBC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8099BFC0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8099BFC4  7D 89 03 A6 */	mtctr r12
/* 8099BFC8  4E 80 04 21 */	bctrl 
/* 8099BFCC  7C 7C 1B 78 */	mr r28, r3
/* 8099BFD0  7F C3 F3 78 */	mr r3, r30
/* 8099BFD4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8099BFD8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8099BFDC  7D 89 03 A6 */	mtctr r12
/* 8099BFE0  4E 80 04 21 */	bctrl 
/* 8099BFE4  7C 7D 1B 78 */	mr r29, r3
/* 8099BFE8  7F C3 F3 78 */	mr r3, r30
/* 8099BFEC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8099BFF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8099BFF4  7D 89 03 A6 */	mtctr r12
/* 8099BFF8  4E 80 04 21 */	bctrl 
/* 8099BFFC  7C 67 1B 78 */	mr r7, r3
/* 8099C000  39 5F 00 00 */	addi r10, r31, 0
/* 8099C004  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 8099C008  D0 01 00 08 */	stfs f0, 8(r1)
/* 8099C00C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 8099C010  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8099C014  7F C4 F3 78 */	mr r4, r30
/* 8099C018  7F 65 DB 78 */	mr r5, r27
/* 8099C01C  38 C1 00 34 */	addi r6, r1, 0x34
/* 8099C020  7F A8 EB 78 */	mr r8, r29
/* 8099C024  7F 89 E3 78 */	mr r9, r28
/* 8099C028  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8099C02C  FC 40 08 90 */	fmr f2, f1
/* 8099C030  FC 60 08 90 */	fmr f3, f1
/* 8099C034  FC 80 08 90 */	fmr f4, f1
/* 8099C038  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 8099C03C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 8099C040  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 8099C044  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 8099C048  39 41 00 28 */	addi r10, r1, 0x28
/* 8099C04C  4B 7A AC 8D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 8099C050  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8099C054  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8099C058  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 8099C05C  FC 60 F8 90 */	fmr f3, f31
/* 8099C060  4B 7A BB D9 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 8099C064  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8099C068  80 63 00 04 */	lwz r3, 4(r3)
/* 8099C06C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8099C070  38 C0 00 00 */	li r6, 0
/* 8099C074  3C 60 80 9A */	lis r3, ctrlJointCallBack__13daNpcClerkT_cFP8J3DJointi@ha /* 0x8099AB34@ha */
/* 8099C078  38 83 AB 34 */	addi r4, r3, ctrlJointCallBack__13daNpcClerkT_cFP8J3DJointi@l /* 0x8099AB34@l */
/* 8099C07C  48 00 00 18 */	b lbl_8099C094
lbl_8099C080:
/* 8099C080  80 65 00 28 */	lwz r3, 0x28(r5)
/* 8099C084  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8099C088  7C 63 00 2E */	lwzx r3, r3, r0
/* 8099C08C  90 83 00 04 */	stw r4, 4(r3)
/* 8099C090  38 C6 00 01 */	addi r6, r6, 1
lbl_8099C094:
/* 8099C094  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8099C098  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 8099C09C  7C 03 00 40 */	cmplw r3, r0
/* 8099C0A0  41 80 FF E0 */	blt lbl_8099C080
/* 8099C0A4  7F C3 F3 78 */	mr r3, r30
/* 8099C0A8  4B 7A D0 E9 */	bl setMtx__8daNpcT_cFv
/* 8099C0AC  7F C3 F3 78 */	mr r3, r30
/* 8099C0B0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8099C0B4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8099C0B8  7D 89 03 A6 */	mtctr r12
/* 8099C0BC  4E 80 04 21 */	bctrl 
/* 8099C0C0  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 8099C0C4  80 84 00 04 */	lwz r4, 4(r4)
/* 8099C0C8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8099C0CC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8099C0D0  1C 03 00 30 */	mulli r0, r3, 0x30
/* 8099C0D4  7C 64 02 14 */	add r3, r4, r0
/* 8099C0D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099C0DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099C0E0  4B 9A A3 D1 */	bl PSMTXCopy
/* 8099C0E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099C0E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099C0EC  38 81 00 34 */	addi r4, r1, 0x34
/* 8099C0F0  38 BE 05 38 */	addi r5, r30, 0x538
/* 8099C0F4  4B 9A AC 79 */	bl PSMTXMultVec
/* 8099C0F8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8099C0FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8099C100  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8099C104  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8099C108  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8099C10C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8099C110  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8099C114  38 81 00 1C */	addi r4, r1, 0x1c
/* 8099C118  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 8099C11C  38 A0 00 00 */	li r5, 0
/* 8099C120  48 00 0B 31 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 8099C124  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8099C128  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099C12C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8099C130  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8099C134  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8099C138  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8099C13C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8099C140  38 81 00 10 */	addi r4, r1, 0x10
/* 8099C144  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 8099C148  38 C0 00 01 */	li r6, 1
/* 8099C14C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 8099C150  38 E0 00 00 */	li r7, 0
/* 8099C154  48 00 09 E1 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 8099C158  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8099C15C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8099C160  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8099C164  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8099C168  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8099C16C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8099C170  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8099C174  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8099C178  EC 01 00 2A */	fadds f0, f1, f0
/* 8099C17C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8099C180  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8099C184  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8099C188  39 61 00 60 */	addi r11, r1, 0x60
/* 8099C18C  4B 9C 60 95 */	bl _restgpr_27
/* 8099C190  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8099C194  7C 08 03 A6 */	mtlr r0
/* 8099C198  38 21 00 70 */	addi r1, r1, 0x70
/* 8099C19C  4E 80 00 20 */	blr 
