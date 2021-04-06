lbl_8032EFBC:
/* 8032EFBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032EFC0  7C 08 02 A6 */	mflr r0
/* 8032EFC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032EFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EFCC  48 03 32 09 */	bl _savegpr_27
/* 8032EFD0  7C 7F 1B 78 */	mr r31, r3
/* 8032EFD4  83 8D 90 74 */	lwz r28, mJoint__10J3DMtxCalc(r13)
/* 8032EFD8  83 6D 90 70 */	lwz r27, mMtxBuffer__10J3DMtxCalc(r13)
/* 8032EFDC  A3 DC 00 14 */	lhz r30, 0x14(r28)
/* 8032EFE0  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 8032EFE4  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 8032EFE8  7F A4 02 14 */	add r29, r4, r0
/* 8032EFEC  7F A4 EB 78 */	mr r4, r29
/* 8032EFF0  4B FE 29 75 */	bl J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
/* 8032EFF4  C0 22 CA A0 */	lfs f1, lit_922(r2)
/* 8032EFF8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8032EFFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032F000  40 82 00 2C */	bne lbl_8032F02C
/* 8032F004  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8032F008  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032F00C  40 82 00 20 */	bne lbl_8032F02C
/* 8032F010  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8032F014  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8032F018  40 82 00 14 */	bne lbl_8032F02C
/* 8032F01C  38 00 00 01 */	li r0, 1
/* 8032F020  80 7B 00 04 */	lwz r3, 4(r27)
/* 8032F024  7C 03 F1 AE */	stbx r0, r3, r30
/* 8032F028  48 00 00 28 */	b lbl_8032F050
lbl_8032F02C:
/* 8032F02C  38 00 00 00 */	li r0, 0
/* 8032F030  80 7B 00 04 */	lwz r3, 4(r27)
/* 8032F034  7C 03 F1 AE */	stbx r0, r3, r30
/* 8032F038  7F A3 EB 78 */	mr r3, r29
/* 8032F03C  7F A4 EB 78 */	mr r4, r29
/* 8032F040  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8032F044  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8032F048  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8032F04C  48 00 AA 39 */	bl JMAMTXApplyScale__FPA4_CfPA4_ffff
lbl_8032F050:
/* 8032F050  88 1C 00 17 */	lbz r0, 0x17(r28)
/* 8032F054  28 00 00 01 */	cmplwi r0, 1
/* 8032F058  40 82 00 8C */	bne lbl_8032F0E4
/* 8032F05C  3C 60 80 43 */	lis r3, mParentS__6J3DSys@ha /* 0x80434C20@ha */
/* 8032F060  C4 03 4C 20 */	lfsu f0, mParentS__6J3DSys@l(r3)  /* 0x80434C20@l */
/* 8032F064  EC 20 00 30 */	fres f1, f0
/* 8032F068  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032F06C  EC 40 00 30 */	fres f2, f0
/* 8032F070  C0 03 00 08 */	lfs f0, 8(r3)
/* 8032F074  EC 60 00 30 */	fres f3, f0
/* 8032F078  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8032F07C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8032F080  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8032F084  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8032F088  EC 00 00 72 */	fmuls f0, f0, f1
/* 8032F08C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8032F090  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8032F094  EC 00 00 72 */	fmuls f0, f0, f1
/* 8032F098  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8032F09C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8032F0A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032F0A4  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8032F0A8  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8032F0AC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032F0B0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8032F0B4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8032F0B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032F0BC  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8032F0C0  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8032F0C4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032F0C8  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8032F0CC  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8032F0D0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032F0D4  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8032F0D8  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8032F0DC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8032F0E0  D0 1D 00 28 */	stfs f0, 0x28(r29)
lbl_8032F0E4:
/* 8032F0E4  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8032F0E8  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8032F0EC  7F A4 EB 78 */	mr r4, r29
/* 8032F0F0  7C 65 1B 78 */	mr r5, r3
/* 8032F0F4  48 01 73 F1 */	bl PSMTXConcat
/* 8032F0F8  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8032F0FC  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8032F100  7F A4 EB 78 */	mr r4, r29
/* 8032F104  48 01 73 AD */	bl PSMTXCopy
/* 8032F108  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8032F10C  3C 60 80 43 */	lis r3, mParentS__6J3DSys@ha /* 0x80434C20@ha */
/* 8032F110  D4 03 4C 20 */	stfsu f0, mParentS__6J3DSys@l(r3)  /* 0x80434C20@l */
/* 8032F114  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8032F118  D0 03 00 04 */	stfs f0, 4(r3)
/* 8032F11C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8032F120  D0 03 00 08 */	stfs f0, 8(r3)
/* 8032F124  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F128  48 03 30 F9 */	bl _restgpr_27
/* 8032F12C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F130  7C 08 03 A6 */	mtlr r0
/* 8032F134  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F138  4E 80 00 20 */	blr 
