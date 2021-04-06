lbl_80AB6F40:
/* 80AB6F40  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AB6F44  7C 08 02 A6 */	mflr r0
/* 80AB6F48  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AB6F4C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AB6F50  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AB6F54  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB6F58  4B 8A B2 7D */	bl _savegpr_27
/* 80AB6F5C  7C 7E 1B 78 */	mr r30, r3
/* 80AB6F60  3C 60 80 AC */	lis r3, m__18daNpc_Raca_Param_c@ha /* 0x80AB8EC8@ha */
/* 80AB6F64  3B E3 8E C8 */	addi r31, r3, m__18daNpc_Raca_Param_c@l /* 0x80AB8EC8@l */
/* 80AB6F68  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80AB6F6C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80AB6F70  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AB6F74  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AB6F78  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80AB6F7C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AB6F80  38 80 00 00 */	li r4, 0
/* 80AB6F84  4B 69 0E B9 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80AB6F88  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80AB6F8C  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80AB6F90  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80AB6F94  7C 03 00 50 */	subf r0, r3, r0
/* 80AB6F98  7C 00 07 34 */	extsh r0, r0
/* 80AB6F9C  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80AB6FA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB6FA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AB6FA8  3C 00 43 30 */	lis r0, 0x4330
/* 80AB6FAC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80AB6FB0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AB6FB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AB6FB8  EF E2 00 32 */	fmuls f31, f2, f0
/* 80AB6FBC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AB6FC0  83 63 00 04 */	lwz r27, 4(r3)
/* 80AB6FC4  7F C3 F3 78 */	mr r3, r30
/* 80AB6FC8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AB6FCC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AB6FD0  7D 89 03 A6 */	mtctr r12
/* 80AB6FD4  4E 80 04 21 */	bctrl 
/* 80AB6FD8  7C 7C 1B 78 */	mr r28, r3
/* 80AB6FDC  7F C3 F3 78 */	mr r3, r30
/* 80AB6FE0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AB6FE4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80AB6FE8  7D 89 03 A6 */	mtctr r12
/* 80AB6FEC  4E 80 04 21 */	bctrl 
/* 80AB6FF0  7C 7D 1B 78 */	mr r29, r3
/* 80AB6FF4  7F C3 F3 78 */	mr r3, r30
/* 80AB6FF8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AB6FFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AB7000  7D 89 03 A6 */	mtctr r12
/* 80AB7004  4E 80 04 21 */	bctrl 
/* 80AB7008  7C 67 1B 78 */	mr r7, r3
/* 80AB700C  39 5F 00 00 */	addi r10, r31, 0
/* 80AB7010  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80AB7014  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AB7018  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80AB701C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AB7020  7F C4 F3 78 */	mr r4, r30
/* 80AB7024  7F 65 DB 78 */	mr r5, r27
/* 80AB7028  38 C1 00 28 */	addi r6, r1, 0x28
/* 80AB702C  7F A8 EB 78 */	mr r8, r29
/* 80AB7030  7F 89 E3 78 */	mr r9, r28
/* 80AB7034  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80AB7038  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80AB703C  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80AB7040  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80AB7044  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80AB7048  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80AB704C  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80AB7050  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80AB7054  39 40 00 00 */	li r10, 0
/* 80AB7058  4B 68 FC 81 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80AB705C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AB7060  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80AB7064  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80AB7068  FC 60 F8 90 */	fmr f3, f31
/* 80AB706C  4B 69 0B CD */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80AB7070  7F C3 F3 78 */	mr r3, r30
/* 80AB7074  4B 69 21 1D */	bl setMtx__8daNpcT_cFv
/* 80AB7078  7F C3 F3 78 */	mr r3, r30
/* 80AB707C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AB7080  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AB7084  7D 89 03 A6 */	mtctr r12
/* 80AB7088  4E 80 04 21 */	bctrl 
/* 80AB708C  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80AB7090  80 84 00 04 */	lwz r4, 4(r4)
/* 80AB7094  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80AB7098  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80AB709C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80AB70A0  7C 64 02 14 */	add r3, r4, r0
/* 80AB70A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB70A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB70AC  4B 88 F4 05 */	bl PSMTXCopy
/* 80AB70B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB70B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB70B8  38 81 00 28 */	addi r4, r1, 0x28
/* 80AB70BC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AB70C0  4B 88 FC AD */	bl PSMTXMultVec
/* 80AB70C4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AB70C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AB70CC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AB70D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AB70D4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AB70D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AB70DC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AB70E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AB70E4  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80AB70E8  38 A0 00 00 */	li r5, 0
/* 80AB70EC  48 00 18 A1 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80AB70F0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AB70F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AB70F8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AB70FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AB7100  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AB7104  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AB7108  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AB710C  38 81 00 10 */	addi r4, r1, 0x10
/* 80AB7110  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80AB7114  38 C0 00 01 */	li r6, 1
/* 80AB7118  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80AB711C  38 E0 00 00 */	li r7, 0
/* 80AB7120  48 00 17 51 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80AB7124  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AB7128  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AB712C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AB7130  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AB7134  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AB7138  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AB713C  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80AB7140  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AB7144  EC 01 00 2A */	fadds f0, f1, f0
/* 80AB7148  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AB714C  7F C3 F3 78 */	mr r3, r30
/* 80AB7150  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AB7154  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80AB7158  7D 89 03 A6 */	mtctr r12
/* 80AB715C  4E 80 04 21 */	bctrl 
/* 80AB7160  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AB7164  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AB7168  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB716C  4B 8A B0 B5 */	bl _restgpr_27
/* 80AB7170  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AB7174  7C 08 03 A6 */	mtlr r0
/* 80AB7178  38 21 00 70 */	addi r1, r1, 0x70
/* 80AB717C  4E 80 00 20 */	blr 
