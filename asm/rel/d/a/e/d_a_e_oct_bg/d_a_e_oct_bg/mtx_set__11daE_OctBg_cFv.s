lbl_80736A78:
/* 80736A78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80736A7C  7C 08 02 A6 */	mflr r0
/* 80736A80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80736A84  39 61 00 20 */	addi r11, r1, 0x20
/* 80736A88  4B C2 B7 54 */	b _savegpr_29
/* 80736A8C  7C 7F 1B 78 */	mr r31, r3
/* 80736A90  3C 60 80 74 */	lis r3, lit_3768@ha
/* 80736A94  3B A3 9D 60 */	addi r29, r3, lit_3768@l
/* 80736A98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80736A9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80736AA0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80736AA4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80736AA8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80736AAC  4B C0 FE 3C */	b PSMTXTrans
/* 80736AB0  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80736AB4  C0 5D 00 34 */	lfs f2, 0x34(r29)
/* 80736AB8  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha
/* 80736ABC  3B C3 A1 4C */	addi r30, r3, struct_8073A14C+0x0@l
/* 80736AC0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80736AC4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80736AC8  FC 60 08 90 */	fmr f3, f1
/* 80736ACC  4B 8D 62 D0 */	b transM__14mDoMtx_stack_cFfff
/* 80736AD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80736AD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80736AD8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80736ADC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80736AE0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80736AE4  4B 8D 57 BC */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80736AE8  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80736AEC  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 80736AF0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80736AF4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80736AF8  FC 60 08 90 */	fmr f3, f1
/* 80736AFC  4B 8D 62 A0 */	b transM__14mDoMtx_stack_cFfff
/* 80736B00  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80736B04  FC 40 08 90 */	fmr f2, f1
/* 80736B08  FC 60 08 90 */	fmr f3, f1
/* 80736B0C  4B 8D 63 2C */	b scaleM__14mDoMtx_stack_cFfff
/* 80736B10  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80736B14  83 A3 00 04 */	lwz r29, 4(r3)
/* 80736B18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80736B1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80736B20  38 9D 00 24 */	addi r4, r29, 0x24
/* 80736B24  4B C0 F9 8C */	b PSMTXCopy
/* 80736B28  38 C0 00 01 */	li r6, 1
/* 80736B2C  3C 60 80 74 */	lis r3, JointCallBack__11daE_OctBg_cFP8J3DJointi@ha
/* 80736B30  38 83 91 D0 */	addi r4, r3, JointCallBack__11daE_OctBg_cFP8J3DJointi@l
/* 80736B34  48 00 00 18 */	b lbl_80736B4C
lbl_80736B38:
/* 80736B38  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80736B3C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80736B40  7C 63 00 2E */	lwzx r3, r3, r0
/* 80736B44  90 83 00 04 */	stw r4, 4(r3)
/* 80736B48  38 C6 00 01 */	addi r6, r6, 1
lbl_80736B4C:
/* 80736B4C  80 BD 00 04 */	lwz r5, 4(r29)
/* 80736B50  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80736B54  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80736B58  7C 00 18 40 */	cmplw r0, r3
/* 80736B5C  41 80 FF DC */	blt lbl_80736B38
/* 80736B60  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80736B64  4B 8D A6 88 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80736B68  38 C0 00 01 */	li r6, 1
/* 80736B6C  38 80 00 00 */	li r4, 0
/* 80736B70  48 00 00 18 */	b lbl_80736B88
lbl_80736B74:
/* 80736B74  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80736B78  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80736B7C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80736B80  90 83 00 04 */	stw r4, 4(r3)
/* 80736B84  38 C6 00 01 */	addi r6, r6, 1
lbl_80736B88:
/* 80736B88  80 BD 00 04 */	lwz r5, 4(r29)
/* 80736B8C  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80736B90  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80736B94  7C 00 18 40 */	cmplw r0, r3
/* 80736B98  41 80 FF DC */	blt lbl_80736B74
/* 80736B9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80736BA0  4B C2 B6 88 */	b _restgpr_29
/* 80736BA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80736BA8  7C 08 03 A6 */	mtlr r0
/* 80736BAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80736BB0  4E 80 00 20 */	blr 
