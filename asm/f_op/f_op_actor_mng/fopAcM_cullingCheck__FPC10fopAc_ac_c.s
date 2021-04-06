lbl_8001ACEC:
/* 8001ACEC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8001ACF0  7C 08 02 A6 */	mflr r0
/* 8001ACF4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8001ACF8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8001ACFC  48 34 74 E1 */	bl _savegpr_29
/* 8001AD00  7C 7E 1B 78 */	mr r30, r3
/* 8001AD04  80 83 05 04 */	lwz r4, 0x504(r3)
/* 8001AD08  28 04 00 00 */	cmplwi r4, 0
/* 8001AD0C  40 82 00 14 */	bne lbl_8001AD20
/* 8001AD10  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8001AD14  38 03 4A C8 */	addi r0, r3, j3dSys@l /* 0x80434AC8@l */
/* 8001AD18  7C 1F 03 78 */	mr r31, r0
/* 8001AD1C  48 00 00 18 */	b lbl_8001AD34
lbl_8001AD20:
/* 8001AD20  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8001AD24  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8001AD28  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8001AD2C  48 32 B7 B9 */	bl PSMTXConcat
/* 8001AD30  3B E1 00 5C */	addi r31, r1, 0x5c
lbl_8001AD34:
/* 8001AD34  C0 3E 05 20 */	lfs f1, 0x520(r30)
/* 8001AD38  FC 40 08 90 */	fmr f2, f1
/* 8001AD3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001AD40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001AD44  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8001AD48  28 00 00 00 */	cmplwi r0, 0
/* 8001AD4C  41 82 00 0C */	beq lbl_8001AD58
/* 8001AD50  C0 03 4F B8 */	lfs f0, 0x4fb8(r3)
/* 8001AD54  EC 41 00 32 */	fmuls f2, f1, f0
lbl_8001AD58:
/* 8001AD58  88 7E 04 97 */	lbz r3, 0x497(r30)
/* 8001AD5C  38 00 00 00 */	li r0, 0
/* 8001AD60  2C 03 00 00 */	cmpwi r3, 0
/* 8001AD64  41 80 00 0C */	blt lbl_8001AD70
/* 8001AD68  2C 03 00 0E */	cmpwi r3, 0xe
/* 8001AD6C  41 80 00 0C */	blt lbl_8001AD78
lbl_8001AD70:
/* 8001AD70  2C 03 00 0E */	cmpwi r3, 0xe
/* 8001AD74  40 82 00 08 */	bne lbl_8001AD7C
lbl_8001AD78:
/* 8001AD78  38 00 00 01 */	li r0, 1
lbl_8001AD7C:
/* 8001AD7C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001AD80  41 82 01 14 */	beq lbl_8001AE94
/* 8001AD84  2C 03 00 0E */	cmpwi r3, 0xe
/* 8001AD88  40 82 00 80 */	bne lbl_8001AE08
/* 8001AD8C  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001AD90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001AD94  40 81 00 58 */	ble lbl_8001ADEC
/* 8001AD98  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 8001AD9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001ADA0  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001ADA4  3B A3 D8 E4 */	addi r29, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001ADA8  D0 1D 00 58 */	stfs f0, 0x58(r29)
/* 8001ADAC  7F A3 EB 78 */	mr r3, r29
/* 8001ADB0  48 25 89 DD */	bl calcViewFrustum__11J3DUClipperFv
/* 8001ADB4  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001ADB8  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001ADBC  7F E4 FB 78 */	mr r4, r31
/* 8001ADC0  38 BE 05 14 */	addi r5, r30, 0x514
/* 8001ADC4  38 DE 05 08 */	addi r6, r30, 0x508
/* 8001ADC8  48 25 8C 7D */	bl clip__11J3DUClipperCFPA4_CfP3VecP3Vec
/* 8001ADCC  7C 7E 1B 78 */	mr r30, r3
/* 8001ADD0  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 8001ADD4  D0 1D 00 58 */	stfs f0, 0x58(r29)
/* 8001ADD8  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001ADDC  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001ADE0  48 25 89 AD */	bl calcViewFrustum__11J3DUClipperFv
/* 8001ADE4  7F C3 F3 78 */	mr r3, r30
/* 8001ADE8  48 00 02 58 */	b lbl_8001B040
lbl_8001ADEC:
/* 8001ADEC  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001ADF0  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001ADF4  7F E4 FB 78 */	mr r4, r31
/* 8001ADF8  38 BE 05 14 */	addi r5, r30, 0x514
/* 8001ADFC  38 DE 05 08 */	addi r6, r30, 0x508
/* 8001AE00  48 25 8C 45 */	bl clip__11J3DUClipperCFPA4_CfP3VecP3Vec
/* 8001AE04  48 00 02 3C */	b lbl_8001B040
lbl_8001AE08:
/* 8001AE08  1C 83 00 18 */	mulli r4, r3, 0x18
/* 8001AE0C  3C 60 80 3A */	lis r3, l_cullSizeBox@ha /* 0x803A35F0@ha */
/* 8001AE10  38 03 35 F0 */	addi r0, r3, l_cullSizeBox@l /* 0x803A35F0@l */
/* 8001AE14  7F C0 22 14 */	add r30, r0, r4
/* 8001AE18  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001AE1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001AE20  40 81 00 58 */	ble lbl_8001AE78
/* 8001AE24  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 8001AE28  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001AE2C  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AE30  3B A3 D8 E4 */	addi r29, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AE34  D0 1D 00 58 */	stfs f0, 0x58(r29)
/* 8001AE38  7F A3 EB 78 */	mr r3, r29
/* 8001AE3C  48 25 89 51 */	bl calcViewFrustum__11J3DUClipperFv
/* 8001AE40  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AE44  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AE48  7F E4 FB 78 */	mr r4, r31
/* 8001AE4C  38 BE 00 0C */	addi r5, r30, 0xc
/* 8001AE50  7F C6 F3 78 */	mr r6, r30
/* 8001AE54  48 25 8B F1 */	bl clip__11J3DUClipperCFPA4_CfP3VecP3Vec
/* 8001AE58  7C 7E 1B 78 */	mr r30, r3
/* 8001AE5C  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 8001AE60  D0 1D 00 58 */	stfs f0, 0x58(r29)
/* 8001AE64  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AE68  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AE6C  48 25 89 21 */	bl calcViewFrustum__11J3DUClipperFv
/* 8001AE70  7F C3 F3 78 */	mr r3, r30
/* 8001AE74  48 00 01 CC */	b lbl_8001B040
lbl_8001AE78:
/* 8001AE78  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AE7C  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AE80  7F E4 FB 78 */	mr r4, r31
/* 8001AE84  38 BE 00 0C */	addi r5, r30, 0xc
/* 8001AE88  7F C6 F3 78 */	mr r6, r30
/* 8001AE8C  48 25 8B B9 */	bl clip__11J3DUClipperCFPA4_CfP3VecP3Vec
/* 8001AE90  48 00 01 B0 */	b lbl_8001B040
lbl_8001AE94:
/* 8001AE94  2C 03 00 17 */	cmpwi r3, 0x17
/* 8001AE98  40 82 00 E0 */	bne lbl_8001AF78
/* 8001AE9C  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001AEA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001AEA4  40 81 00 88 */	ble lbl_8001AF2C
/* 8001AEA8  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 8001AEAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001AEB0  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AEB4  3B A3 D8 E4 */	addi r29, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AEB8  D0 1D 00 58 */	stfs f0, 0x58(r29)
/* 8001AEBC  7F A3 EB 78 */	mr r3, r29
/* 8001AEC0  48 25 88 CD */	bl calcViewFrustum__11J3DUClipperFv
/* 8001AEC4  C0 3E 05 14 */	lfs f1, 0x514(r30)
/* 8001AEC8  C0 1E 05 08 */	lfs f0, 0x508(r30)
/* 8001AECC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8001AED0  C0 1E 05 0C */	lfs f0, 0x50c(r30)
/* 8001AED4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8001AED8  C0 1E 05 10 */	lfs f0, 0x510(r30)
/* 8001AEDC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8001AEE0  80 61 00 38 */	lwz r3, 0x38(r1)
/* 8001AEE4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8001AEE8  90 61 00 44 */	stw r3, 0x44(r1)
/* 8001AEEC  90 01 00 48 */	stw r0, 0x48(r1)
/* 8001AEF0  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8001AEF4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8001AEF8  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AEFC  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AF00  7F E4 FB 78 */	mr r4, r31
/* 8001AF04  38 A1 00 44 */	addi r5, r1, 0x44
/* 8001AF08  48 25 89 F5 */	bl clip__11J3DUClipperCFPA4_Cf3Vecf
/* 8001AF0C  7C 7E 1B 78 */	mr r30, r3
/* 8001AF10  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 8001AF14  D0 1D 00 58 */	stfs f0, 0x58(r29)
/* 8001AF18  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AF1C  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AF20  48 25 88 6D */	bl calcViewFrustum__11J3DUClipperFv
/* 8001AF24  7F C3 F3 78 */	mr r3, r30
/* 8001AF28  48 00 01 18 */	b lbl_8001B040
lbl_8001AF2C:
/* 8001AF2C  C0 3E 05 14 */	lfs f1, 0x514(r30)
/* 8001AF30  C0 1E 05 08 */	lfs f0, 0x508(r30)
/* 8001AF34  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001AF38  C0 1E 05 0C */	lfs f0, 0x50c(r30)
/* 8001AF3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001AF40  C0 1E 05 10 */	lfs f0, 0x510(r30)
/* 8001AF44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001AF48  80 61 00 08 */	lwz r3, 8(r1)
/* 8001AF4C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001AF50  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8001AF54  90 01 00 30 */	stw r0, 0x30(r1)
/* 8001AF58  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8001AF5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001AF60  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AF64  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AF68  7F E4 FB 78 */	mr r4, r31
/* 8001AF6C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8001AF70  48 25 89 8D */	bl clip__11J3DUClipperCFPA4_Cf3Vecf
/* 8001AF74  48 00 00 CC */	b lbl_8001B040
lbl_8001AF78:
/* 8001AF78  38 03 FF F1 */	addi r0, r3, -15
/* 8001AF7C  54 04 20 36 */	slwi r4, r0, 4
/* 8001AF80  3C 60 80 3A */	lis r3, l_cullSizeSphere@ha /* 0x803A3740@ha */
/* 8001AF84  38 03 37 40 */	addi r0, r3, l_cullSizeSphere@l /* 0x803A3740@l */
/* 8001AF88  7F A0 22 14 */	add r29, r0, r4
/* 8001AF8C  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001AF90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001AF94  40 81 00 7C */	ble lbl_8001B010
/* 8001AF98  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 8001AF9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8001AFA0  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AFA4  3B C3 D8 E4 */	addi r30, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AFA8  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8001AFAC  7F C3 F3 78 */	mr r3, r30
/* 8001AFB0  48 25 87 DD */	bl calcViewFrustum__11J3DUClipperFv
/* 8001AFB4  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8001AFB8  80 9D 00 00 */	lwz r4, 0(r29)
/* 8001AFBC  80 7D 00 04 */	lwz r3, 4(r29)
/* 8001AFC0  90 81 00 50 */	stw r4, 0x50(r1)
/* 8001AFC4  90 61 00 54 */	stw r3, 0x54(r1)
/* 8001AFC8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8001AFCC  90 01 00 58 */	stw r0, 0x58(r1)
/* 8001AFD0  90 81 00 20 */	stw r4, 0x20(r1)
/* 8001AFD4  90 61 00 24 */	stw r3, 0x24(r1)
/* 8001AFD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8001AFDC  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001AFE0  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001AFE4  7F E4 FB 78 */	mr r4, r31
/* 8001AFE8  38 A1 00 20 */	addi r5, r1, 0x20
/* 8001AFEC  48 25 89 11 */	bl clip__11J3DUClipperCFPA4_Cf3Vecf
/* 8001AFF0  7C 7D 1B 78 */	mr r29, r3
/* 8001AFF4  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 8001AFF8  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8001AFFC  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001B000  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001B004  48 25 87 89 */	bl calcViewFrustum__11J3DUClipperFv
/* 8001B008  7F A3 EB 78 */	mr r3, r29
/* 8001B00C  48 00 00 34 */	b lbl_8001B040
lbl_8001B010:
/* 8001B010  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8001B014  80 7D 00 00 */	lwz r3, 0(r29)
/* 8001B018  80 1D 00 04 */	lwz r0, 4(r29)
/* 8001B01C  90 61 00 14 */	stw r3, 0x14(r1)
/* 8001B020  90 01 00 18 */	stw r0, 0x18(r1)
/* 8001B024  80 1D 00 08 */	lwz r0, 8(r29)
/* 8001B028  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8001B02C  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8001B030  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 8001B034  7F E4 FB 78 */	mr r4, r31
/* 8001B038  38 A1 00 14 */	addi r5, r1, 0x14
/* 8001B03C  48 25 88 C1 */	bl clip__11J3DUClipperCFPA4_Cf3Vecf
lbl_8001B040:
/* 8001B040  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8001B044  48 34 71 E5 */	bl _restgpr_29
/* 8001B048  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8001B04C  7C 08 03 A6 */	mtlr r0
/* 8001B050  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8001B054  4E 80 00 20 */	blr 
