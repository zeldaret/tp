lbl_8032ED30:
/* 8032ED30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032ED34  7C 08 02 A6 */	mflr r0
/* 8032ED38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032ED3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032ED40  48 03 34 95 */	bl _savegpr_27
/* 8032ED44  7C 7B 1B 78 */	mr r27, r3
/* 8032ED48  83 8D 90 70 */	lwz r28, mMtxBuffer__10J3DMtxCalc(r13)
/* 8032ED4C  80 8D 90 74 */	lwz r4, mJoint__10J3DMtxCalc(r13)
/* 8032ED50  A3 C4 00 14 */	lhz r30, 0x14(r4)
/* 8032ED54  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8032ED58  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8032ED5C  7F A4 02 14 */	add r29, r4, r0
/* 8032ED60  3C 80 80 43 */	lis r4, mCurrentS__6J3DSys@ha
/* 8032ED64  3B E4 4C 14 */	addi r31, r4, mCurrentS__6J3DSys@l
/* 8032ED68  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8032ED6C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8032ED70  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032ED74  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8032ED78  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8032ED7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032ED80  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032ED84  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8032ED88  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8032ED8C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8032ED90  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032ED94  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8032ED98  7F A4 EB 78 */	mr r4, r29
/* 8032ED9C  4B FE 2B C9 */	bl J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
/* 8032EDA0  C0 22 CA A0 */	lfs f1, lit_922(r2)
/* 8032EDA4  3C 60 80 43 */	lis r3, mCurrentS__6J3DSys@ha
/* 8032EDA8  C0 03 4C 14 */	lfs f0, mCurrentS__6J3DSys@l(r3)
/* 8032EDAC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032EDB0  40 82 00 24 */	bne lbl_8032EDD4
/* 8032EDB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8032EDB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032EDBC  40 82 00 18 */	bne lbl_8032EDD4
/* 8032EDC0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8032EDC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032EDC8  40 82 00 0C */	bne lbl_8032EDD4
/* 8032EDCC  38 00 00 01 */	li r0, 1
/* 8032EDD0  48 00 00 08 */	b lbl_8032EDD8
lbl_8032EDD4:
/* 8032EDD4  38 00 00 00 */	li r0, 0
lbl_8032EDD8:
/* 8032EDD8  2C 00 00 00 */	cmpwi r0, 0
/* 8032EDDC  40 82 00 2C */	bne lbl_8032EE08
/* 8032EDE0  38 00 00 00 */	li r0, 0
/* 8032EDE4  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032EDE8  7C 03 F1 AE */	stbx r0, r3, r30
/* 8032EDEC  7F A3 EB 78 */	mr r3, r29
/* 8032EDF0  7F A4 EB 78 */	mr r4, r29
/* 8032EDF4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8032EDF8  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8032EDFC  C0 7B 00 08 */	lfs f3, 8(r27)
/* 8032EE00  48 00 AC 85 */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
/* 8032EE04  48 00 00 10 */	b lbl_8032EE14
lbl_8032EE08:
/* 8032EE08  38 00 00 01 */	li r0, 1
/* 8032EE0C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032EE10  7C 03 F1 AE */	stbx r0, r3, r30
lbl_8032EE14:
/* 8032EE14  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8032EE18  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8032EE1C  7F A4 EB 78 */	mr r4, r29
/* 8032EE20  7C 65 1B 78 */	mr r5, r3
/* 8032EE24  48 01 76 C1 */	bl PSMTXConcat
/* 8032EE28  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8032EE2C  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8032EE30  7F A4 EB 78 */	mr r4, r29
/* 8032EE34  48 01 76 7D */	bl PSMTXCopy
/* 8032EE38  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EE3C  48 03 33 E5 */	bl _restgpr_27
/* 8032EE40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032EE44  7C 08 03 A6 */	mtlr r0
/* 8032EE48  38 21 00 20 */	addi r1, r1, 0x20
/* 8032EE4C  4E 80 00 20 */	blr 
