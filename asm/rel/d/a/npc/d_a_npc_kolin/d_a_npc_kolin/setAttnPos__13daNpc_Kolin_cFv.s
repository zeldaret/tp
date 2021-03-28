lbl_80555810:
/* 80555810  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80555814  7C 08 02 A6 */	mflr r0
/* 80555818  90 01 00 74 */	stw r0, 0x74(r1)
/* 8055581C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80555820  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80555824  39 61 00 60 */	addi r11, r1, 0x60
/* 80555828  4B E0 C9 A8 */	b _savegpr_26
/* 8055582C  7C 7D 1B 78 */	mr r29, r3
/* 80555830  3C 60 80 56 */	lis r3, lit_1109@ha
/* 80555834  3B C3 B3 D0 */	addi r30, r3, lit_1109@l
/* 80555838  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha
/* 8055583C  3B E3 A5 B4 */	addi r31, r3, m__19daNpc_Kolin_Param_c@l
/* 80555840  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80555844  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80555848  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8055584C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80555850  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80555854  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80555858  88 1D 10 15 */	lbz r0, 0x1015(r29)
/* 8055585C  28 00 00 00 */	cmplwi r0, 0
/* 80555860  41 82 00 1C */	beq lbl_8055587C
/* 80555864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80555868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055586C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80555870  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80555874  60 00 02 00 */	ori r0, r0, 0x200
/* 80555878  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_8055587C:
/* 8055587C  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 80555880  38 80 00 00 */	li r4, 0
/* 80555884  4B BF 25 B8 */	b calc__19daNpcT_DmgStagger_cFi
/* 80555888  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 8055588C  A8 7D 0D 80 */	lha r3, 0xd80(r29)
/* 80555890  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80555894  7C 03 00 50 */	subf r0, r3, r0
/* 80555898  7C 00 07 34 */	extsh r0, r0
/* 8055589C  C8 3F 01 28 */	lfd f1, 0x128(r31)
/* 805558A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805558A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805558A8  3C 00 43 30 */	lis r0, 0x4330
/* 805558AC  90 01 00 40 */	stw r0, 0x40(r1)
/* 805558B0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805558B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805558B8  EF E2 00 32 */	fmuls f31, f2, f0
/* 805558BC  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 805558C0  83 43 00 04 */	lwz r26, 4(r3)
/* 805558C4  7F A3 EB 78 */	mr r3, r29
/* 805558C8  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 805558CC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805558D0  7D 89 03 A6 */	mtctr r12
/* 805558D4  4E 80 04 21 */	bctrl 
/* 805558D8  7C 7B 1B 78 */	mr r27, r3
/* 805558DC  7F A3 EB 78 */	mr r3, r29
/* 805558E0  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 805558E4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805558E8  7D 89 03 A6 */	mtctr r12
/* 805558EC  4E 80 04 21 */	bctrl 
/* 805558F0  7C 7C 1B 78 */	mr r28, r3
/* 805558F4  7F A3 EB 78 */	mr r3, r29
/* 805558F8  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 805558FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80555900  7D 89 03 A6 */	mtctr r12
/* 80555904  4E 80 04 21 */	bctrl 
/* 80555908  7C 67 1B 78 */	mr r7, r3
/* 8055590C  39 5F 00 00 */	addi r10, r31, 0
/* 80555910  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80555914  D0 01 00 08 */	stfs f0, 8(r1)
/* 80555918  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 8055591C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80555920  7F A4 EB 78 */	mr r4, r29
/* 80555924  7F 45 D3 78 */	mr r5, r26
/* 80555928  38 C1 00 34 */	addi r6, r1, 0x34
/* 8055592C  7F 88 E3 78 */	mr r8, r28
/* 80555930  7F 69 DB 78 */	mr r9, r27
/* 80555934  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80555938  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 8055593C  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80555940  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80555944  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80555948  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 8055594C  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80555950  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80555954  39 40 00 00 */	li r10, 0
/* 80555958  4B BF 13 80 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 8055595C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80555960  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80555964  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 80555968  FC 60 F8 90 */	fmr f3, f31
/* 8055596C  4B BF 22 CC */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80555970  7F A3 EB 78 */	mr r3, r29
/* 80555974  4B BF 38 1C */	b setMtx__8daNpcT_cFv
/* 80555978  7F A3 EB 78 */	mr r3, r29
/* 8055597C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80555980  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80555984  7D 89 03 A6 */	mtctr r12
/* 80555988  4E 80 04 21 */	bctrl 
/* 8055598C  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80555990  80 84 00 04 */	lwz r4, 4(r4)
/* 80555994  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80555998  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8055599C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 805559A0  7C 64 02 14 */	add r3, r4, r0
/* 805559A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805559A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805559AC  4B DF 0B 04 */	b PSMTXCopy
/* 805559B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805559B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805559B8  38 81 00 34 */	addi r4, r1, 0x34
/* 805559BC  38 BD 05 38 */	addi r5, r29, 0x538
/* 805559C0  4B DF 13 AC */	b PSMTXMultVec
/* 805559C4  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 805559C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805559CC  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 805559D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805559D4  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 805559D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805559DC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 805559E0  38 81 00 28 */	addi r4, r1, 0x28
/* 805559E4  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 805559E8  38 A0 00 00 */	li r5, 0
/* 805559EC  48 00 45 15 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 805559F0  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 805559F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805559F8  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 805559FC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80555A00  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80555A04  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80555A08  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80555A0C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80555A10  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 80555A14  38 C0 00 00 */	li r6, 0
/* 80555A18  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80555A1C  38 E0 00 00 */	li r7, 0
/* 80555A20  48 00 43 C5 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80555A24  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80555A28  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80555A2C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80555A30  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80555A34  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80555A38  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80555A3C  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80555A40  28 00 00 0A */	cmplwi r0, 0xa
/* 80555A44  40 82 00 1C */	bne lbl_80555A60
/* 80555A48  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80555A4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80555A50  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80555A54  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80555A58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80555A5C  D0 41 00 38 */	stfs f2, 0x38(r1)
lbl_80555A60:
/* 80555A60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80555A64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80555A68  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 80555A6C  4B AB 69 70 */	b mDoMtx_YrotS__FPA4_fs
/* 80555A70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80555A74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80555A78  38 81 00 34 */	addi r4, r1, 0x34
/* 80555A7C  7C 85 23 78 */	mr r5, r4
/* 80555A80  4B DF 12 EC */	b PSMTXMultVec
/* 80555A84  38 61 00 10 */	addi r3, r1, 0x10
/* 80555A88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80555A8C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80555A90  4B D1 10 54 */	b __pl__4cXyzCFRC3Vec
/* 80555A94  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80555A98  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80555A9C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80555AA0  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80555AA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80555AA8  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80555AAC  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80555AB0  7C 00 07 75 */	extsb. r0, r0
/* 80555AB4  40 82 00 30 */	bne lbl_80555AE4
/* 80555AB8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80555ABC  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80555AC0  38 7E 00 60 */	addi r3, r30, 0x60
/* 80555AC4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80555AC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80555ACC  3C 80 80 56 */	lis r4, __dt__4cXyzFv@ha
/* 80555AD0  38 84 95 3C */	addi r4, r4, __dt__4cXyzFv@l
/* 80555AD4  38 BE 00 50 */	addi r5, r30, 0x50
/* 80555AD8  4B FF E4 A1 */	bl __register_global_object
/* 80555ADC  38 00 00 01 */	li r0, 1
/* 80555AE0  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80555AE4:
/* 80555AE4  7F A3 EB 78 */	mr r3, r29
/* 80555AE8  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80555AEC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80555AF0  7D 89 03 A6 */	mtctr r12
/* 80555AF4  4E 80 04 21 */	bctrl 
/* 80555AF8  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80555AFC  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80555B00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80555B04  40 80 00 24 */	bge lbl_80555B28
/* 80555B08  7F A3 EB 78 */	mr r3, r29
/* 80555B0C  38 9E 00 60 */	addi r4, r30, 0x60
/* 80555B10  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 80555B14  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 80555B18  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80555B1C  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80555B20  7D 89 03 A6 */	mtctr r12
/* 80555B24  4E 80 04 21 */	bctrl 
lbl_80555B28:
/* 80555B28  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80555B2C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80555B30  39 61 00 60 */	addi r11, r1, 0x60
/* 80555B34  4B E0 C6 E8 */	b _restgpr_26
/* 80555B38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80555B3C  7C 08 03 A6 */	mtlr r0
/* 80555B40  38 21 00 70 */	addi r1, r1, 0x70
/* 80555B44  4E 80 00 20 */	blr 
