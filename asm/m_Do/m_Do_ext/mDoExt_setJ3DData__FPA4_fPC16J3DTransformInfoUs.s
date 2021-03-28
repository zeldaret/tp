lbl_8000D0AC:
/* 8000D0AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000D0B0  7C 08 02 A6 */	mflr r0
/* 8000D0B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000D0B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8000D0BC  48 35 51 21 */	bl _savegpr_29
/* 8000D0C0  7C 66 1B 78 */	mr r6, r3
/* 8000D0C4  7C 9E 23 78 */	mr r30, r4
/* 8000D0C8  7C BF 2B 78 */	mr r31, r5
/* 8000D0CC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8000D0D0  C0 42 81 18 */	lfs f2, lit_3847(r2)
/* 8000D0D4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8000D0D8  FC 00 02 10 */	fabs f0, f0
/* 8000D0DC  FC 00 00 18 */	frsp f0, f0
/* 8000D0E0  C0 2D 8C 00 */	lfs f1, G_CM3D_F_ABS_MIN(r13)
/* 8000D0E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8000D0E8  40 80 00 5C */	bge lbl_8000D144
/* 8000D0EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8000D0F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8000D0F4  FC 00 02 10 */	fabs f0, f0
/* 8000D0F8  FC 00 00 18 */	frsp f0, f0
/* 8000D0FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8000D100  40 80 00 44 */	bge lbl_8000D144
/* 8000D104  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8000D108  EC 00 10 28 */	fsubs f0, f0, f2
/* 8000D10C  FC 00 02 10 */	fabs f0, f0
/* 8000D110  FC 00 00 18 */	frsp f0, f0
/* 8000D114  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8000D118  40 80 00 2C */	bge lbl_8000D144
/* 8000D11C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8000D120  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8000D124  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8000D128  38 80 00 01 */	li r4, 1
/* 8000D12C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8000D130  80 63 00 04 */	lwz r3, 4(r3)
/* 8000D134  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8000D138  7C 83 01 AE */	stbx r4, r3, r0
/* 8000D13C  38 00 00 01 */	li r0, 1
/* 8000D140  48 00 00 28 */	b lbl_8000D168
lbl_8000D144:
/* 8000D144  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8000D148  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8000D14C  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8000D150  38 80 00 00 */	li r4, 0
/* 8000D154  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8000D158  80 63 00 04 */	lwz r3, 4(r3)
/* 8000D15C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8000D160  7C 83 01 AE */	stbx r4, r3, r0
/* 8000D164  38 00 00 00 */	li r0, 0
lbl_8000D168:
/* 8000D168  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8000D16C  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 8000D170  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8000D174  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 8000D178  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8000D17C  D0 06 00 2C */	stfs f0, 0x2c(r6)
/* 8000D180  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8000D184  40 82 00 7C */	bne lbl_8000D200
/* 8000D188  C0 06 00 00 */	lfs f0, 0(r6)
/* 8000D18C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8000D190  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8000D194  D0 06 00 00 */	stfs f0, 0(r6)
/* 8000D198  C0 06 00 04 */	lfs f0, 4(r6)
/* 8000D19C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8000D1A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8000D1A4  D0 06 00 04 */	stfs f0, 4(r6)
/* 8000D1A8  C0 06 00 08 */	lfs f0, 8(r6)
/* 8000D1AC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8000D1B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8000D1B4  D0 06 00 08 */	stfs f0, 8(r6)
/* 8000D1B8  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 8000D1BC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8000D1C0  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 8000D1C4  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 8000D1C8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8000D1CC  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 8000D1D0  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 8000D1D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8000D1D8  D0 06 00 18 */	stfs f0, 0x18(r6)
/* 8000D1DC  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 8000D1E0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8000D1E4  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 8000D1E8  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 8000D1EC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8000D1F0  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 8000D1F4  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 8000D1F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8000D1FC  D0 06 00 28 */	stfs f0, 0x28(r6)
lbl_8000D200:
/* 8000D200  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8000D204  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 8000D208  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8000D20C  80 63 00 04 */	lwz r3, 4(r3)
/* 8000D210  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8000D214  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 8000D218  7C 63 00 2E */	lwzx r3, r3, r0
/* 8000D21C  88 03 00 17 */	lbz r0, 0x17(r3)
/* 8000D220  28 00 00 01 */	cmplwi r0, 1
/* 8000D224  40 82 00 90 */	bne lbl_8000D2B4
/* 8000D228  C0 22 81 18 */	lfs f1, lit_3847(r2)
/* 8000D22C  3C 60 80 43 */	lis r3, mParentS__6J3DSys@ha
/* 8000D230  C4 03 4C 20 */	lfsu f0, mParentS__6J3DSys@l(r3)
/* 8000D234  EC 41 00 24 */	fdivs f2, f1, f0
/* 8000D238  C0 03 00 04 */	lfs f0, 4(r3)
/* 8000D23C  EC 61 00 24 */	fdivs f3, f1, f0
/* 8000D240  C0 03 00 08 */	lfs f0, 8(r3)
/* 8000D244  EC 21 00 24 */	fdivs f1, f1, f0
/* 8000D248  C0 06 00 00 */	lfs f0, 0(r6)
/* 8000D24C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8000D250  D0 06 00 00 */	stfs f0, 0(r6)
/* 8000D254  C0 06 00 04 */	lfs f0, 4(r6)
/* 8000D258  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8000D25C  D0 06 00 04 */	stfs f0, 4(r6)
/* 8000D260  C0 06 00 08 */	lfs f0, 8(r6)
/* 8000D264  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8000D268  D0 06 00 08 */	stfs f0, 8(r6)
/* 8000D26C  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 8000D270  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8000D274  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 8000D278  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 8000D27C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8000D280  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 8000D284  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 8000D288  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8000D28C  D0 06 00 18 */	stfs f0, 0x18(r6)
/* 8000D290  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 8000D294  EC 00 00 72 */	fmuls f0, f0, f1
/* 8000D298  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 8000D29C  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 8000D2A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8000D2A4  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 8000D2A8  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 8000D2AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8000D2B0  D0 06 00 28 */	stfs f0, 0x28(r6)
lbl_8000D2B4:
/* 8000D2B4  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8000D2B8  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8000D2BC  7C C4 33 78 */	mr r4, r6
/* 8000D2C0  7C 65 1B 78 */	mr r5, r3
/* 8000D2C4  48 33 92 21 */	bl PSMTXConcat
/* 8000D2C8  80 9D 00 38 */	lwz r4, 0x38(r29)
/* 8000D2CC  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8000D2D0  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8000D2D4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8000D2D8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8000D2DC  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8000D2E0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8000D2E4  7C 84 02 14 */	add r4, r4, r0
/* 8000D2E8  48 33 91 C9 */	bl PSMTXCopy
/* 8000D2EC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8000D2F0  3C 60 80 43 */	lis r3, mParentS__6J3DSys@ha
/* 8000D2F4  D4 03 4C 20 */	stfsu f0, mParentS__6J3DSys@l(r3)
/* 8000D2F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8000D2FC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8000D300  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8000D304  D0 03 00 08 */	stfs f0, 8(r3)
/* 8000D308  39 61 00 20 */	addi r11, r1, 0x20
/* 8000D30C  48 35 4F 1D */	bl _restgpr_29
/* 8000D310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000D314  7C 08 03 A6 */	mtlr r0
/* 8000D318  38 21 00 20 */	addi r1, r1, 0x20
/* 8000D31C  4E 80 00 20 */	blr 
