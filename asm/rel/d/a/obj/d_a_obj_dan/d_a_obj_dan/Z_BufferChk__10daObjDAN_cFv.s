lbl_80BDB0E8:
/* 80BDB0E8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BDB0EC  7C 08 02 A6 */	mflr r0
/* 80BDB0F0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BDB0F4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BDB0F8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BDB0FC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80BDB100  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80BDB104  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BDB108  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BDB10C  7C 7E 1B 78 */	mr r30, r3
/* 80BDB110  3C 60 80 BE */	lis r3, lit_3775@ha
/* 80BDB114  3B E3 C3 B0 */	addi r31, r3, lit_3775@l
/* 80BDB118  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BDB11C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BDB120  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BDB124  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BDB128  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BDB12C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BDB130  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BDB134  EC 01 00 2A */	fadds f0, f1, f0
/* 80BDB138  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BDB13C  38 61 00 08 */	addi r3, r1, 8
/* 80BDB140  38 81 00 14 */	addi r4, r1, 0x14
/* 80BDB144  4B 43 A1 CC */	b mDoLib_project__FP3VecP3Vec
/* 80BDB148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDB14C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDB150  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80BDB154  28 03 00 00 */	cmplwi r3, 0
/* 80BDB158  41 82 00 0C */	beq lbl_80BDB164
/* 80BDB15C  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 80BDB160  48 00 00 08 */	b lbl_80BDB168
lbl_80BDB164:
/* 80BDB164  C0 7F 00 54 */	lfs f3, 0x54(r31)
lbl_80BDB168:
/* 80BDB168  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80BDB16C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BDB170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDB174  40 81 00 5C */	ble lbl_80BDB1D0
/* 80BDB178  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80BDB17C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDB180  40 80 00 50 */	bge lbl_80BDB1D0
/* 80BDB184  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80BDB188  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80BDB18C  40 81 00 44 */	ble lbl_80BDB1D0
/* 80BDB190  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80BDB194  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BDB198  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BDB19C  40 80 00 34 */	bge lbl_80BDB1D0
/* 80BDB1A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDB1A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDB1A8  3C 63 00 02 */	addis r3, r3, 2
/* 80BDB1AC  FC 00 08 1E */	fctiwz f0, f1
/* 80BDB1B0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BDB1B4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80BDB1B8  FC 00 10 1E */	fctiwz f0, f2
/* 80BDB1BC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BDB1C0  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80BDB1C4  38 DE 07 9C */	addi r6, r30, 0x79c
/* 80BDB1C8  38 63 C0 F4 */	addi r3, r3, -16140
/* 80BDB1CC  4B 47 AE 4C */	b newData__13dDlst_peekZ_cFssPUl
lbl_80BDB1D0:
/* 80BDB1D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDB1D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDB1D8  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80BDB1DC  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 80BDB1E0  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 80BDB1E4  38 61 00 08 */	addi r3, r1, 8
/* 80BDB1E8  38 81 00 14 */	addi r4, r1, 0x14
/* 80BDB1EC  4B 43 A3 00 */	b mDoLib_pos2camera__FP3VecP3Vec
/* 80BDB1F0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80BDB1F4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BDB1F8  EC 21 00 2A */	fadds f1, f1, f0
/* 80BDB1FC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BDB200  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BDB204  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDB208  40 81 00 08 */	ble lbl_80BDB210
/* 80BDB20C  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80BDB210:
/* 80BDB210  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80BDB214  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80BDB218  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 80BDB21C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BDB220  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BDB224  EC 3F 00 2A */	fadds f1, f31, f0
/* 80BDB228  EC 1E F8 28 */	fsubs f0, f30, f31
/* 80BDB22C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BDB230  EC 02 00 2A */	fadds f0, f2, f0
/* 80BDB234  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BDB238  D0 1E 07 98 */	stfs f0, 0x798(r30)
/* 80BDB23C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BDB240  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BDB244  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80BDB248  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80BDB24C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BDB250  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BDB254  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BDB258  7C 08 03 A6 */	mtlr r0
/* 80BDB25C  38 21 00 60 */	addi r1, r1, 0x60
/* 80BDB260  4E 80 00 20 */	blr 
