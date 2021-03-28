lbl_8032EE50:
/* 8032EE50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032EE54  7C 08 02 A6 */	mflr r0
/* 8032EE58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032EE5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EE60  48 03 33 75 */	bl _savegpr_27
/* 8032EE64  7C 7B 1B 78 */	mr r27, r3
/* 8032EE68  83 8D 90 70 */	lwz r28, mMtxBuffer__10J3DMtxCalc(r13)
/* 8032EE6C  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 8032EE70  A3 A3 00 14 */	lhz r29, 0x14(r3)
/* 8032EE74  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8032EE78  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 8032EE7C  7F E3 02 14 */	add r31, r3, r0
/* 8032EE80  A8 7B 00 0C */	lha r3, 0xc(r27)
/* 8032EE84  A8 9B 00 0E */	lha r4, 0xe(r27)
/* 8032EE88  A8 BB 00 10 */	lha r5, 0x10(r27)
/* 8032EE8C  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 8032EE90  3C C0 80 43 */	lis r6, mCurrentS__6J3DSys@ha
/* 8032EE94  3B C6 4C 14 */	addi r30, r6, mCurrentS__6J3DSys@l
/* 8032EE98  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8032EE9C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8032EEA0  C0 5B 00 18 */	lfs f2, 0x18(r27)
/* 8032EEA4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8032EEA8  EC 42 00 32 */	fmuls f2, f2, f0
/* 8032EEAC  C0 7B 00 1C */	lfs f3, 0x1c(r27)
/* 8032EEB0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8032EEB4  EC 63 00 32 */	fmuls f3, f3, f0
/* 8032EEB8  7F E6 FB 78 */	mr r6, r31
/* 8032EEBC  4B FE 2B 69 */	bl J3DGetTranslateRotateMtx__FsssfffPA4_f
/* 8032EEC0  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8032EEC4  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8032EEC8  7F E4 FB 78 */	mr r4, r31
/* 8032EECC  7C 65 1B 78 */	mr r5, r3
/* 8032EED0  48 01 76 15 */	bl PSMTXConcat
/* 8032EED4  3C 60 80 43 */	lis r3, mCurrentS__6J3DSys@ha
/* 8032EED8  C4 23 4C 14 */	lfsu f1, mCurrentS__6J3DSys@l(r3)
/* 8032EEDC  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8032EEE0  EC 61 00 32 */	fmuls f3, f1, f0
/* 8032EEE4  D0 63 00 00 */	stfs f3, 0(r3)
/* 8032EEE8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8032EEEC  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8032EEF0  EC 41 00 32 */	fmuls f2, f1, f0
/* 8032EEF4  D0 5E 00 04 */	stfs f2, 4(r30)
/* 8032EEF8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8032EEFC  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8032EF00  EC 21 00 32 */	fmuls f1, f1, f0
/* 8032EF04  D0 3E 00 08 */	stfs f1, 8(r30)
/* 8032EF08  C0 02 CA A0 */	lfs f0, lit_922(r2)
/* 8032EF0C  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 8032EF10  40 82 00 1C */	bne lbl_8032EF2C
/* 8032EF14  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8032EF18  40 82 00 14 */	bne lbl_8032EF2C
/* 8032EF1C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8032EF20  40 82 00 0C */	bne lbl_8032EF2C
/* 8032EF24  38 00 00 01 */	li r0, 1
/* 8032EF28  48 00 00 08 */	b lbl_8032EF30
lbl_8032EF2C:
/* 8032EF2C  38 00 00 00 */	li r0, 0
lbl_8032EF30:
/* 8032EF30  2C 00 00 00 */	cmpwi r0, 0
/* 8032EF34  40 82 00 54 */	bne lbl_8032EF88
/* 8032EF38  38 00 00 00 */	li r0, 0
/* 8032EF3C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032EF40  7C 03 E9 AE */	stbx r0, r3, r29
/* 8032EF44  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8032EF48  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8032EF4C  7F E4 FB 78 */	mr r4, r31
/* 8032EF50  3C A0 80 43 */	lis r5, mCurrentS__6J3DSys@ha
/* 8032EF54  C0 25 4C 14 */	lfs f1, mCurrentS__6J3DSys@l(r5)
/* 8032EF58  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8032EF5C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8032EF60  48 00 AB 25 */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
/* 8032EF64  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8032EF68  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8032EF6C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8032EF70  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8032EF74  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8032EF78  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8032EF7C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8032EF80  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8032EF84  48 00 00 20 */	b lbl_8032EFA4
lbl_8032EF88:
/* 8032EF88  38 00 00 01 */	li r0, 1
/* 8032EF8C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032EF90  7C 03 E9 AE */	stbx r0, r3, r29
/* 8032EF94  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8032EF98  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8032EF9C  7F E4 FB 78 */	mr r4, r31
/* 8032EFA0  48 01 75 11 */	bl PSMTXCopy
lbl_8032EFA4:
/* 8032EFA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EFA8  48 03 32 79 */	bl _restgpr_27
/* 8032EFAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032EFB0  7C 08 03 A6 */	mtlr r0
/* 8032EFB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8032EFB8  4E 80 00 20 */	blr 
