lbl_80CCFD80:
/* 80CCFD80  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80CCFD84  7C 08 02 A6 */	mflr r0
/* 80CCFD88  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CCFD8C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80CCFD90  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80CCFD94  39 61 00 90 */	addi r11, r1, 0x90
/* 80CCFD98  4B 69 24 3C */	b _savegpr_27
/* 80CCFD9C  7C 7E 1B 78 */	mr r30, r3
/* 80CCFDA0  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CCFDA4  3B E3 5C FC */	addi r31, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CCFDA8  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80CCFDAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CCFDB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CCFDB4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CCFDB8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CCFDBC  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80CCFDC0  38 80 00 00 */	li r4, 0
/* 80CCFDC4  4B 47 80 78 */	b calc__19daNpcT_DmgStagger_cFi
/* 80CCFDC8  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 80CCFDCC  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80CCFDD0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80CCFDD4  7C 03 00 50 */	subf r0, r3, r0
/* 80CCFDD8  7C 00 07 34 */	extsh r0, r0
/* 80CCFDDC  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80CCFDE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CCFDE4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80CCFDE8  3C 00 43 30 */	lis r0, 0x4330
/* 80CCFDEC  90 01 00 68 */	stw r0, 0x68(r1)
/* 80CCFDF0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80CCFDF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CCFDF8  EF E2 00 32 */	fmuls f31, f2, f0
/* 80CCFDFC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80CCFE00  83 63 00 04 */	lwz r27, 4(r3)
/* 80CCFE04  7F C3 F3 78 */	mr r3, r30
/* 80CCFE08  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80CCFE0C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CCFE10  7D 89 03 A6 */	mtctr r12
/* 80CCFE14  4E 80 04 21 */	bctrl 
/* 80CCFE18  7C 7C 1B 78 */	mr r28, r3
/* 80CCFE1C  7F C3 F3 78 */	mr r3, r30
/* 80CCFE20  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80CCFE24  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80CCFE28  7D 89 03 A6 */	mtctr r12
/* 80CCFE2C  4E 80 04 21 */	bctrl 
/* 80CCFE30  7C 7D 1B 78 */	mr r29, r3
/* 80CCFE34  7F C3 F3 78 */	mr r3, r30
/* 80CCFE38  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80CCFE3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CCFE40  7D 89 03 A6 */	mtctr r12
/* 80CCFE44  4E 80 04 21 */	bctrl 
/* 80CCFE48  7C 67 1B 78 */	mr r7, r3
/* 80CCFE4C  39 5F 00 00 */	addi r10, r31, 0
/* 80CCFE50  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80CCFE54  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CCFE58  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CCFE5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CCFE60  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80CCFE64  7F C4 F3 78 */	mr r4, r30
/* 80CCFE68  7F 65 DB 78 */	mr r5, r27
/* 80CCFE6C  38 C1 00 28 */	addi r6, r1, 0x28
/* 80CCFE70  7F A8 EB 78 */	mr r8, r29
/* 80CCFE74  7F 89 E3 78 */	mr r9, r28
/* 80CCFE78  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80CCFE7C  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80CCFE80  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80CCFE84  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80CCFE88  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80CCFE8C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80CCFE90  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80CCFE94  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80CCFE98  39 40 00 00 */	li r10, 0
/* 80CCFE9C  4B 47 6E 3C */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80CCFEA0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80CCFEA4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80CCFEA8  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80CCFEAC  FC 60 F8 90 */	fmr f3, f31
/* 80CCFEB0  4B 47 7D 88 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80CCFEB4  7F C3 F3 78 */	mr r3, r30
/* 80CCFEB8  4B 47 92 D8 */	b setMtx__8daNpcT_cFv
/* 80CCFEBC  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CCFEC0  28 00 00 06 */	cmplwi r0, 6
/* 80CCFEC4  40 82 00 40 */	bne lbl_80CCFF04
/* 80CCFEC8  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80CCFECC  83 63 00 04 */	lwz r27, 4(r3)
/* 80CCFED0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CCFED4  4B 33 CE 90 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CCFED8  38 7E 0D 78 */	addi r3, r30, 0xd78
/* 80CCFEDC  4B 33 D0 68 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CCFEE0  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80CCFEE4  4B 33 CF 8C */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CCFEE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCFEEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCFEF0  38 9B 00 24 */	addi r4, r27, 0x24
/* 80CCFEF4  4B 67 65 BC */	b PSMTXCopy
/* 80CCFEF8  93 DB 00 14 */	stw r30, 0x14(r27)
/* 80CCFEFC  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80CCFF00  4B 34 12 EC */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_80CCFF04:
/* 80CCFF04  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80CCFF08  28 03 00 00 */	cmplwi r3, 0
/* 80CCFF0C  41 82 00 9C */	beq lbl_80CCFFA8
/* 80CCFF10  38 80 00 00 */	li r4, 0
/* 80CCFF14  38 A0 00 00 */	li r5, 0
/* 80CCFF18  4B 34 11 98 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80CCFF1C  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CCFF20  28 00 00 01 */	cmplwi r0, 1
/* 80CCFF24  41 82 00 14 */	beq lbl_80CCFF38
/* 80CCFF28  28 00 00 03 */	cmplwi r0, 3
/* 80CCFF2C  41 82 00 0C */	beq lbl_80CCFF38
/* 80CCFF30  28 00 00 05 */	cmplwi r0, 5
/* 80CCFF34  40 82 00 28 */	bne lbl_80CCFF5C
lbl_80CCFF38:
/* 80CCFF38  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80CCFF3C  80 63 00 04 */	lwz r3, 4(r3)
/* 80CCFF40  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CCFF44  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CCFF48  38 63 01 50 */	addi r3, r3, 0x150
/* 80CCFF4C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CCFF50  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CCFF54  4B 67 65 5C */	b PSMTXCopy
/* 80CCFF58  48 00 00 24 */	b lbl_80CCFF7C
lbl_80CCFF5C:
/* 80CCFF5C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80CCFF60  80 63 00 04 */	lwz r3, 4(r3)
/* 80CCFF64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CCFF68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CCFF6C  38 63 02 70 */	addi r3, r3, 0x270
/* 80CCFF70  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CCFF74  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CCFF78  4B 67 65 38 */	b PSMTXCopy
lbl_80CCFF7C:
/* 80CCFF7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCFF80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCFF84  38 81 00 34 */	addi r4, r1, 0x34
/* 80CCFF88  4B 67 65 28 */	b PSMTXCopy
/* 80CCFF8C  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80CCFF90  80 83 00 04 */	lwz r4, 4(r3)
/* 80CCFF94  38 61 00 34 */	addi r3, r1, 0x34
/* 80CCFF98  38 84 00 24 */	addi r4, r4, 0x24
/* 80CCFF9C  4B 67 65 14 */	b PSMTXCopy
/* 80CCFFA0  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80CCFFA4  4B 34 12 48 */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_80CCFFA8:
/* 80CCFFA8  7F C3 F3 78 */	mr r3, r30
/* 80CCFFAC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80CCFFB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80CCFFB4  7D 89 03 A6 */	mtctr r12
/* 80CCFFB8  4E 80 04 21 */	bctrl 
/* 80CCFFBC  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80CCFFC0  80 84 00 04 */	lwz r4, 4(r4)
/* 80CCFFC4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80CCFFC8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80CCFFCC  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80CCFFD0  7C 64 02 14 */	add r3, r4, r0
/* 80CCFFD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CCFFD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CCFFDC  4B 67 64 D4 */	b PSMTXCopy
/* 80CCFFE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCFFE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCFFE8  38 81 00 28 */	addi r4, r1, 0x28
/* 80CCFFEC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CCFFF0  4B 67 6D 7C */	b PSMTXMultVec
/* 80CCFFF4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80CCFFF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CCFFFC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80CD0000  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD0004  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80CD0008  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CD000C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80CD0010  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CD0014  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80CD0018  38 A0 00 00 */	li r5, 0
/* 80CD001C  48 00 55 81 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80CD0020  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80CD0024  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD0028  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80CD002C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD0030  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80CD0034  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD0038  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80CD003C  38 81 00 10 */	addi r4, r1, 0x10
/* 80CD0040  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80CD0044  38 C0 00 01 */	li r6, 1
/* 80CD0048  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80CD004C  38 E0 00 00 */	li r7, 0
/* 80CD0050  48 00 54 31 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80CD0054  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CD0058  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80CD005C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CD0060  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CD0064  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CD0068  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80CD006C  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80CD0070  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CD0074  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD0078  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CD007C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80CD0080  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80CD0084  39 61 00 90 */	addi r11, r1, 0x90
/* 80CD0088  4B 69 21 98 */	b _restgpr_27
/* 80CD008C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80CD0090  7C 08 03 A6 */	mtlr r0
/* 80CD0094  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80CD0098  4E 80 00 20 */	blr 
