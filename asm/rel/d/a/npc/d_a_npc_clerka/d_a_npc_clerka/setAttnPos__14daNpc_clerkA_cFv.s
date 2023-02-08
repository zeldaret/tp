lbl_80993794:
/* 80993794  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80993798  7C 08 02 A6 */	mflr r0
/* 8099379C  90 01 00 94 */	stw r0, 0x94(r1)
/* 809937A0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 809937A4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 809937A8  39 61 00 80 */	addi r11, r1, 0x80
/* 809937AC  4B 9C EA 29 */	bl _savegpr_27
/* 809937B0  7C 7E 1B 78 */	mr r30, r3
/* 809937B4  3C 60 80 99 */	lis r3, m__20daNpc_clerkA_Param_c@ha /* 0x80995870@ha */
/* 809937B8  3B E3 58 70 */	addi r31, r3, m__20daNpc_clerkA_Param_c@l /* 0x80995870@l */
/* 809937BC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 809937C0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809937C4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 809937C8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 809937CC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 809937D0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809937D4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809937D8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 809937DC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809937E0  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809937E4  38 80 00 00 */	li r4, 0
/* 809937E8  4B 7B 46 55 */	bl calc__19daNpcT_DmgStagger_cFi
/* 809937EC  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 809937F0  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 809937F4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809937F8  7C 03 00 50 */	subf r0, r3, r0
/* 809937FC  7C 00 07 34 */	extsh r0, r0
/* 80993800  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80993804  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80993808  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8099380C  3C 00 43 30 */	lis r0, 0x4330
/* 80993810  90 01 00 58 */	stw r0, 0x58(r1)
/* 80993814  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80993818  EC 00 08 28 */	fsubs f0, f0, f1
/* 8099381C  EF E2 00 32 */	fmuls f31, f2, f0
/* 80993820  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80993824  83 63 00 04 */	lwz r27, 4(r3)
/* 80993828  7F C3 F3 78 */	mr r3, r30
/* 8099382C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80993830  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80993834  7D 89 03 A6 */	mtctr r12
/* 80993838  4E 80 04 21 */	bctrl 
/* 8099383C  7C 7C 1B 78 */	mr r28, r3
/* 80993840  7F C3 F3 78 */	mr r3, r30
/* 80993844  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80993848  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8099384C  7D 89 03 A6 */	mtctr r12
/* 80993850  4E 80 04 21 */	bctrl 
/* 80993854  7C 7D 1B 78 */	mr r29, r3
/* 80993858  7F C3 F3 78 */	mr r3, r30
/* 8099385C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80993860  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80993864  7D 89 03 A6 */	mtctr r12
/* 80993868  4E 80 04 21 */	bctrl 
/* 8099386C  7C 67 1B 78 */	mr r7, r3
/* 80993870  39 5F 00 00 */	addi r10, r31, 0
/* 80993874  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80993878  D0 01 00 08 */	stfs f0, 8(r1)
/* 8099387C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80993880  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80993884  7F C4 F3 78 */	mr r4, r30
/* 80993888  7F 65 DB 78 */	mr r5, r27
/* 8099388C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80993890  7F A8 EB 78 */	mr r8, r29
/* 80993894  7F 89 E3 78 */	mr r9, r28
/* 80993898  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8099389C  FC 40 08 90 */	fmr f2, f1
/* 809938A0  FC 60 08 90 */	fmr f3, f1
/* 809938A4  FC 80 08 90 */	fmr f4, f1
/* 809938A8  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809938AC  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809938B0  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809938B4  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809938B8  39 41 00 40 */	addi r10, r1, 0x40
/* 809938BC  4B 7B 34 1D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 809938C0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809938C4  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 809938C8  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 809938CC  FC 60 F8 90 */	fmr f3, f31
/* 809938D0  4B 7B 43 69 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 809938D4  7F C3 F3 78 */	mr r3, r30
/* 809938D8  4B 7B 58 B9 */	bl setMtx__8daNpcT_cFv
/* 809938DC  7F C3 F3 78 */	mr r3, r30
/* 809938E0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809938E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809938E8  7D 89 03 A6 */	mtctr r12
/* 809938EC  4E 80 04 21 */	bctrl 
/* 809938F0  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 809938F4  80 84 00 04 */	lwz r4, 4(r4)
/* 809938F8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 809938FC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80993900  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80993904  7C 64 02 14 */	add r3, r4, r0
/* 80993908  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099390C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80993910  4B 9B 2B A1 */	bl PSMTXCopy
/* 80993914  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80993918  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099391C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80993920  38 BE 05 38 */	addi r5, r30, 0x538
/* 80993924  4B 9B 34 49 */	bl PSMTXMultVec
/* 80993928  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8099392C  2C 00 00 03 */	cmpwi r0, 3
/* 80993930  40 82 00 68 */	bne lbl_80993998
/* 80993934  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80993938  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8099393C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80993940  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80993944  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80993948  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8099394C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80993950  38 81 00 34 */	addi r4, r1, 0x34
/* 80993954  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80993958  38 A0 00 00 */	li r5, 0
/* 8099395C  48 00 19 05 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80993960  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80993964  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80993968  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8099396C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80993970  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80993974  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80993978  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8099397C  38 81 00 28 */	addi r4, r1, 0x28
/* 80993980  38 A0 15 55 */	li r5, 0x1555
/* 80993984  38 C0 00 00 */	li r6, 0
/* 80993988  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8099398C  38 E0 00 00 */	li r7, 0
/* 80993990  48 00 17 B5 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80993994  48 00 00 64 */	b lbl_809939F8
lbl_80993998:
/* 80993998  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8099399C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809939A0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809939A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809939A8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809939AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809939B0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809939B4  38 81 00 1C */	addi r4, r1, 0x1c
/* 809939B8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 809939BC  38 A0 00 00 */	li r5, 0
/* 809939C0  48 00 18 A1 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 809939C4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809939C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809939CC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809939D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809939D4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809939D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809939DC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809939E0  38 81 00 10 */	addi r4, r1, 0x10
/* 809939E4  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809939E8  38 C0 00 01 */	li r6, 1
/* 809939EC  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 809939F0  38 E0 00 00 */	li r7, 0
/* 809939F4  48 00 17 51 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
lbl_809939F8:
/* 809939F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809939FC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80993A00  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80993A04  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80993A08  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80993A0C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80993A10  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80993A14  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80993A18  EC 01 00 2A */	fadds f0, f1, f0
/* 80993A1C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80993A20  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80993A24  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80993A28  39 61 00 80 */	addi r11, r1, 0x80
/* 80993A2C  4B 9C E7 F5 */	bl _restgpr_27
/* 80993A30  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80993A34  7C 08 03 A6 */	mtlr r0
/* 80993A38  38 21 00 90 */	addi r1, r1, 0x90
/* 80993A3C  4E 80 00 20 */	blr 
