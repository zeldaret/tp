lbl_80B6CE80:
/* 80B6CE80  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B6CE84  7C 08 02 A6 */	mflr r0
/* 80B6CE88  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B6CE8C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B6CE90  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B6CE94  39 61 00 60 */	addi r11, r1, 0x60
/* 80B6CE98  4B 7F 53 3D */	bl _savegpr_27
/* 80B6CE9C  7C 7B 1B 78 */	mr r27, r3
/* 80B6CEA0  3C 60 80 B7 */	lis r3, m__18daNpc_Zant_Param_c@ha /* 0x80B6E9A8@ha */
/* 80B6CEA4  3B A3 E9 A8 */	addi r29, r3, m__18daNpc_Zant_Param_c@l /* 0x80B6E9A8@l */
/* 80B6CEA8  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 80B6CEAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B6CEB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B6CEB4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B6CEB8  38 7B 0D 08 */	addi r3, r27, 0xd08
/* 80B6CEBC  38 80 00 00 */	li r4, 0
/* 80B6CEC0  4B 5D AF 7D */	bl calc__19daNpcT_DmgStagger_cFi
/* 80B6CEC4  C0 5D 00 B4 */	lfs f2, 0xb4(r29)
/* 80B6CEC8  A8 7B 0D 80 */	lha r3, 0xd80(r27)
/* 80B6CECC  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 80B6CED0  7C 03 00 50 */	subf r0, r3, r0
/* 80B6CED4  7C 00 07 34 */	extsh r0, r0
/* 80B6CED8  C8 3D 00 B8 */	lfd f1, 0xb8(r29)
/* 80B6CEDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6CEE0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B6CEE4  3C 00 43 30 */	lis r0, 0x4330
/* 80B6CEE8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B6CEEC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B6CEF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B6CEF4  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B6CEF8  80 7B 05 78 */	lwz r3, 0x578(r27)
/* 80B6CEFC  83 83 00 04 */	lwz r28, 4(r3)
/* 80B6CF00  7F 63 DB 78 */	mr r3, r27
/* 80B6CF04  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80B6CF08  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B6CF0C  7D 89 03 A6 */	mtctr r12
/* 80B6CF10  4E 80 04 21 */	bctrl 
/* 80B6CF14  7C 7E 1B 78 */	mr r30, r3
/* 80B6CF18  7F 63 DB 78 */	mr r3, r27
/* 80B6CF1C  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80B6CF20  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B6CF24  7D 89 03 A6 */	mtctr r12
/* 80B6CF28  4E 80 04 21 */	bctrl 
/* 80B6CF2C  7C 7F 1B 78 */	mr r31, r3
/* 80B6CF30  7F 63 DB 78 */	mr r3, r27
/* 80B6CF34  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80B6CF38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B6CF3C  7D 89 03 A6 */	mtctr r12
/* 80B6CF40  4E 80 04 21 */	bctrl 
/* 80B6CF44  7C 67 1B 78 */	mr r7, r3
/* 80B6CF48  39 5D 00 00 */	addi r10, r29, 0
/* 80B6CF4C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B6CF50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B6CF54  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B6CF58  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B6CF5C  7F 64 DB 78 */	mr r4, r27
/* 80B6CF60  7F 85 E3 78 */	mr r5, r28
/* 80B6CF64  38 C1 00 28 */	addi r6, r1, 0x28
/* 80B6CF68  7F E8 FB 78 */	mr r8, r31
/* 80B6CF6C  7F C9 F3 78 */	mr r9, r30
/* 80B6CF70  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B6CF74  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B6CF78  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B6CF7C  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B6CF80  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B6CF84  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B6CF88  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B6CF8C  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B6CF90  39 40 00 00 */	li r10, 0
/* 80B6CF94  4B 5D 9D 45 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B6CF98  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B6CF9C  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 80B6CFA0  C0 5D 00 AC */	lfs f2, 0xac(r29)
/* 80B6CFA4  FC 60 F8 90 */	fmr f3, f31
/* 80B6CFA8  4B 5D AC 91 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B6CFAC  7F 63 DB 78 */	mr r3, r27
/* 80B6CFB0  4B 5D C1 E1 */	bl setMtx__8daNpcT_cFv
/* 80B6CFB4  C0 1B 05 38 */	lfs f0, 0x538(r27)
/* 80B6CFB8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B6CFBC  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 80B6CFC0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B6CFC4  C0 1B 05 40 */	lfs f0, 0x540(r27)
/* 80B6CFC8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B6CFCC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B6CFD0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B6CFD4  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 80B6CFD8  38 A0 00 00 */	li r5, 0
/* 80B6CFDC  48 00 14 B1 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B6CFE0  C0 1B 05 38 */	lfs f0, 0x538(r27)
/* 80B6CFE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B6CFE8  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 80B6CFEC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B6CFF0  C0 1B 05 40 */	lfs f0, 0x540(r27)
/* 80B6CFF4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B6CFF8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B6CFFC  38 81 00 10 */	addi r4, r1, 0x10
/* 80B6D000  A8 BB 0D 7A */	lha r5, 0xd7a(r27)
/* 80B6D004  38 C0 00 01 */	li r6, 1
/* 80B6D008  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 80B6D00C  38 E0 00 00 */	li r7, 0
/* 80B6D010  48 00 13 61 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B6D014  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B6D018  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 80B6D01C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80B6D020  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80B6D024  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80B6D028  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 80B6D02C  C0 3B 05 54 */	lfs f1, 0x554(r27)
/* 80B6D030  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80B6D034  EC 01 00 2A */	fadds f0, f1, f0
/* 80B6D038  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80B6D03C  C0 1B 05 50 */	lfs f0, 0x550(r27)
/* 80B6D040  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 80B6D044  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 80B6D048  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 80B6D04C  C0 1B 05 58 */	lfs f0, 0x558(r27)
/* 80B6D050  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 80B6D054  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B6D058  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B6D05C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B6D060  4B 7F 51 C1 */	bl _restgpr_27
/* 80B6D064  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B6D068  7C 08 03 A6 */	mtlr r0
/* 80B6D06C  38 21 00 70 */	addi r1, r1, 0x70
/* 80B6D070  4E 80 00 20 */	blr 
