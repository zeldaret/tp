lbl_80A71E28:
/* 80A71E28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A71E2C  7C 08 02 A6 */	mflr r0
/* 80A71E30  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A71E34  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A71E38  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A71E3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A71E40  4B 8F 03 94 */	b _savegpr_27
/* 80A71E44  7C 7E 1B 78 */	mr r30, r3
/* 80A71E48  3C 60 80 A7 */	lis r3, m__18daNpc_midP_Param_c@ha
/* 80A71E4C  3B E3 39 C0 */	addi r31, r3, m__18daNpc_midP_Param_c@l
/* 80A71E50  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80A71E54  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A71E58  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80A71E5C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A71E60  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A71E64  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A71E68  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A71E6C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A71E70  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A71E74  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A71E78  38 80 00 00 */	li r4, 0
/* 80A71E7C  4B 6D 5F C0 */	b calc__19daNpcT_DmgStagger_cFi
/* 80A71E80  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80A71E84  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A71E88  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A71E8C  7C 03 00 50 */	subf r0, r3, r0
/* 80A71E90  7C 00 07 34 */	extsh r0, r0
/* 80A71E94  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80A71E98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A71E9C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A71EA0  3C 00 43 30 */	lis r0, 0x4330
/* 80A71EA4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A71EA8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80A71EAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A71EB0  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A71EB4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A71EB8  83 63 00 04 */	lwz r27, 4(r3)
/* 80A71EBC  7F C3 F3 78 */	mr r3, r30
/* 80A71EC0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A71EC4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A71EC8  7D 89 03 A6 */	mtctr r12
/* 80A71ECC  4E 80 04 21 */	bctrl 
/* 80A71ED0  7C 7C 1B 78 */	mr r28, r3
/* 80A71ED4  7F C3 F3 78 */	mr r3, r30
/* 80A71ED8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A71EDC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A71EE0  7D 89 03 A6 */	mtctr r12
/* 80A71EE4  4E 80 04 21 */	bctrl 
/* 80A71EE8  7C 7D 1B 78 */	mr r29, r3
/* 80A71EEC  7F C3 F3 78 */	mr r3, r30
/* 80A71EF0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A71EF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A71EF8  7D 89 03 A6 */	mtctr r12
/* 80A71EFC  4E 80 04 21 */	bctrl 
/* 80A71F00  7C 67 1B 78 */	mr r7, r3
/* 80A71F04  39 5F 00 00 */	addi r10, r31, 0
/* 80A71F08  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A71F0C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A71F10  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A71F14  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A71F18  7F C4 F3 78 */	mr r4, r30
/* 80A71F1C  7F 65 DB 78 */	mr r5, r27
/* 80A71F20  38 C1 00 34 */	addi r6, r1, 0x34
/* 80A71F24  7F A8 EB 78 */	mr r8, r29
/* 80A71F28  7F 89 E3 78 */	mr r9, r28
/* 80A71F2C  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A71F30  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A71F34  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A71F38  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A71F3C  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A71F40  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A71F44  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A71F48  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A71F4C  39 41 00 28 */	addi r10, r1, 0x28
/* 80A71F50  4B 6D 4D 88 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A71F54  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A71F58  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80A71F5C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A71F60  FC 60 F8 90 */	fmr f3, f31
/* 80A71F64  4B 6D 5C D4 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A71F68  7F C3 F3 78 */	mr r3, r30
/* 80A71F6C  4B 6D 72 24 */	b setMtx__8daNpcT_cFv
/* 80A71F70  7F C3 F3 78 */	mr r3, r30
/* 80A71F74  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A71F78  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A71F7C  7D 89 03 A6 */	mtctr r12
/* 80A71F80  4E 80 04 21 */	bctrl 
/* 80A71F84  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A71F88  80 84 00 04 */	lwz r4, 4(r4)
/* 80A71F8C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A71F90  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A71F94  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A71F98  7C 64 02 14 */	add r3, r4, r0
/* 80A71F9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A71FA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A71FA4  4B 8D 45 0C */	b PSMTXCopy
/* 80A71FA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A71FAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A71FB0  38 81 00 34 */	addi r4, r1, 0x34
/* 80A71FB4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A71FB8  4B 8D 4D B4 */	b PSMTXMultVec
/* 80A71FBC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A71FC0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A71FC4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A71FC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A71FCC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A71FD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A71FD4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A71FD8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A71FDC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A71FE0  38 A0 00 00 */	li r5, 0
/* 80A71FE4  48 00 14 A9 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A71FE8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A71FEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A71FF0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A71FF4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A71FF8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A71FFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A72000  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A72004  38 81 00 10 */	addi r4, r1, 0x10
/* 80A72008  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A7200C  38 C0 00 00 */	li r6, 0
/* 80A72010  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A72014  38 E0 00 00 */	li r7, 0
/* 80A72018  48 00 13 59 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A7201C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A72020  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A72024  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A72028  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A7202C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A72030  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80A72034  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80A72038  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A7203C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A72040  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A72044  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A72048  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A7204C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A72050  4B 8F 01 D0 */	b _restgpr_27
/* 80A72054  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A72058  7C 08 03 A6 */	mtlr r0
/* 80A7205C  38 21 00 70 */	addi r1, r1, 0x70
/* 80A72060  4E 80 00 20 */	blr 
