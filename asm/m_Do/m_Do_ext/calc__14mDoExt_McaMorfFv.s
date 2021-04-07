lbl_80010074:
/* 80010074  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80010078  7C 08 02 A6 */	mflr r0
/* 8001007C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80010080  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80010084  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80010088  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8001008C  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80010090  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80010094  48 35 21 45 */	bl _savegpr_28
/* 80010098  7C 7C 1B 78 */	mr r28, r3
/* 8001009C  80 03 00 04 */	lwz r0, 4(r3)
/* 800100A0  28 00 00 00 */	cmplwi r0, 0
/* 800100A4  41 82 02 B0 */	beq lbl_80010354
/* 800100A8  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 800100AC  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 800100B0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 800100B4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 800100B8  93 83 00 30 */	stw r28, 0x30(r3)
/* 800100BC  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 800100C0  28 03 00 00 */	cmplwi r3, 0
/* 800100C4  40 82 00 0C */	bne lbl_800100D0
/* 800100C8  3B C1 00 48 */	addi r30, r1, 0x48
/* 800100CC  48 00 00 0C */	b lbl_800100D8
lbl_800100D0:
/* 800100D0  57 E0 2A F4 */	rlwinm r0, r31, 5, 0xb, 0x1a
/* 800100D4  7F C3 02 14 */	add r30, r3, r0
lbl_800100D8:
/* 800100D8  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 800100DC  28 04 00 00 */	cmplwi r4, 0
/* 800100E0  40 82 00 0C */	bne lbl_800100EC
/* 800100E4  3B A1 00 18 */	addi r29, r1, 0x18
/* 800100E8  48 00 00 0C */	b lbl_800100F4
lbl_800100EC:
/* 800100EC  57 E0 23 36 */	rlwinm r0, r31, 4, 0xc, 0x1b
/* 800100F0  7F A4 02 14 */	add r29, r4, r0
lbl_800100F4:
/* 800100F4  80 1C 00 08 */	lwz r0, 8(r28)
/* 800100F8  28 00 00 00 */	cmplwi r0, 0
/* 800100FC  40 82 00 8C */	bne lbl_80010188
/* 80010100  80 7C 00 04 */	lwz r3, 4(r28)
/* 80010104  80 63 00 04 */	lwz r3, 4(r3)
/* 80010108  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8001010C  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 80010110  7C 63 00 2E */	lwzx r3, r3, r0
/* 80010114  E0 03 00 18 */	psq_l f0, 24(r3), 0, 0 /* qr0 */
/* 80010118  F0 1E 00 00 */	psq_st f0, 0(r30), 0, 0 /* qr0 */
/* 8001011C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80010120  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80010124  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80010128  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8001012C  A8 03 00 28 */	lha r0, 0x28(r3)
/* 80010130  B0 1E 00 10 */	sth r0, 0x10(r30)
/* 80010134  E0 03 00 2C */	psq_l f0, 44(r3), 0, 0 /* qr0 */
/* 80010138  F0 1E 00 14 */	psq_st f0, 20(r30), 0, 0 /* qr0 */
/* 8001013C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80010140  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80010144  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 80010148  28 03 00 00 */	cmplwi r3, 0
/* 8001014C  41 82 00 1C */	beq lbl_80010168
/* 80010150  7F E4 FB 78 */	mr r4, r31
/* 80010154  7F C5 F3 78 */	mr r5, r30
/* 80010158  81 83 00 00 */	lwz r12, 0(r3)
/* 8001015C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80010160  7D 89 03 A6 */	mtctr r12
/* 80010164  4E 80 04 21 */	bctrl 
lbl_80010168:
/* 80010168  A8 7E 00 0C */	lha r3, 0xc(r30)
/* 8001016C  A8 9E 00 0E */	lha r4, 0xe(r30)
/* 80010170  A8 BE 00 10 */	lha r5, 0x10(r30)
/* 80010174  7F A6 EB 78 */	mr r6, r29
/* 80010178  48 32 97 01 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8001017C  7F C3 F3 78 */	mr r3, r30
/* 80010180  48 31 EE 3D */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 80010184  48 00 01 B0 */	b lbl_80010334
lbl_80010188:
/* 80010188  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8001018C  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 80010190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80010194  4C 41 13 82 */	cror 2, 1, 2
/* 80010198  41 82 00 14 */	beq lbl_800101AC
/* 8001019C  28 03 00 00 */	cmplwi r3, 0
/* 800101A0  41 82 00 0C */	beq lbl_800101AC
/* 800101A4  28 04 00 00 */	cmplwi r4, 0
/* 800101A8  40 82 00 58 */	bne lbl_80010200
lbl_800101AC:
/* 800101AC  7F 83 E3 78 */	mr r3, r28
/* 800101B0  7F E4 FB 78 */	mr r4, r31
/* 800101B4  7F C5 F3 78 */	mr r5, r30
/* 800101B8  48 00 05 59 */	bl getTransform__14mDoExt_McaMorfFUsP16J3DTransformInfo
/* 800101BC  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 800101C0  28 03 00 00 */	cmplwi r3, 0
/* 800101C4  41 82 00 1C */	beq lbl_800101E0
/* 800101C8  7F E4 FB 78 */	mr r4, r31
/* 800101CC  7F C5 F3 78 */	mr r5, r30
/* 800101D0  81 83 00 00 */	lwz r12, 0(r3)
/* 800101D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 800101D8  7D 89 03 A6 */	mtctr r12
/* 800101DC  4E 80 04 21 */	bctrl 
lbl_800101E0:
/* 800101E0  A8 7E 00 0C */	lha r3, 0xc(r30)
/* 800101E4  A8 9E 00 0E */	lha r4, 0xe(r30)
/* 800101E8  A8 BE 00 10 */	lha r5, 0x10(r30)
/* 800101EC  7F A6 EB 78 */	mr r6, r29
/* 800101F0  48 32 96 89 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 800101F4  7F C3 F3 78 */	mr r3, r30
/* 800101F8  48 31 ED C5 */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 800101FC  48 00 01 38 */	b lbl_80010334
lbl_80010200:
/* 80010200  88 1C 00 52 */	lbz r0, 0x52(r28)
/* 80010204  28 00 00 00 */	cmplwi r0, 0
/* 80010208  41 82 00 0C */	beq lbl_80010214
/* 8001020C  FF E0 00 90 */	fmr f31, f0
/* 80010210  48 00 00 14 */	b lbl_80010224
lbl_80010214:
/* 80010214  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 80010218  EC 21 10 28 */	fsubs f1, f1, f2
/* 8001021C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80010220  EF E1 00 24 */	fdivs f31, f1, f0
lbl_80010224:
/* 80010224  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 80010228  EF C0 F8 28 */	fsubs f30, f0, f31
/* 8001022C  7F 83 E3 78 */	mr r3, r28
/* 80010230  7F E4 FB 78 */	mr r4, r31
/* 80010234  38 A1 00 28 */	addi r5, r1, 0x28
/* 80010238  48 00 04 D9 */	bl getTransform__14mDoExt_McaMorfFUsP16J3DTransformInfo
/* 8001023C  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 80010240  28 03 00 00 */	cmplwi r3, 0
/* 80010244  41 82 00 1C */	beq lbl_80010260
/* 80010248  7F E4 FB 78 */	mr r4, r31
/* 8001024C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80010250  81 83 00 00 */	lwz r12, 0(r3)
/* 80010254  81 8C 00 08 */	lwz r12, 8(r12)
/* 80010258  7D 89 03 A6 */	mtctr r12
/* 8001025C  4E 80 04 21 */	bctrl 
lbl_80010260:
/* 80010260  A8 61 00 34 */	lha r3, 0x34(r1)
/* 80010264  A8 81 00 36 */	lha r4, 0x36(r1)
/* 80010268  A8 A1 00 38 */	lha r5, 0x38(r1)
/* 8001026C  38 C1 00 08 */	addi r6, r1, 8
/* 80010270  48 32 96 09 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 80010274  7F A3 EB 78 */	mr r3, r29
/* 80010278  38 81 00 08 */	addi r4, r1, 8
/* 8001027C  FC 20 F8 90 */	fmr f1, f31
/* 80010280  7F A5 EB 78 */	mr r5, r29
/* 80010284  48 32 96 B5 */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 80010288  38 61 00 68 */	addi r3, r1, 0x68
/* 8001028C  7F A4 EB 78 */	mr r4, r29
/* 80010290  48 33 67 59 */	bl PSMTXQuat
/* 80010294  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80010298  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8001029C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800102A0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800102A4  EC 01 00 2A */	fadds f0, f1, f0
/* 800102A8  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 800102AC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 800102B0  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800102B4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800102B8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800102BC  EC 01 00 2A */	fadds f0, f1, f0
/* 800102C0  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 800102C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 800102C8  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800102CC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800102D0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800102D4  EC 01 00 2A */	fadds f0, f1, f0
/* 800102D8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 800102DC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 800102E0  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800102E4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800102E8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800102EC  EC 01 00 2A */	fadds f0, f1, f0
/* 800102F0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800102F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 800102F8  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800102FC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80010300  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80010304  EC 01 00 2A */	fadds f0, f1, f0
/* 80010308  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8001030C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80010310  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80010314  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80010318  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8001031C  EC 01 00 2A */	fadds f0, f1, f0
/* 80010320  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80010324  38 61 00 68 */	addi r3, r1, 0x68
/* 80010328  7F C4 F3 78 */	mr r4, r30
/* 8001032C  7F E5 FB 78 */	mr r5, r31
/* 80010330  4B FF CD 7D */	bl mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs
lbl_80010334:
/* 80010334  80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 80010338  28 03 00 00 */	cmplwi r3, 0
/* 8001033C  41 82 00 18 */	beq lbl_80010354
/* 80010340  7F E4 FB 78 */	mr r4, r31
/* 80010344  81 83 00 00 */	lwz r12, 0(r3)
/* 80010348  81 8C 00 08 */	lwz r12, 8(r12)
/* 8001034C  7D 89 03 A6 */	mtctr r12
/* 80010350  4E 80 04 21 */	bctrl 
lbl_80010354:
/* 80010354  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80010358  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8001035C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80010360  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80010364  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80010368  48 35 1E BD */	bl _restgpr_28
/* 8001036C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80010370  7C 08 03 A6 */	mtlr r0
/* 80010374  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80010378  4E 80 00 20 */	blr 
