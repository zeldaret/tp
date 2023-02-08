lbl_80D47F5C:
/* 80D47F5C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D47F60  7C 08 02 A6 */	mflr r0
/* 80D47F64  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D47F68  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80D47F6C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80D47F70  39 61 00 60 */	addi r11, r1, 0x60
/* 80D47F74  4B 61 A2 61 */	bl _savegpr_27
/* 80D47F78  7C 7E 1B 78 */	mr r30, r3
/* 80D47F7C  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D47F80  3B E3 C0 60 */	addi r31, r3, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D47F84  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80D47F88  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D47F8C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D47F90  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D47F94  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D47F98  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80D47F9C  38 80 00 00 */	li r4, 0
/* 80D47FA0  4B 3F FE 9D */	bl calc__19daNpcT_DmgStagger_cFi
/* 80D47FA4  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 80D47FA8  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80D47FAC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80D47FB0  7C 03 00 50 */	subf r0, r3, r0
/* 80D47FB4  7C 00 07 34 */	extsh r0, r0
/* 80D47FB8  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80D47FBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D47FC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D47FC4  3C 00 43 30 */	lis r0, 0x4330
/* 80D47FC8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80D47FCC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80D47FD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D47FD4  EF E2 00 32 */	fmuls f31, f2, f0
/* 80D47FD8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D47FDC  83 63 00 04 */	lwz r27, 4(r3)
/* 80D47FE0  7F C3 F3 78 */	mr r3, r30
/* 80D47FE4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80D47FE8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D47FEC  7D 89 03 A6 */	mtctr r12
/* 80D47FF0  4E 80 04 21 */	bctrl 
/* 80D47FF4  7C 7C 1B 78 */	mr r28, r3
/* 80D47FF8  7F C3 F3 78 */	mr r3, r30
/* 80D47FFC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80D48000  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80D48004  7D 89 03 A6 */	mtctr r12
/* 80D48008  4E 80 04 21 */	bctrl 
/* 80D4800C  7C 7D 1B 78 */	mr r29, r3
/* 80D48010  7F C3 F3 78 */	mr r3, r30
/* 80D48014  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80D48018  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80D4801C  7D 89 03 A6 */	mtctr r12
/* 80D48020  4E 80 04 21 */	bctrl 
/* 80D48024  7C 67 1B 78 */	mr r7, r3
/* 80D48028  39 5F 00 00 */	addi r10, r31, 0
/* 80D4802C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80D48030  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D48034  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80D48038  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D4803C  7F C4 F3 78 */	mr r4, r30
/* 80D48040  7F 65 DB 78 */	mr r5, r27
/* 80D48044  38 C1 00 34 */	addi r6, r1, 0x34
/* 80D48048  7F A8 EB 78 */	mr r8, r29
/* 80D4804C  7F 89 E3 78 */	mr r9, r28
/* 80D48050  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80D48054  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80D48058  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80D4805C  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80D48060  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80D48064  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80D48068  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80D4806C  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80D48070  39 40 00 00 */	li r10, 0
/* 80D48074  4B 3F EC 65 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80D48078  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D4807C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80D48080  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80D48084  FC 60 F8 90 */	fmr f3, f31
/* 80D48088  4B 3F FB B1 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80D4808C  7F C3 F3 78 */	mr r3, r30
/* 80D48090  4B 40 11 01 */	bl setMtx__8daNpcT_cFv
/* 80D48094  7F C3 F3 78 */	mr r3, r30
/* 80D48098  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80D4809C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D480A0  7D 89 03 A6 */	mtctr r12
/* 80D480A4  4E 80 04 21 */	bctrl 
/* 80D480A8  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80D480AC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D480B0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80D480B4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80D480B8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80D480BC  7C 64 02 14 */	add r3, r4, r0
/* 80D480C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D480C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D480C8  4B 5F E3 E9 */	bl PSMTXCopy
/* 80D480CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D480D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D480D4  38 81 00 34 */	addi r4, r1, 0x34
/* 80D480D8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D480DC  4B 5F EC 91 */	bl PSMTXMultVec
/* 80D480E0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80D480E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D480E8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80D480EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D480F0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80D480F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D480F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D480FC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80D48100  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80D48104  38 A0 00 00 */	li r5, 0
/* 80D48108  48 00 39 9D */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80D4810C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80D48110  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D48114  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80D48118  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D4811C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80D48120  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D48124  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80D48128  38 81 00 10 */	addi r4, r1, 0x10
/* 80D4812C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80D48130  38 C0 00 00 */	li r6, 0
/* 80D48134  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80D48138  38 E0 00 00 */	li r7, 0
/* 80D4813C  48 00 38 4D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80D48140  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D48144  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D48148  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D4814C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D48150  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80D48154  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D48158  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D4815C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D48160  38 63 00 24 */	addi r3, r3, 0x24
/* 80D48164  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D48168  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D4816C  4B 5F E3 45 */	bl PSMTXCopy
/* 80D48170  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D48174  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D48178  38 81 00 28 */	addi r4, r1, 0x28
/* 80D4817C  38 BE 05 50 */	addi r5, r30, 0x550
/* 80D48180  4B 5F EB ED */	bl PSMTXMultVec
/* 80D48184  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80D48188  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80D4818C  39 61 00 60 */	addi r11, r1, 0x60
/* 80D48190  4B 61 A0 91 */	bl _restgpr_27
/* 80D48194  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D48198  7C 08 03 A6 */	mtlr r0
/* 80D4819C  38 21 00 70 */	addi r1, r1, 0x70
/* 80D481A0  4E 80 00 20 */	blr 
