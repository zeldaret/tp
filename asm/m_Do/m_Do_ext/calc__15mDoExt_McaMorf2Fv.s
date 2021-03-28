lbl_800116F4:
/* 800116F4  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 800116F8  7C 08 02 A6 */	mflr r0
/* 800116FC  90 01 01 64 */	stw r0, 0x164(r1)
/* 80011700  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80011704  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 80011708  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 8001170C  F3 C1 01 48 */	psq_st f30, 328(r1), 0, 0 /* qr0 */
/* 80011710  39 61 01 40 */	addi r11, r1, 0x140
/* 80011714  48 35 0A B9 */	bl _savegpr_25
/* 80011718  7C 7C 1B 78 */	mr r28, r3
/* 8001171C  80 03 00 04 */	lwz r0, 4(r3)
/* 80011720  28 00 00 00 */	cmplwi r0, 0
/* 80011724  41 82 06 24 */	beq lbl_80011D48
/* 80011728  80 6D 90 74 */	lwz r3, mJoint__10J3DMtxCalc(r13)
/* 8001172C  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80011730  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80011734  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80011738  93 83 00 30 */	stw r28, 0x30(r3)
/* 8001173C  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 80011740  28 04 00 00 */	cmplwi r4, 0
/* 80011744  40 82 00 0C */	bne lbl_80011750
/* 80011748  3B C1 00 88 */	addi r30, r1, 0x88
/* 8001174C  48 00 00 0C */	b lbl_80011758
lbl_80011750:
/* 80011750  57 E0 2A F4 */	rlwinm r0, r31, 5, 0xb, 0x1a
/* 80011754  7F C4 02 14 */	add r30, r4, r0
lbl_80011758:
/* 80011758  80 BC 00 24 */	lwz r5, 0x24(r28)
/* 8001175C  28 05 00 00 */	cmplwi r5, 0
/* 80011760  40 82 00 0C */	bne lbl_8001176C
/* 80011764  3B A1 00 18 */	addi r29, r1, 0x18
/* 80011768  48 00 00 0C */	b lbl_80011774
lbl_8001176C:
/* 8001176C  57 E0 23 36 */	rlwinm r0, r31, 4, 0xc, 0x1b
/* 80011770  7F A5 02 14 */	add r29, r5, r0
lbl_80011774:
/* 80011774  80 7C 00 08 */	lwz r3, 8(r28)
/* 80011778  28 03 00 00 */	cmplwi r3, 0
/* 8001177C  40 82 00 8C */	bne lbl_80011808
/* 80011780  80 7C 00 04 */	lwz r3, 4(r28)
/* 80011784  80 63 00 04 */	lwz r3, 4(r3)
/* 80011788  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8001178C  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 80011790  7C 63 00 2E */	lwzx r3, r3, r0
/* 80011794  E0 03 00 18 */	psq_l f0, 24(r3), 0, 0 /* qr0 */
/* 80011798  F0 1E 00 00 */	psq_st f0, 0(r30), 0, 0 /* qr0 */
/* 8001179C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 800117A0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800117A4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800117A8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 800117AC  A8 03 00 28 */	lha r0, 0x28(r3)
/* 800117B0  B0 1E 00 10 */	sth r0, 0x10(r30)
/* 800117B4  E0 03 00 2C */	psq_l f0, 44(r3), 0, 0 /* qr0 */
/* 800117B8  F0 1E 00 14 */	psq_st f0, 20(r30), 0, 0 /* qr0 */
/* 800117BC  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800117C0  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 800117C4  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 800117C8  28 03 00 00 */	cmplwi r3, 0
/* 800117CC  41 82 00 1C */	beq lbl_800117E8
/* 800117D0  7F E4 FB 78 */	mr r4, r31
/* 800117D4  7F C5 F3 78 */	mr r5, r30
/* 800117D8  81 83 00 00 */	lwz r12, 0(r3)
/* 800117DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 800117E0  7D 89 03 A6 */	mtctr r12
/* 800117E4  4E 80 04 21 */	bctrl 
lbl_800117E8:
/* 800117E8  A8 7E 00 0C */	lha r3, 0xc(r30)
/* 800117EC  A8 9E 00 0E */	lha r4, 0xe(r30)
/* 800117F0  A8 BE 00 10 */	lha r5, 0x10(r30)
/* 800117F4  7F A6 EB 78 */	mr r6, r29
/* 800117F8  48 32 80 81 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 800117FC  7F C3 F3 78 */	mr r3, r30
/* 80011800  48 31 D7 BD */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 80011804  48 00 05 24 */	b lbl_80011D28
lbl_80011808:
/* 80011808  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 8001180C  C0 42 81 18 */	lfs f2, lit_3847(r2)
/* 80011810  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80011814  4C 41 13 82 */	cror 2, 1, 2
/* 80011818  41 82 00 14 */	beq lbl_8001182C
/* 8001181C  28 04 00 00 */	cmplwi r4, 0
/* 80011820  41 82 00 0C */	beq lbl_8001182C
/* 80011824  28 05 00 00 */	cmplwi r5, 0
/* 80011828  40 82 01 C8 */	bne lbl_800119F0
lbl_8001182C:
/* 8001182C  7F E4 FB 78 */	mr r4, r31
/* 80011830  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80011834  81 83 00 00 */	lwz r12, 0(r3)
/* 80011838  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8001183C  7D 89 03 A6 */	mtctr r12
/* 80011840  4E 80 04 21 */	bctrl 
/* 80011844  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 80011848  28 03 00 00 */	cmplwi r3, 0
/* 8001184C  40 82 00 78 */	bne lbl_800118C4
/* 80011850  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 80011854  28 03 00 00 */	cmplwi r3, 0
/* 80011858  41 82 00 1C */	beq lbl_80011874
/* 8001185C  7F E4 FB 78 */	mr r4, r31
/* 80011860  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80011864  81 83 00 00 */	lwz r12, 0(r3)
/* 80011868  81 8C 00 08 */	lwz r12, 8(r12)
/* 8001186C  7D 89 03 A6 */	mtctr r12
/* 80011870  4E 80 04 21 */	bctrl 
lbl_80011874:
/* 80011874  A8 61 00 E4 */	lha r3, 0xe4(r1)
/* 80011878  A8 81 00 E6 */	lha r4, 0xe6(r1)
/* 8001187C  A8 A1 00 E8 */	lha r5, 0xe8(r1)
/* 80011880  7F A6 EB 78 */	mr r6, r29
/* 80011884  48 32 7F F5 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 80011888  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8001188C  48 31 D7 31 */	bl calcTransform__27J3DMtxCalcCalcTransformMayaFRC16J3DTransformInfo
/* 80011890  E0 01 00 D8 */	psq_l f0, 216(r1), 0, 0 /* qr0 */
/* 80011894  F0 1E 00 00 */	psq_st f0, 0(r30), 0, 0 /* qr0 */
/* 80011898  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 8001189C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800118A0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 800118A4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 800118A8  A8 01 00 E8 */	lha r0, 0xe8(r1)
/* 800118AC  B0 1E 00 10 */	sth r0, 0x10(r30)
/* 800118B0  E0 01 00 EC */	psq_l f0, 236(r1), 0, 0 /* qr0 */
/* 800118B4  F0 1E 00 14 */	psq_st f0, 20(r30), 0, 0 /* qr0 */
/* 800118B8  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 800118BC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 800118C0  48 00 04 68 */	b lbl_80011D28
lbl_800118C4:
/* 800118C4  7F E4 FB 78 */	mr r4, r31
/* 800118C8  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 800118CC  81 83 00 00 */	lwz r12, 0(r3)
/* 800118D0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800118D4  7D 89 03 A6 */	mtctr r12
/* 800118D8  4E 80 04 21 */	bctrl 
/* 800118DC  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 800118E0  C3 DC 00 44 */	lfs f30, 0x44(r28)
/* 800118E4  EF E0 F0 28 */	fsubs f31, f0, f30
/* 800118E8  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 800118EC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 800118F0  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 800118F4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 800118F8  EC 01 00 2A */	fadds f0, f1, f0
/* 800118FC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80011900  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80011904  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011908  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 8001190C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011910  EC 01 00 2A */	fadds f0, f1, f0
/* 80011914  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80011918  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 8001191C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011920  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80011924  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011928  EC 01 00 2A */	fadds f0, f1, f0
/* 8001192C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80011930  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80011934  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011938  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 8001193C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011940  EC 01 00 2A */	fadds f0, f1, f0
/* 80011944  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80011948  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8001194C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011950  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80011954  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011958  EC 01 00 2A */	fadds f0, f1, f0
/* 8001195C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80011960  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80011964  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011968  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 8001196C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011970  EC 01 00 2A */	fadds f0, f1, f0
/* 80011974  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80011978  3B 20 00 00 */	li r25, 0
/* 8001197C  3B 40 00 00 */	li r26, 0
/* 80011980  3B 60 00 00 */	li r27, 0
lbl_80011984:
/* 80011984  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80011988  7C A5 DA 14 */	add r5, r5, r27
/* 8001198C  A8 65 00 0C */	lha r3, 0xc(r5)
/* 80011990  A8 85 00 0E */	lha r4, 0xe(r5)
/* 80011994  A8 A5 00 10 */	lha r5, 0x10(r5)
/* 80011998  38 C1 00 48 */	addi r6, r1, 0x48
/* 8001199C  7C C6 D2 14 */	add r6, r6, r26
/* 800119A0  48 32 7E D9 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 800119A4  3B 39 00 01 */	addi r25, r25, 1
/* 800119A8  2C 19 00 02 */	cmpwi r25, 2
/* 800119AC  3B 5A 00 10 */	addi r26, r26, 0x10
/* 800119B0  3B 7B 00 20 */	addi r27, r27, 0x20
/* 800119B4  41 80 FF D0 */	blt lbl_80011984
/* 800119B8  38 61 00 48 */	addi r3, r1, 0x48
/* 800119BC  38 81 00 58 */	addi r4, r1, 0x58
/* 800119C0  EC 1F F0 2A */	fadds f0, f31, f30
/* 800119C4  EC 3E 00 24 */	fdivs f1, f30, f0
/* 800119C8  7F A5 EB 78 */	mr r5, r29
/* 800119CC  48 32 7F 6D */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 800119D0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800119D4  7F A4 EB 78 */	mr r4, r29
/* 800119D8  48 33 50 11 */	bl PSMTXQuat
/* 800119DC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800119E0  7F C4 F3 78 */	mr r4, r30
/* 800119E4  7F E5 FB 78 */	mr r5, r31
/* 800119E8  4B FF B6 C5 */	bl mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs
/* 800119EC  48 00 03 3C */	b lbl_80011D28
lbl_800119F0:
/* 800119F0  80 1C 00 40 */	lwz r0, 0x40(r28)
/* 800119F4  28 00 00 00 */	cmplwi r0, 0
/* 800119F8  40 82 01 2C */	bne lbl_80011B24
/* 800119FC  C0 7C 00 2C */	lfs f3, 0x2c(r28)
/* 80011A00  EC 20 18 28 */	fsubs f1, f0, f3
/* 80011A04  EC 02 18 28 */	fsubs f0, f2, f3
/* 80011A08  EF C1 00 24 */	fdivs f30, f1, f0
/* 80011A0C  EF E2 F0 28 */	fsubs f31, f2, f30
/* 80011A10  7F E4 FB 78 */	mr r4, r31
/* 80011A14  38 A1 00 68 */	addi r5, r1, 0x68
/* 80011A18  81 83 00 00 */	lwz r12, 0(r3)
/* 80011A1C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80011A20  7D 89 03 A6 */	mtctr r12
/* 80011A24  4E 80 04 21 */	bctrl 
/* 80011A28  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 80011A2C  28 03 00 00 */	cmplwi r3, 0
/* 80011A30  41 82 00 1C */	beq lbl_80011A4C
/* 80011A34  7F E4 FB 78 */	mr r4, r31
/* 80011A38  38 A1 00 68 */	addi r5, r1, 0x68
/* 80011A3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80011A40  81 8C 00 08 */	lwz r12, 8(r12)
/* 80011A44  7D 89 03 A6 */	mtctr r12
/* 80011A48  4E 80 04 21 */	bctrl 
lbl_80011A4C:
/* 80011A4C  A8 61 00 74 */	lha r3, 0x74(r1)
/* 80011A50  A8 81 00 76 */	lha r4, 0x76(r1)
/* 80011A54  A8 A1 00 78 */	lha r5, 0x78(r1)
/* 80011A58  38 C1 00 08 */	addi r6, r1, 8
/* 80011A5C  48 32 7E 1D */	bl JMAEulerToQuat__FsssP10Quaternion
/* 80011A60  7F A3 EB 78 */	mr r3, r29
/* 80011A64  38 81 00 08 */	addi r4, r1, 8
/* 80011A68  FC 20 F0 90 */	fmr f1, f30
/* 80011A6C  7F A5 EB 78 */	mr r5, r29
/* 80011A70  48 32 7E C9 */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 80011A74  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80011A78  7F A4 EB 78 */	mr r4, r29
/* 80011A7C  48 33 4F 6D */	bl PSMTXQuat
/* 80011A80  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80011A84  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011A88  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80011A8C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011A90  EC 01 00 2A */	fadds f0, f1, f0
/* 80011A94  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80011A98  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80011A9C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011AA0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80011AA4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011AA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80011AAC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80011AB0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80011AB4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011AB8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80011ABC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011AC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80011AC4  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80011AC8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80011ACC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011AD0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80011AD4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011AD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80011ADC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80011AE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80011AE4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011AE8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80011AEC  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011AF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80011AF4  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80011AF8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80011AFC  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011B00  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80011B04  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011B08  EC 01 00 2A */	fadds f0, f1, f0
/* 80011B0C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80011B10  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80011B14  7F C4 F3 78 */	mr r4, r30
/* 80011B18  7F E5 FB 78 */	mr r5, r31
/* 80011B1C  4B FF B5 91 */	bl mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs
/* 80011B20  48 00 02 08 */	b lbl_80011D28
lbl_80011B24:
/* 80011B24  7F E4 FB 78 */	mr r4, r31
/* 80011B28  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80011B2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80011B30  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80011B34  7D 89 03 A6 */	mtctr r12
/* 80011B38  4E 80 04 21 */	bctrl 
/* 80011B3C  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 80011B40  7F E4 FB 78 */	mr r4, r31
/* 80011B44  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80011B48  81 83 00 00 */	lwz r12, 0(r3)
/* 80011B4C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80011B50  7D 89 03 A6 */	mtctr r12
/* 80011B54  4E 80 04 21 */	bctrl 
/* 80011B58  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 80011B5C  C3 DC 00 44 */	lfs f30, 0x44(r28)
/* 80011B60  EF E0 F0 28 */	fsubs f31, f0, f30
/* 80011B64  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80011B68  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011B6C  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80011B70  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011B74  EC 01 00 2A */	fadds f0, f1, f0
/* 80011B78  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80011B7C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80011B80  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011B84  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80011B88  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011B8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80011B90  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80011B94  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80011B98  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011B9C  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80011BA0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011BA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80011BA8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80011BAC  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80011BB0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011BB4  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80011BB8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011BBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80011BC0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80011BC4  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80011BC8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011BCC  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80011BD0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011BD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80011BD8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80011BDC  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80011BE0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011BE4  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80011BE8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011BEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80011BF0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80011BF4  3B 20 00 00 */	li r25, 0
/* 80011BF8  3B 60 00 00 */	li r27, 0
/* 80011BFC  3B 40 00 00 */	li r26, 0
lbl_80011C00:
/* 80011C00  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80011C04  7C A5 D2 14 */	add r5, r5, r26
/* 80011C08  A8 65 00 0C */	lha r3, 0xc(r5)
/* 80011C0C  A8 85 00 0E */	lha r4, 0xe(r5)
/* 80011C10  A8 A5 00 10 */	lha r5, 0x10(r5)
/* 80011C14  38 C1 00 28 */	addi r6, r1, 0x28
/* 80011C18  7C C6 DA 14 */	add r6, r6, r27
/* 80011C1C  48 32 7C 5D */	bl JMAEulerToQuat__FsssP10Quaternion
/* 80011C20  3B 39 00 01 */	addi r25, r25, 1
/* 80011C24  2C 19 00 02 */	cmpwi r25, 2
/* 80011C28  3B 7B 00 10 */	addi r27, r27, 0x10
/* 80011C2C  3B 5A 00 20 */	addi r26, r26, 0x20
/* 80011C30  41 80 FF D0 */	blt lbl_80011C00
/* 80011C34  EC 1F F0 2A */	fadds f0, f31, f30
/* 80011C38  EC 3E 00 24 */	fdivs f1, f30, f0
/* 80011C3C  38 61 00 28 */	addi r3, r1, 0x28
/* 80011C40  38 81 00 38 */	addi r4, r1, 0x38
/* 80011C44  38 A1 00 08 */	addi r5, r1, 8
/* 80011C48  48 32 7C F1 */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 80011C4C  C0 7C 00 2C */	lfs f3, 0x2c(r28)
/* 80011C50  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 80011C54  EC 40 18 28 */	fsubs f2, f0, f3
/* 80011C58  C0 22 81 18 */	lfs f1, lit_3847(r2)
/* 80011C5C  EC 01 18 28 */	fsubs f0, f1, f3
/* 80011C60  EF C2 00 24 */	fdivs f30, f2, f0
/* 80011C64  EF E1 F0 28 */	fsubs f31, f1, f30
/* 80011C68  7F A3 EB 78 */	mr r3, r29
/* 80011C6C  38 81 00 08 */	addi r4, r1, 8
/* 80011C70  FC 20 F0 90 */	fmr f1, f30
/* 80011C74  7F A5 EB 78 */	mr r5, r29
/* 80011C78  48 32 7C C1 */	bl JMAQuatLerp__FPC10QuaternionPC10QuaternionfP10Quaternion
/* 80011C7C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80011C80  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011C84  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80011C88  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011C8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80011C90  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80011C94  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80011C98  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011C9C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80011CA0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011CA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80011CA8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80011CAC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80011CB0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011CB4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80011CB8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011CBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80011CC0  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80011CC4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80011CC8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011CCC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80011CD0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011CD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80011CD8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80011CDC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80011CE0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011CE4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80011CE8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011CEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80011CF0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80011CF4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80011CF8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80011CFC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80011D00  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80011D04  EC 01 00 2A */	fadds f0, f1, f0
/* 80011D08  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80011D0C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80011D10  7F A4 EB 78 */	mr r4, r29
/* 80011D14  48 33 4C D5 */	bl PSMTXQuat
/* 80011D18  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80011D1C  7F C4 F3 78 */	mr r4, r30
/* 80011D20  7F E5 FB 78 */	mr r5, r31
/* 80011D24  4B FF B3 89 */	bl mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs
lbl_80011D28:
/* 80011D28  80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 80011D2C  28 03 00 00 */	cmplwi r3, 0
/* 80011D30  41 82 00 18 */	beq lbl_80011D48
/* 80011D34  7F E4 FB 78 */	mr r4, r31
/* 80011D38  81 83 00 00 */	lwz r12, 0(r3)
/* 80011D3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80011D40  7D 89 03 A6 */	mtctr r12
/* 80011D44  4E 80 04 21 */	bctrl 
lbl_80011D48:
/* 80011D48  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 80011D4C  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80011D50  E3 C1 01 48 */	psq_l f30, 328(r1), 0, 0 /* qr0 */
/* 80011D54  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 80011D58  39 61 01 40 */	addi r11, r1, 0x140
/* 80011D5C  48 35 04 BD */	bl _restgpr_25
/* 80011D60  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80011D64  7C 08 03 A6 */	mtlr r0
/* 80011D68  38 21 01 60 */	addi r1, r1, 0x160
/* 80011D6C  4E 80 00 20 */	blr 
