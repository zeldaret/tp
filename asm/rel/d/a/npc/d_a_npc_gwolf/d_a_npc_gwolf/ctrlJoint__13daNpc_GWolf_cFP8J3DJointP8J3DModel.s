lbl_809F3FB8:
/* 809F3FB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809F3FBC  7C 08 02 A6 */	mflr r0
/* 809F3FC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 809F3FC4  39 61 00 30 */	addi r11, r1, 0x30
/* 809F3FC8  4B 96 E2 10 */	b _savegpr_28
/* 809F3FCC  7C 7F 1B 78 */	mr r31, r3
/* 809F3FD0  7C BC 2B 78 */	mr r28, r5
/* 809F3FD4  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809F3FD8  7C BD 2B 78 */	mr r29, r5
/* 809F3FDC  3C 60 80 A0 */	lis r3, lit_4589@ha
/* 809F3FE0  38 83 85 A4 */	addi r4, r3, lit_4589@l
/* 809F3FE4  80 64 00 00 */	lwz r3, 0(r4)
/* 809F3FE8  80 04 00 04 */	lwz r0, 4(r4)
/* 809F3FEC  90 61 00 08 */	stw r3, 8(r1)
/* 809F3FF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F3FF4  80 04 00 08 */	lwz r0, 8(r4)
/* 809F3FF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F3FFC  2C 05 00 00 */	cmpwi r5, 0
/* 809F4000  40 82 00 B0 */	bne lbl_809F40B0
/* 809F4004  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809F4008  80 63 00 04 */	lwz r3, 4(r3)
/* 809F400C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809F4010  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809F4014  38 63 00 30 */	addi r3, r3, 0x30
/* 809F4018  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809F401C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809F4020  4B 95 24 90 */	b PSMTXCopy
/* 809F4024  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4028  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 809F402C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809F4030  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 809F4034  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809F4038  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 809F403C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809F4040  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809F4044  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809F4048  80 63 00 04 */	lwz r3, 4(r3)
/* 809F404C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809F4050  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809F4054  38 63 00 90 */	addi r3, r3, 0x90
/* 809F4058  7F C4 F3 78 */	mr r4, r30
/* 809F405C  4B 95 24 54 */	b PSMTXCopy
/* 809F4060  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809F4064  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 809F4068  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809F406C  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 809F4070  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809F4074  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 809F4078  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809F407C  80 63 00 04 */	lwz r3, 4(r3)
/* 809F4080  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809F4084  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809F4088  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809F408C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809F4090  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809F4094  4B 95 24 1C */	b PSMTXCopy
/* 809F4098  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809F409C  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 809F40A0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809F40A4  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 809F40A8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809F40AC  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_809F40B0:
/* 809F40B0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809F40B4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809F40B8  1F DD 00 30 */	mulli r30, r29, 0x30
/* 809F40BC  7C 60 F2 14 */	add r3, r0, r30
/* 809F40C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809F40C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809F40C8  4B 95 23 E8 */	b PSMTXCopy
/* 809F40CC  2C 1D 00 02 */	cmpwi r29, 2
/* 809F40D0  41 82 00 38 */	beq lbl_809F4108
/* 809F40D4  40 80 00 10 */	bge lbl_809F40E4
/* 809F40D8  2C 1D 00 01 */	cmpwi r29, 1
/* 809F40DC  40 80 00 10 */	bge lbl_809F40EC
/* 809F40E0  48 00 00 28 */	b lbl_809F4108
lbl_809F40E4:
/* 809F40E4  2C 1D 00 05 */	cmpwi r29, 5
/* 809F40E8  40 80 00 20 */	bge lbl_809F4108
lbl_809F40EC:
/* 809F40EC  7F E3 FB 78 */	mr r3, r31
/* 809F40F0  7F A4 EB 78 */	mr r4, r29
/* 809F40F4  38 A1 00 08 */	addi r5, r1, 8
/* 809F40F8  3C C0 80 A0 */	lis r6, m__19daNpc_GWolf_Param_c@ha
/* 809F40FC  38 C6 84 F4 */	addi r6, r6, m__19daNpc_GWolf_Param_c@l
/* 809F4100  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809F4104  4B 75 F2 78 */	b setLookatMtx__8daNpcF_cFiPif
lbl_809F4108:
/* 809F4108  2C 1D 00 01 */	cmpwi r29, 1
/* 809F410C  40 82 00 30 */	bne lbl_809F413C
/* 809F4110  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4114  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F4118  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 809F411C  7C 00 00 D0 */	neg r0, r0
/* 809F4120  7C 04 07 34 */	extsh r4, r0
/* 809F4124  4B 61 83 10 */	b mDoMtx_YrotM__FPA4_fs
/* 809F4128  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F412C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F4130  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 809F4134  4B 61 83 98 */	b mDoMtx_ZrotM__FPA4_fs
/* 809F4138  48 00 00 34 */	b lbl_809F416C
lbl_809F413C:
/* 809F413C  2C 1D 00 04 */	cmpwi r29, 4
/* 809F4140  40 82 00 2C */	bne lbl_809F416C
/* 809F4144  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4148  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F414C  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 809F4150  7C 00 00 D0 */	neg r0, r0
/* 809F4154  7C 04 07 34 */	extsh r4, r0
/* 809F4158  4B 61 82 DC */	b mDoMtx_YrotM__FPA4_fs
/* 809F415C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4160  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F4164  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 809F4168  4B 61 83 64 */	b mDoMtx_ZrotM__FPA4_fs
lbl_809F416C:
/* 809F416C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4170  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F4174  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 809F4178  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809F417C  7C 80 F2 14 */	add r4, r0, r30
/* 809F4180  4B 95 23 30 */	b PSMTXCopy
/* 809F4184  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F4188  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F418C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 809F4190  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 809F4194  4B 95 23 1C */	b PSMTXCopy
/* 809F4198  2C 1D 00 04 */	cmpwi r29, 4
/* 809F419C  41 82 00 0C */	beq lbl_809F41A8
/* 809F41A0  2C 1D 00 0E */	cmpwi r29, 0xe
/* 809F41A4  40 82 00 2C */	bne lbl_809F41D0
lbl_809F41A8:
/* 809F41A8  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809F41AC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809F41B0  41 82 00 20 */	beq lbl_809F41D0
/* 809F41B4  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 809F41B8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809F41BC  80 83 00 08 */	lwz r4, 8(r3)
/* 809F41C0  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809F41C4  4B 61 97 CC */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809F41C8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809F41CC  93 83 00 08 */	stw r28, 8(r3)
lbl_809F41D0:
/* 809F41D0  38 60 00 01 */	li r3, 1
/* 809F41D4  39 61 00 30 */	addi r11, r1, 0x30
/* 809F41D8  4B 96 E0 4C */	b _restgpr_28
/* 809F41DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809F41E0  7C 08 03 A6 */	mtlr r0
/* 809F41E4  38 21 00 30 */	addi r1, r1, 0x30
/* 809F41E8  4E 80 00 20 */	blr 
