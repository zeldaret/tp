lbl_807829E8:
/* 807829E8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807829EC  7C 08 02 A6 */	mflr r0
/* 807829F0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807829F4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 807829F8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 807829FC  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80782A00  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 80782A04  7C 7F 1B 78 */	mr r31, r3
/* 80782A08  3C 60 80 78 */	lis r3, lit_3658@ha /* 0x80784D68@ha */
/* 80782A0C  3B C3 4D 68 */	addi r30, r3, lit_3658@l /* 0x80784D68@l */
/* 80782A10  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 80782A14  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80782A18  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 80782A1C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80782A20  3C 80 80 78 */	lis r4, data_80784FC8@ha /* 0x80784FC8@ha */
/* 80782A24  38 84 4F C8 */	addi r4, r4, data_80784FC8@l /* 0x80784FC8@l */
/* 80782A28  A8 84 00 00 */	lha r4, 0(r4)
/* 80782A2C  38 A0 10 00 */	li r5, 0x1000
/* 80782A30  4B AE E1 61 */	bl cLib_chaseAngleS__FPsss
/* 80782A34  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80782A38  3C 80 80 78 */	lis r4, data_80784FC8@ha /* 0x80784FC8@ha */
/* 80782A3C  38 84 4F C8 */	addi r4, r4, data_80784FC8@l /* 0x80784FC8@l */
/* 80782A40  A8 84 00 00 */	lha r4, 0(r4)
/* 80782A44  38 A0 10 00 */	li r5, 0x1000
/* 80782A48  4B AE E1 49 */	bl cLib_chaseAngleS__FPsss
/* 80782A4C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80782A50  4B 8F 52 19 */	bl __ct__11dBgS_LinChkFv
/* 80782A54  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80782A58  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80782A5C  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80782A60  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80782A64  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80782A68  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80782A6C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80782A70  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80782A74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80782A78  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80782A7C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80782A80  4B 88 A2 E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80782A84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80782A88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80782A8C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80782A90  4B 88 99 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80782A94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80782A98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80782A9C  38 81 00 20 */	addi r4, r1, 0x20
/* 80782AA0  7C 85 23 78 */	mr r5, r4
/* 80782AA4  4B BC 42 C9 */	bl PSMTXMultVec
/* 80782AA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80782AAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80782AB0  38 81 00 14 */	addi r4, r1, 0x14
/* 80782AB4  7C 85 23 78 */	mr r5, r4
/* 80782AB8  4B BC 42 B5 */	bl PSMTXMultVec
/* 80782ABC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80782AC0  38 81 00 20 */	addi r4, r1, 0x20
/* 80782AC4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80782AC8  38 C0 00 00 */	li r6, 0
/* 80782ACC  4B 8F 52 99 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80782AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80782AD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80782AD8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80782ADC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80782AE0  4B 8F 18 D5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80782AE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80782AE8  41 82 00 64 */	beq lbl_80782B4C
/* 80782AEC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80782AF0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80782AF4  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80782AF8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80782AFC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80782B00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80782B04  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80782B08  EC 21 00 28 */	fsubs f1, f1, f0
/* 80782B0C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80782B10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80782B14  40 81 00 20 */	ble lbl_80782B34
/* 80782B18  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80782B1C  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 80782B20  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80782B24  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80782B28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80782B2C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80782B30  48 00 00 1C */	b lbl_80782B4C
lbl_80782B34:
/* 80782B34  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80782B38  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 80782B3C  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80782B40  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80782B44  EC 01 00 32 */	fmuls f0, f1, f0
/* 80782B48  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80782B4C:
/* 80782B4C  D3 FF 05 2C */	stfs f31, 0x52c(r31)
/* 80782B50  38 61 00 2C */	addi r3, r1, 0x2c
/* 80782B54  38 80 FF FF */	li r4, -1
/* 80782B58  4B 8F 51 85 */	bl __dt__11dBgS_LinChkFv
/* 80782B5C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80782B60  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80782B64  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80782B68  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80782B6C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80782B70  7C 08 03 A6 */	mtlr r0
/* 80782B74  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80782B78  4E 80 00 20 */	blr 
