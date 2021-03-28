lbl_80A75AB8:
/* 80A75AB8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A75ABC  7C 08 02 A6 */	mflr r0
/* 80A75AC0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A75AC4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A75AC8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A75ACC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A75AD0  4B 8E C7 04 */	b _savegpr_27
/* 80A75AD4  7C 7E 1B 78 */	mr r30, r3
/* 80A75AD8  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha
/* 80A75ADC  3B E3 AE F0 */	addi r31, r3, m__17daNpc_Moi_Param_c@l
/* 80A75AE0  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80A75AE4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A75AE8  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80A75AEC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A75AF0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A75AF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A75AF8  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A75AFC  38 80 00 00 */	li r4, 0
/* 80A75B00  4B 6D 23 3C */	b calc__19daNpcT_DmgStagger_cFi
/* 80A75B04  C0 5F 01 30 */	lfs f2, 0x130(r31)
/* 80A75B08  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A75B0C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A75B10  7C 03 00 50 */	subf r0, r3, r0
/* 80A75B14  7C 00 07 34 */	extsh r0, r0
/* 80A75B18  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 80A75B1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A75B20  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A75B24  3C 00 43 30 */	lis r0, 0x4330
/* 80A75B28  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A75B2C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80A75B30  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A75B34  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A75B38  88 1E 15 C4 */	lbz r0, 0x15c4(r30)
/* 80A75B3C  28 00 00 03 */	cmplwi r0, 3
/* 80A75B40  40 82 00 A8 */	bne lbl_80A75BE8
/* 80A75B44  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A75B48  83 63 00 04 */	lwz r27, 4(r3)
/* 80A75B4C  7F C3 F3 78 */	mr r3, r30
/* 80A75B50  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A75B54  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A75B58  7D 89 03 A6 */	mtctr r12
/* 80A75B5C  4E 80 04 21 */	bctrl 
/* 80A75B60  7C 7D 1B 78 */	mr r29, r3
/* 80A75B64  7F C3 F3 78 */	mr r3, r30
/* 80A75B68  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A75B6C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A75B70  7D 89 03 A6 */	mtctr r12
/* 80A75B74  4E 80 04 21 */	bctrl 
/* 80A75B78  7C 7C 1B 78 */	mr r28, r3
/* 80A75B7C  7F C3 F3 78 */	mr r3, r30
/* 80A75B80  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A75B84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A75B88  7D 89 03 A6 */	mtctr r12
/* 80A75B8C  4E 80 04 21 */	bctrl 
/* 80A75B90  7C 67 1B 78 */	mr r7, r3
/* 80A75B94  38 7F 00 00 */	addi r3, r31, 0
/* 80A75B98  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80A75B9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A75BA0  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A75BA4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A75BA8  7F C4 F3 78 */	mr r4, r30
/* 80A75BAC  7F 65 DB 78 */	mr r5, r27
/* 80A75BB0  38 C1 00 34 */	addi r6, r1, 0x34
/* 80A75BB4  7F 88 E3 78 */	mr r8, r28
/* 80A75BB8  7F A9 EB 78 */	mr r9, r29
/* 80A75BBC  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80A75BC0  FC 40 08 90 */	fmr f2, f1
/* 80A75BC4  FC 60 08 90 */	fmr f3, f1
/* 80A75BC8  FC 80 08 90 */	fmr f4, f1
/* 80A75BCC  FC A0 08 90 */	fmr f5, f1
/* 80A75BD0  FC C0 08 90 */	fmr f6, f1
/* 80A75BD4  FC E0 08 90 */	fmr f7, f1
/* 80A75BD8  FD 00 08 90 */	fmr f8, f1
/* 80A75BDC  39 40 00 00 */	li r10, 0
/* 80A75BE0  4B 6D 10 F8 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A75BE4  48 00 00 A4 */	b lbl_80A75C88
lbl_80A75BE8:
/* 80A75BE8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A75BEC  83 63 00 04 */	lwz r27, 4(r3)
/* 80A75BF0  7F C3 F3 78 */	mr r3, r30
/* 80A75BF4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A75BF8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A75BFC  7D 89 03 A6 */	mtctr r12
/* 80A75C00  4E 80 04 21 */	bctrl 
/* 80A75C04  7C 7C 1B 78 */	mr r28, r3
/* 80A75C08  7F C3 F3 78 */	mr r3, r30
/* 80A75C0C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A75C10  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A75C14  7D 89 03 A6 */	mtctr r12
/* 80A75C18  4E 80 04 21 */	bctrl 
/* 80A75C1C  7C 7D 1B 78 */	mr r29, r3
/* 80A75C20  7F C3 F3 78 */	mr r3, r30
/* 80A75C24  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A75C28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A75C2C  7D 89 03 A6 */	mtctr r12
/* 80A75C30  4E 80 04 21 */	bctrl 
/* 80A75C34  7C 67 1B 78 */	mr r7, r3
/* 80A75C38  39 5F 00 00 */	addi r10, r31, 0
/* 80A75C3C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A75C40  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A75C44  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A75C48  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A75C4C  7F C4 F3 78 */	mr r4, r30
/* 80A75C50  7F 65 DB 78 */	mr r5, r27
/* 80A75C54  38 C1 00 34 */	addi r6, r1, 0x34
/* 80A75C58  7F A8 EB 78 */	mr r8, r29
/* 80A75C5C  7F 89 E3 78 */	mr r9, r28
/* 80A75C60  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A75C64  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A75C68  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A75C6C  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A75C70  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A75C74  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A75C78  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A75C7C  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A75C80  39 40 00 00 */	li r10, 0
/* 80A75C84  4B 6D 10 54 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80A75C88:
/* 80A75C88  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A75C8C  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 80A75C90  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 80A75C94  FC 60 F8 90 */	fmr f3, f31
/* 80A75C98  4B 6D 1F A0 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A75C9C  7F C3 F3 78 */	mr r3, r30
/* 80A75CA0  4B 6D 34 F0 */	b setMtx__8daNpcT_cFv
/* 80A75CA4  7F C3 F3 78 */	mr r3, r30
/* 80A75CA8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A75CAC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A75CB0  7D 89 03 A6 */	mtctr r12
/* 80A75CB4  4E 80 04 21 */	bctrl 
/* 80A75CB8  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A75CBC  80 84 00 04 */	lwz r4, 4(r4)
/* 80A75CC0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A75CC4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A75CC8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A75CCC  7C 64 02 14 */	add r3, r4, r0
/* 80A75CD0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A75CD4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A75CD8  4B 8D 07 D8 */	b PSMTXCopy
/* 80A75CDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A75CE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A75CE4  38 81 00 34 */	addi r4, r1, 0x34
/* 80A75CE8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A75CEC  4B 8D 10 80 */	b PSMTXMultVec
/* 80A75CF0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A75CF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A75CF8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A75CFC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A75D00  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A75D04  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A75D08  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A75D0C  38 81 00 28 */	addi r4, r1, 0x28
/* 80A75D10  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 80A75D14  38 A0 00 00 */	li r5, 0
/* 80A75D18  48 00 4B 99 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A75D1C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A75D20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A75D24  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A75D28  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A75D2C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A75D30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A75D34  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A75D38  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A75D3C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A75D40  A8 1E 0D 8C */	lha r0, 0xd8c(r30)
/* 80A75D44  7C 05 02 14 */	add r0, r5, r0
/* 80A75D48  7C 05 07 34 */	extsh r5, r0
/* 80A75D4C  38 C0 00 01 */	li r6, 1
/* 80A75D50  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 80A75D54  38 E0 00 00 */	li r7, 0
/* 80A75D58  48 00 4A 3D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A75D5C  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80A75D60  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A75D64  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80A75D68  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80A75D6C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A75D70  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A75D74  88 1E 15 C4 */	lbz r0, 0x15c4(r30)
/* 80A75D78  28 00 00 03 */	cmplwi r0, 3
/* 80A75D7C  40 82 00 1C */	bne lbl_80A75D98
/* 80A75D80  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A75D84  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 80A75D88  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A75D8C  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80A75D90  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A75D94  48 00 00 24 */	b lbl_80A75DB8
lbl_80A75D98:
/* 80A75D98  88 1E 16 6D */	lbz r0, 0x166d(r30)
/* 80A75D9C  28 00 00 00 */	cmplwi r0, 0
/* 80A75DA0  41 82 00 18 */	beq lbl_80A75DB8
/* 80A75DA4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A75DA8  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80A75DAC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A75DB0  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80A75DB4  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80A75DB8:
/* 80A75DB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A75DBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A75DC0  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80A75DC4  4B 59 66 18 */	b mDoMtx_YrotS__FPA4_fs
/* 80A75DC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A75DCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A75DD0  38 81 00 34 */	addi r4, r1, 0x34
/* 80A75DD4  7C 85 23 78 */	mr r5, r4
/* 80A75DD8  4B 8D 0F 94 */	b PSMTXMultVec
/* 80A75DDC  38 61 00 10 */	addi r3, r1, 0x10
/* 80A75DE0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A75DE4  38 A1 00 34 */	addi r5, r1, 0x34
/* 80A75DE8  4B 7F 0C FC */	b __pl__4cXyzCFRC3Vec
/* 80A75DEC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A75DF0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A75DF4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A75DF8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A75DFC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A75E00  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80A75E04  88 1E 16 6D */	lbz r0, 0x166d(r30)
/* 80A75E08  28 00 00 00 */	cmplwi r0, 0
/* 80A75E0C  41 82 00 20 */	beq lbl_80A75E2C
/* 80A75E10  38 7E 15 C8 */	addi r3, r30, 0x15c8
/* 80A75E14  4B 6C F8 F4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A75E18  28 03 00 00 */	cmplwi r3, 0
/* 80A75E1C  41 82 00 18 */	beq lbl_80A75E34
/* 80A75E20  38 00 00 0A */	li r0, 0xa
/* 80A75E24  90 03 05 A4 */	stw r0, 0x5a4(r3)
/* 80A75E28  48 00 00 0C */	b lbl_80A75E34
lbl_80A75E2C:
/* 80A75E2C  7F C3 F3 78 */	mr r3, r30
/* 80A75E30  48 00 0C CD */	bl torch__11daNpc_Moi_cFv
lbl_80A75E34:
/* 80A75E34  7F C3 F3 78 */	mr r3, r30
/* 80A75E38  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A75E3C  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80A75E40  7D 89 03 A6 */	mtctr r12
/* 80A75E44  4E 80 04 21 */	bctrl 
/* 80A75E48  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A75E4C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A75E50  39 61 00 60 */	addi r11, r1, 0x60
/* 80A75E54  4B 8E C3 CC */	b _restgpr_27
/* 80A75E58  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A75E5C  7C 08 03 A6 */	mtlr r0
/* 80A75E60  38 21 00 70 */	addi r1, r1, 0x70
/* 80A75E64  4E 80 00 20 */	blr 
