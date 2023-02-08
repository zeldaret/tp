lbl_80AFDB70:
/* 80AFDB70  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AFDB74  7C 08 02 A6 */	mflr r0
/* 80AFDB78  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AFDB7C  39 61 00 50 */	addi r11, r1, 0x50
/* 80AFDB80  4B 86 46 5D */	bl _savegpr_29
/* 80AFDB84  7C 7D 1B 78 */	mr r29, r3
/* 80AFDB88  3C 60 80 B0 */	lis r3, m__17daNpcTheB_Param_c@ha /* 0x80B00D6C@ha */
/* 80AFDB8C  3B C3 0D 6C */	addi r30, r3, m__17daNpcTheB_Param_c@l /* 0x80B00D6C@l */
/* 80AFDB90  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFDB94  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFDB98  38 63 00 24 */	addi r3, r3, 0x24
/* 80AFDB9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFDBA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFDBA4  4B 84 89 0D */	bl PSMTXCopy
/* 80AFDBA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFDBAC  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFDBB0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AFDBB4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80AFDBB8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AFDBBC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80AFDBC0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80AFDBC4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80AFDBC8  7F E3 FB 78 */	mr r3, r31
/* 80AFDBCC  38 9D 08 F0 */	addi r4, r29, 0x8f0
/* 80AFDBD0  4B 50 F0 31 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80AFDBD4  A8 1D 08 F0 */	lha r0, 0x8f0(r29)
/* 80AFDBD8  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80AFDBDC  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80AFDBE0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80AFDBE4  A8 1D 08 F4 */	lha r0, 0x8f4(r29)
/* 80AFDBE8  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80AFDBEC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80AFDBF0  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80AFDBF4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80AFDBF8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80AFDBFC  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80AFDC00  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80AFDC04  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80AFDC08  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80AFDC0C  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80AFDC10  B0 1D 0E 0A */	sth r0, 0xe0a(r29)
/* 80AFDC14  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AFDC18  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80AFDC1C  41 82 00 1C */	beq lbl_80AFDC38
/* 80AFDC20  C0 1D 05 7C */	lfs f0, 0x57c(r29)
/* 80AFDC24  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 80AFDC28  D0 03 00 08 */	stfs f0, 8(r3)
/* 80AFDC2C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFDC30  4B 51 35 BD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80AFDC34  48 00 00 0C */	b lbl_80AFDC40
lbl_80AFDC38:
/* 80AFDC38  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFDC3C  4B 51 35 B1 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_80AFDC40:
/* 80AFDC40  7F A3 EB 78 */	mr r3, r29
/* 80AFDC44  48 00 10 E1 */	bl lookat__11daNpcTheB_cFv
/* 80AFDC48  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80AFDC4C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AFDC50  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80AFDC54  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AFDC58  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80AFDC5C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AFDC60  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFDC64  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFDC68  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AFDC6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AFDC70  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80AFDC74  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFDC78  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFDC7C  4B 84 88 35 */	bl PSMTXCopy
/* 80AFDC80  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AFDC84  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80AFDC88  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AFDC8C  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80AFDC90  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80AFDC94  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80AFDC98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFDC9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFDCA0  38 81 00 30 */	addi r4, r1, 0x30
/* 80AFDCA4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AFDCA8  4B 84 90 C5 */	bl PSMTXMultVec
/* 80AFDCAC  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80AFDCB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AFDCB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFDCB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFDCBC  38 81 00 30 */	addi r4, r1, 0x30
/* 80AFDCC0  7C 85 23 78 */	mr r5, r4
/* 80AFDCC4  4B 84 90 A9 */	bl PSMTXMultVec
/* 80AFDCC8  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80AFDCCC  38 81 00 30 */	addi r4, r1, 0x30
/* 80AFDCD0  4B 77 2F A5 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80AFDCD4  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80AFDCD8  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80AFDCDC  38 81 00 30 */	addi r4, r1, 0x30
/* 80AFDCE0  4B 77 2F 25 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AFDCE4  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80AFDCE8  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 80AFDCEC  28 04 00 00 */	cmplwi r4, 0
/* 80AFDCF0  41 82 01 6C */	beq lbl_80AFDE5C
/* 80AFDCF4  38 61 00 18 */	addi r3, r1, 0x18
/* 80AFDCF8  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AFDCFC  4B 76 8E 39 */	bl __mi__4cXyzCFRC3Vec
/* 80AFDD00  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80AFDD04  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80AFDD08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AFDD0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AFDD10  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80AFDD14  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80AFDD18  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80AFDD1C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80AFDD20  7C 03 02 14 */	add r0, r3, r0
/* 80AFDD24  7C 00 00 D0 */	neg r0, r0
/* 80AFDD28  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AFDD2C  4B 76 99 49 */	bl cM_atan2s__Fff
/* 80AFDD30  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80AFDD34  7C 00 1A 14 */	add r0, r0, r3
/* 80AFDD38  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AFDD3C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80AFDD40  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AFDD44  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80AFDD48  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AFDD4C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80AFDD50  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AFDD54  38 61 00 0C */	addi r3, r1, 0xc
/* 80AFDD58  4B 84 93 E1 */	bl PSVECSquareMag
/* 80AFDD5C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80AFDD60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFDD64  40 81 00 58 */	ble lbl_80AFDDBC
/* 80AFDD68  FC 00 08 34 */	frsqrte f0, f1
/* 80AFDD6C  C8 9E 00 D8 */	lfd f4, 0xd8(r30)
/* 80AFDD70  FC 44 00 32 */	fmul f2, f4, f0
/* 80AFDD74  C8 7E 00 E0 */	lfd f3, 0xe0(r30)
/* 80AFDD78  FC 00 00 32 */	fmul f0, f0, f0
/* 80AFDD7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80AFDD80  FC 03 00 28 */	fsub f0, f3, f0
/* 80AFDD84  FC 02 00 32 */	fmul f0, f2, f0
/* 80AFDD88  FC 44 00 32 */	fmul f2, f4, f0
/* 80AFDD8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AFDD90  FC 01 00 32 */	fmul f0, f1, f0
/* 80AFDD94  FC 03 00 28 */	fsub f0, f3, f0
/* 80AFDD98  FC 02 00 32 */	fmul f0, f2, f0
/* 80AFDD9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AFDDA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80AFDDA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80AFDDA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80AFDDAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80AFDDB0  FC 41 00 32 */	fmul f2, f1, f0
/* 80AFDDB4  FC 40 10 18 */	frsp f2, f2
/* 80AFDDB8  48 00 00 90 */	b lbl_80AFDE48
lbl_80AFDDBC:
/* 80AFDDBC  C8 1E 00 E8 */	lfd f0, 0xe8(r30)
/* 80AFDDC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFDDC4  40 80 00 10 */	bge lbl_80AFDDD4
/* 80AFDDC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AFDDCC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AFDDD0  48 00 00 78 */	b lbl_80AFDE48
lbl_80AFDDD4:
/* 80AFDDD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AFDDD8  80 81 00 08 */	lwz r4, 8(r1)
/* 80AFDDDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AFDDE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AFDDE4  7C 03 00 00 */	cmpw r3, r0
/* 80AFDDE8  41 82 00 14 */	beq lbl_80AFDDFC
/* 80AFDDEC  40 80 00 40 */	bge lbl_80AFDE2C
/* 80AFDDF0  2C 03 00 00 */	cmpwi r3, 0
/* 80AFDDF4  41 82 00 20 */	beq lbl_80AFDE14
/* 80AFDDF8  48 00 00 34 */	b lbl_80AFDE2C
lbl_80AFDDFC:
/* 80AFDDFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AFDE00  41 82 00 0C */	beq lbl_80AFDE0C
/* 80AFDE04  38 00 00 01 */	li r0, 1
/* 80AFDE08  48 00 00 28 */	b lbl_80AFDE30
lbl_80AFDE0C:
/* 80AFDE0C  38 00 00 02 */	li r0, 2
/* 80AFDE10  48 00 00 20 */	b lbl_80AFDE30
lbl_80AFDE14:
/* 80AFDE14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AFDE18  41 82 00 0C */	beq lbl_80AFDE24
/* 80AFDE1C  38 00 00 05 */	li r0, 5
/* 80AFDE20  48 00 00 10 */	b lbl_80AFDE30
lbl_80AFDE24:
/* 80AFDE24  38 00 00 03 */	li r0, 3
/* 80AFDE28  48 00 00 08 */	b lbl_80AFDE30
lbl_80AFDE2C:
/* 80AFDE2C  38 00 00 04 */	li r0, 4
lbl_80AFDE30:
/* 80AFDE30  2C 00 00 01 */	cmpwi r0, 1
/* 80AFDE34  40 82 00 10 */	bne lbl_80AFDE44
/* 80AFDE38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AFDE3C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AFDE40  48 00 00 08 */	b lbl_80AFDE48
lbl_80AFDE44:
/* 80AFDE44  FC 40 08 90 */	fmr f2, f1
lbl_80AFDE48:
/* 80AFDE48  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AFDE4C  4B 76 98 29 */	bl cM_atan2s__Fff
/* 80AFDE50  7C 03 00 D0 */	neg r0, r3
/* 80AFDE54  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80AFDE58  48 00 00 10 */	b lbl_80AFDE68
lbl_80AFDE5C:
/* 80AFDE5C  38 00 00 00 */	li r0, 0
/* 80AFDE60  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AFDE64  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80AFDE68:
/* 80AFDE68  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80AFDE6C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80AFDE70  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80AFDE74  EC 21 00 2A */	fadds f1, f1, f0
/* 80AFDE78  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80AFDE7C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80AFDE80  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80AFDE84  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80AFDE88  38 7D 0D A8 */	addi r3, r29, 0xda8
/* 80AFDE8C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AFDE90  4B 77 13 4D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AFDE94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFDE98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFDE9C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AFDEA0  38 9D 0C 84 */	addi r4, r29, 0xc84
/* 80AFDEA4  4B 76 6D 05 */	bl Set__4cCcSFP8cCcD_Obj
/* 80AFDEA8  39 61 00 50 */	addi r11, r1, 0x50
/* 80AFDEAC  4B 86 43 7D */	bl _restgpr_29
/* 80AFDEB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AFDEB4  7C 08 03 A6 */	mtlr r0
/* 80AFDEB8  38 21 00 50 */	addi r1, r1, 0x50
/* 80AFDEBC  4E 80 00 20 */	blr 
