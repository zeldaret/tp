lbl_80B44138:
/* 80B44138  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B4413C  7C 08 02 A6 */	mflr r0
/* 80B44140  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B44144  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B44148  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B4414C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B44150  4B 81 E0 84 */	b _savegpr_27
/* 80B44154  7C 7E 1B 78 */	mr r30, r3
/* 80B44158  3C 60 80 B4 */	lis r3, m__19daNpc_yamiD_Param_c@ha
/* 80B4415C  3B E3 60 4C */	addi r31, r3, m__19daNpc_yamiD_Param_c@l
/* 80B44160  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B44164  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B44168  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B4416C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B44170  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B44174  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B44178  38 80 00 00 */	li r4, 0
/* 80B4417C  4B 60 3C C0 */	b calc__19daNpcT_DmgStagger_cFi
/* 80B44180  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80B44184  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B44188  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B4418C  7C 03 00 50 */	subf r0, r3, r0
/* 80B44190  7C 00 07 34 */	extsh r0, r0
/* 80B44194  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80B44198  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B4419C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B441A0  3C 00 43 30 */	lis r0, 0x4330
/* 80B441A4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B441A8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B441AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B441B0  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B441B4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B441B8  83 63 00 04 */	lwz r27, 4(r3)
/* 80B441BC  7F C3 F3 78 */	mr r3, r30
/* 80B441C0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B441C4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B441C8  7D 89 03 A6 */	mtctr r12
/* 80B441CC  4E 80 04 21 */	bctrl 
/* 80B441D0  7C 7C 1B 78 */	mr r28, r3
/* 80B441D4  7F C3 F3 78 */	mr r3, r30
/* 80B441D8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B441DC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B441E0  7D 89 03 A6 */	mtctr r12
/* 80B441E4  4E 80 04 21 */	bctrl 
/* 80B441E8  7C 7D 1B 78 */	mr r29, r3
/* 80B441EC  7F C3 F3 78 */	mr r3, r30
/* 80B441F0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B441F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B441F8  7D 89 03 A6 */	mtctr r12
/* 80B441FC  4E 80 04 21 */	bctrl 
/* 80B44200  7C 67 1B 78 */	mr r7, r3
/* 80B44204  39 5F 00 00 */	addi r10, r31, 0
/* 80B44208  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B4420C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B44210  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B44214  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B44218  7F C4 F3 78 */	mr r4, r30
/* 80B4421C  7F 65 DB 78 */	mr r5, r27
/* 80B44220  38 C1 00 28 */	addi r6, r1, 0x28
/* 80B44224  7F A8 EB 78 */	mr r8, r29
/* 80B44228  7F 89 E3 78 */	mr r9, r28
/* 80B4422C  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B44230  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B44234  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B44238  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B4423C  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B44240  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B44244  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B44248  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B4424C  39 40 00 00 */	li r10, 0
/* 80B44250  4B 60 2A 88 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B44254  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B44258  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80B4425C  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80B44260  FC 60 F8 90 */	fmr f3, f31
/* 80B44264  4B 60 39 D4 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B44268  7F C3 F3 78 */	mr r3, r30
/* 80B4426C  4B 60 4F 24 */	b setMtx__8daNpcT_cFv
/* 80B44270  7F C3 F3 78 */	mr r3, r30
/* 80B44274  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B44278  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B4427C  7D 89 03 A6 */	mtctr r12
/* 80B44280  4E 80 04 21 */	bctrl 
/* 80B44284  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B44288  80 84 00 04 */	lwz r4, 4(r4)
/* 80B4428C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B44290  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B44294  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B44298  7C 64 02 14 */	add r3, r4, r0
/* 80B4429C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B442A0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B442A4  4B 80 22 0C */	b PSMTXCopy
/* 80B442A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B442AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B442B0  38 81 00 28 */	addi r4, r1, 0x28
/* 80B442B4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B442B8  4B 80 2A B4 */	b PSMTXMultVec
/* 80B442BC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B442C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B442C4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B442C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B442CC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B442D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B442D4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B442D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B442DC  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B442E0  38 A0 00 00 */	li r5, 0
/* 80B442E4  48 00 18 2D */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B442E8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B442EC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B442F0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B442F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B442F8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B442FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B44300  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B44304  38 81 00 10 */	addi r4, r1, 0x10
/* 80B44308  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B4430C  38 C0 00 01 */	li r6, 1
/* 80B44310  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B44314  38 E0 00 00 */	li r7, 0
/* 80B44318  48 00 16 DD */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B4431C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B44320  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B44324  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B44328  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B4432C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B44330  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B44334  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80B44338  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B4433C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B44340  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B44344  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B44348  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B4434C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B44350  4B 81 DE D0 */	b _restgpr_27
/* 80B44354  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B44358  7C 08 03 A6 */	mtlr r0
/* 80B4435C  38 21 00 70 */	addi r1, r1, 0x70
/* 80B44360  4E 80 00 20 */	blr 
