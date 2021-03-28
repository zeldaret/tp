lbl_800FD048:
/* 800FD048  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800FD04C  7C 08 02 A6 */	mflr r0
/* 800FD050  90 01 00 44 */	stw r0, 0x44(r1)
/* 800FD054  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800FD058  7C 7F 1B 78 */	mr r31, r3
/* 800FD05C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FD060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FD064  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800FD068  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FD06C  38 A1 00 20 */	addi r5, r1, 0x20
/* 800FD070  38 C1 00 14 */	addi r6, r1, 0x14
/* 800FD074  38 E1 00 08 */	addi r7, r1, 8
/* 800FD078  4B F7 77 79 */	bl GetTriPnt__4cBgSCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz
/* 800FD07C  38 7F 1E 1C */	addi r3, r31, 0x1e1c
/* 800FD080  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FD084  48 16 B0 C5 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800FD088  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 800FD08C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800FD090  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FD094  FC 00 02 10 */	fabs f0, f0
/* 800FD098  FC 00 00 18 */	frsp f0, f0
/* 800FD09C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800FD0A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800FD0A4  40 80 00 64 */	bge lbl_800FD108
/* 800FD0A8  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD0AC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800FD0B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800FD0B4  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD0B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD0BC  D0 1F 34 EC */	stfs f0, 0x34ec(r31)
/* 800FD0C0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800FD0C4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FD0C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FD0CC  40 81 00 14 */	ble lbl_800FD0E0
/* 800FD0D0  D0 1F 34 F0 */	stfs f0, 0x34f0(r31)
/* 800FD0D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FD0D8  D0 1F 33 C0 */	stfs f0, 0x33c0(r31)
/* 800FD0DC  48 00 00 10 */	b lbl_800FD0EC
lbl_800FD0E0:
/* 800FD0E0  D0 3F 34 F0 */	stfs f1, 0x34f0(r31)
/* 800FD0E4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FD0E8  D0 1F 33 C0 */	stfs f0, 0x33c0(r31)
lbl_800FD0EC:
/* 800FD0EC  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD0F0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800FD0F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800FD0F8  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD0FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD100  D0 1F 34 F4 */	stfs f0, 0x34f4(r31)
/* 800FD104  48 00 00 D8 */	b lbl_800FD1DC
lbl_800FD108:
/* 800FD108  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FD10C  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FD110  FC 00 02 10 */	fabs f0, f0
/* 800FD114  FC 00 00 18 */	frsp f0, f0
/* 800FD118  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800FD11C  40 80 00 64 */	bge lbl_800FD180
/* 800FD120  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD124  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800FD128  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FD12C  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD130  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD134  D0 1F 34 EC */	stfs f0, 0x34ec(r31)
/* 800FD138  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800FD13C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FD140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FD144  40 81 00 14 */	ble lbl_800FD158
/* 800FD148  D0 1F 34 F0 */	stfs f0, 0x34f0(r31)
/* 800FD14C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800FD150  D0 1F 33 C0 */	stfs f0, 0x33c0(r31)
/* 800FD154  48 00 00 10 */	b lbl_800FD164
lbl_800FD158:
/* 800FD158  D0 3F 34 F0 */	stfs f1, 0x34f0(r31)
/* 800FD15C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FD160  D0 1F 33 C0 */	stfs f0, 0x33c0(r31)
lbl_800FD164:
/* 800FD164  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD168  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800FD16C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FD170  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD174  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD178  D0 1F 34 F4 */	stfs f0, 0x34f4(r31)
/* 800FD17C  48 00 00 60 */	b lbl_800FD1DC
lbl_800FD180:
/* 800FD180  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD184  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800FD188  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FD18C  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD190  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD194  D0 1F 34 EC */	stfs f0, 0x34ec(r31)
/* 800FD198  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 800FD19C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800FD1A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FD1A4  40 81 00 14 */	ble lbl_800FD1B8
/* 800FD1A8  D0 1F 34 F0 */	stfs f0, 0x34f0(r31)
/* 800FD1AC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FD1B0  D0 1F 33 C0 */	stfs f0, 0x33c0(r31)
/* 800FD1B4  48 00 00 10 */	b lbl_800FD1C4
lbl_800FD1B8:
/* 800FD1B8  D0 3F 34 F0 */	stfs f1, 0x34f0(r31)
/* 800FD1BC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800FD1C0  D0 1F 33 C0 */	stfs f0, 0x33c0(r31)
lbl_800FD1C4:
/* 800FD1C4  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD1C8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 800FD1CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FD1D0  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD1D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD1D8  D0 1F 34 F4 */	stfs f0, 0x34f4(r31)
lbl_800FD1DC:
/* 800FD1DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800FD1E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800FD1E4  7C 08 03 A6 */	mtlr r0
/* 800FD1E8  38 21 00 40 */	addi r1, r1, 0x40
/* 800FD1EC  4E 80 00 20 */	blr 
