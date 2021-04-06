lbl_80B4EAEC:
/* 80B4EAEC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B4EAF0  7C 08 02 A6 */	mflr r0
/* 80B4EAF4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B4EAF8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80B4EAFC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80B4EB00  39 61 00 70 */	addi r11, r1, 0x70
/* 80B4EB04  4B 81 36 D1 */	bl _savegpr_27
/* 80B4EB08  7C 7E 1B 78 */	mr r30, r3
/* 80B4EB0C  3C 60 80 B5 */	lis r3, m__19daNpc_Yelia_Param_c@ha /* 0x80B522B4@ha */
/* 80B4EB10  3B E3 22 B4 */	addi r31, r3, m__19daNpc_Yelia_Param_c@l /* 0x80B522B4@l */
/* 80B4EB14  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80B4EB18  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B4EB1C  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80B4EB20  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80B4EB24  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B4EB28  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B4EB2C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B4EB30  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B4EB34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B4EB38  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B4EB3C  38 80 00 00 */	li r4, 0
/* 80B4EB40  4B 5F 92 FD */	bl calc__19daNpcT_DmgStagger_cFi
/* 80B4EB44  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 80B4EB48  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B4EB4C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B4EB50  7C 03 00 50 */	subf r0, r3, r0
/* 80B4EB54  7C 00 07 34 */	extsh r0, r0
/* 80B4EB58  C8 3F 01 00 */	lfd f1, 0x100(r31)
/* 80B4EB5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B4EB60  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B4EB64  3C 00 43 30 */	lis r0, 0x4330
/* 80B4EB68  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B4EB6C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80B4EB70  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B4EB74  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B4EB78  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B4EB7C  28 00 00 04 */	cmplwi r0, 4
/* 80B4EB80  41 82 00 0C */	beq lbl_80B4EB8C
/* 80B4EB84  28 00 00 05 */	cmplwi r0, 5
/* 80B4EB88  40 82 00 A8 */	bne lbl_80B4EC30
lbl_80B4EB8C:
/* 80B4EB8C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B4EB90  83 63 00 04 */	lwz r27, 4(r3)
/* 80B4EB94  7F C3 F3 78 */	mr r3, r30
/* 80B4EB98  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4EB9C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B4EBA0  7D 89 03 A6 */	mtctr r12
/* 80B4EBA4  4E 80 04 21 */	bctrl 
/* 80B4EBA8  7C 7D 1B 78 */	mr r29, r3
/* 80B4EBAC  7F C3 F3 78 */	mr r3, r30
/* 80B4EBB0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4EBB4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B4EBB8  7D 89 03 A6 */	mtctr r12
/* 80B4EBBC  4E 80 04 21 */	bctrl 
/* 80B4EBC0  7C 7C 1B 78 */	mr r28, r3
/* 80B4EBC4  7F C3 F3 78 */	mr r3, r30
/* 80B4EBC8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4EBCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B4EBD0  7D 89 03 A6 */	mtctr r12
/* 80B4EBD4  4E 80 04 21 */	bctrl 
/* 80B4EBD8  7C 67 1B 78 */	mr r7, r3
/* 80B4EBDC  39 5F 00 00 */	addi r10, r31, 0
/* 80B4EBE0  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B4EBE4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B4EBE8  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B4EBEC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4EBF0  7F C4 F3 78 */	mr r4, r30
/* 80B4EBF4  7F 65 DB 78 */	mr r5, r27
/* 80B4EBF8  38 C1 00 40 */	addi r6, r1, 0x40
/* 80B4EBFC  7F 88 E3 78 */	mr r8, r28
/* 80B4EC00  7F A9 EB 78 */	mr r9, r29
/* 80B4EC04  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80B4EC08  FC 40 08 90 */	fmr f2, f1
/* 80B4EC0C  FC 60 08 90 */	fmr f3, f1
/* 80B4EC10  FC 80 08 90 */	fmr f4, f1
/* 80B4EC14  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B4EC18  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B4EC1C  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B4EC20  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B4EC24  39 41 00 34 */	addi r10, r1, 0x34
/* 80B4EC28  4B 5F 80 B1 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B4EC2C  48 00 00 A4 */	b lbl_80B4ECD0
lbl_80B4EC30:
/* 80B4EC30  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B4EC34  83 63 00 04 */	lwz r27, 4(r3)
/* 80B4EC38  7F C3 F3 78 */	mr r3, r30
/* 80B4EC3C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4EC40  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B4EC44  7D 89 03 A6 */	mtctr r12
/* 80B4EC48  4E 80 04 21 */	bctrl 
/* 80B4EC4C  7C 7C 1B 78 */	mr r28, r3
/* 80B4EC50  7F C3 F3 78 */	mr r3, r30
/* 80B4EC54  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4EC58  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B4EC5C  7D 89 03 A6 */	mtctr r12
/* 80B4EC60  4E 80 04 21 */	bctrl 
/* 80B4EC64  7C 7D 1B 78 */	mr r29, r3
/* 80B4EC68  7F C3 F3 78 */	mr r3, r30
/* 80B4EC6C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4EC70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B4EC74  7D 89 03 A6 */	mtctr r12
/* 80B4EC78  4E 80 04 21 */	bctrl 
/* 80B4EC7C  7C 67 1B 78 */	mr r7, r3
/* 80B4EC80  39 5F 00 00 */	addi r10, r31, 0
/* 80B4EC84  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B4EC88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B4EC8C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B4EC90  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4EC94  7F C4 F3 78 */	mr r4, r30
/* 80B4EC98  7F 65 DB 78 */	mr r5, r27
/* 80B4EC9C  38 C1 00 40 */	addi r6, r1, 0x40
/* 80B4ECA0  7F A8 EB 78 */	mr r8, r29
/* 80B4ECA4  7F 89 E3 78 */	mr r9, r28
/* 80B4ECA8  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B4ECAC  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B4ECB0  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B4ECB4  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B4ECB8  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B4ECBC  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B4ECC0  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B4ECC4  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B4ECC8  39 41 00 34 */	addi r10, r1, 0x34
/* 80B4ECCC  4B 5F 80 0D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80B4ECD0:
/* 80B4ECD0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4ECD4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B4ECD8  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80B4ECDC  FC 60 F8 90 */	fmr f3, f31
/* 80B4ECE0  4B 5F 8F 59 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B4ECE4  7F C3 F3 78 */	mr r3, r30
/* 80B4ECE8  4B 5F A4 A9 */	bl setMtx__8daNpcT_cFv
/* 80B4ECEC  7F C3 F3 78 */	mr r3, r30
/* 80B4ECF0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4ECF4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B4ECF8  7D 89 03 A6 */	mtctr r12
/* 80B4ECFC  4E 80 04 21 */	bctrl 
/* 80B4ED00  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B4ED04  80 84 00 04 */	lwz r4, 4(r4)
/* 80B4ED08  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B4ED0C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B4ED10  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B4ED14  7C 64 02 14 */	add r3, r4, r0
/* 80B4ED18  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4ED1C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4ED20  4B 7F 77 91 */	bl PSMTXCopy
/* 80B4ED24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4ED28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4ED2C  38 81 00 40 */	addi r4, r1, 0x40
/* 80B4ED30  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B4ED34  4B 7F 80 39 */	bl PSMTXMultVec
/* 80B4ED38  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B4ED3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B4ED40  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B4ED44  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B4ED48  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B4ED4C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B4ED50  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4ED54  38 81 00 28 */	addi r4, r1, 0x28
/* 80B4ED58  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80B4ED5C  38 A0 F0 00 */	li r5, -4096
/* 80B4ED60  48 00 2F CD */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B4ED64  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B4ED68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B4ED6C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B4ED70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B4ED74  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B4ED78  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B4ED7C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4ED80  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B4ED84  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B4ED88  38 C0 00 01 */	li r6, 1
/* 80B4ED8C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80B4ED90  38 E0 00 00 */	li r7, 0
/* 80B4ED94  48 00 2E 7D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B4ED98  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B4ED9C  28 00 00 04 */	cmplwi r0, 4
/* 80B4EDA0  41 82 00 0C */	beq lbl_80B4EDAC
/* 80B4EDA4  28 00 00 05 */	cmplwi r0, 5
/* 80B4EDA8  40 82 00 20 */	bne lbl_80B4EDC8
lbl_80B4EDAC:
/* 80B4EDAC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B4EDB0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B4EDB4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B4EDB8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B4EDBC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80B4EDC0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B4EDC4  48 00 00 1C */	b lbl_80B4EDE0
lbl_80B4EDC8:
/* 80B4EDC8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B4EDCC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B4EDD0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B4EDD4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B4EDD8  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80B4EDDC  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80B4EDE0:
/* 80B4EDE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4EDE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4EDE8  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80B4EDEC  4B 4B D5 F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B4EDF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4EDF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4EDF8  38 81 00 34 */	addi r4, r1, 0x34
/* 80B4EDFC  7C 85 23 78 */	mr r5, r4
/* 80B4EE00  4B 7F 7F 6D */	bl PSMTXMultVec
/* 80B4EE04  38 61 00 10 */	addi r3, r1, 0x10
/* 80B4EE08  38 81 00 34 */	addi r4, r1, 0x34
/* 80B4EE0C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B4EE10  4B 71 7C D5 */	bl __pl__4cXyzCFRC3Vec
/* 80B4EE14  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B4EE18  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B4EE1C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B4EE20  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B4EE24  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B4EE28  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B4EE2C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80B4EE30  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80B4EE34  39 61 00 70 */	addi r11, r1, 0x70
/* 80B4EE38  4B 81 33 E9 */	bl _restgpr_27
/* 80B4EE3C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B4EE40  7C 08 03 A6 */	mtlr r0
/* 80B4EE44  38 21 00 80 */	addi r1, r1, 0x80
/* 80B4EE48  4E 80 00 20 */	blr 
