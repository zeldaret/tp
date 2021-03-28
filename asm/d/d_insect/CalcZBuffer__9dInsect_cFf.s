lbl_8015E26C:
/* 8015E26C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8015E270  7C 08 02 A6 */	mflr r0
/* 8015E274  90 01 00 74 */	stw r0, 0x74(r1)
/* 8015E278  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8015E27C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8015E280  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8015E284  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8015E288  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8015E28C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8015E290  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8015E294  7C 7F 1B 78 */	mr r31, r3
/* 8015E298  FF A0 08 90 */	fmr f29, f1
/* 8015E29C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8015E2A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8015E2A4  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8015E2A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8015E2AC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8015E2B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015E2B4  C0 02 9B E0 */	lfs f0, lit_3871(r2)
/* 8015E2B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8015E2BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8015E2C0  38 61 00 08 */	addi r3, r1, 8
/* 8015E2C4  38 81 00 14 */	addi r4, r1, 0x14
/* 8015E2C8  4B EB 70 49 */	bl mDoLib_project__FP3VecP3Vec
/* 8015E2CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015E2D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015E2D4  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8015E2D8  28 03 00 00 */	cmplwi r3, 0
/* 8015E2DC  41 82 00 0C */	beq lbl_8015E2E8
/* 8015E2E0  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 8015E2E4  48 00 00 08 */	b lbl_8015E2EC
lbl_8015E2E8:
/* 8015E2E8  C0 62 9B E4 */	lfs f3, lit_3872(r2)
lbl_8015E2EC:
/* 8015E2EC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8015E2F0  C0 02 9B E4 */	lfs f0, lit_3872(r2)
/* 8015E2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E2F8  40 81 00 60 */	ble lbl_8015E358
/* 8015E2FC  C0 02 9B E8 */	lfs f0, lit_3873(r2)
/* 8015E300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015E304  40 80 00 54 */	bge lbl_8015E358
/* 8015E308  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8015E30C  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8015E310  40 81 00 48 */	ble lbl_8015E358
/* 8015E314  C0 02 9B EC */	lfs f0, lit_3874(r2)
/* 8015E318  EC 00 18 28 */	fsubs f0, f0, f3
/* 8015E31C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015E320  40 80 00 38 */	bge lbl_8015E358
/* 8015E324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015E328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015E32C  3C 63 00 02 */	addis r3, r3, 2
/* 8015E330  FC 00 08 1E */	fctiwz f0, f1
/* 8015E334  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8015E338  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8015E33C  FC 00 10 1E */	fctiwz f0, f2
/* 8015E340  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8015E344  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8015E348  38 DF 05 78 */	addi r6, r31, 0x578
/* 8015E34C  38 63 C0 F4 */	addi r3, r3, -16140
/* 8015E350  4B EF 7C C9 */	bl newData__13dDlst_peekZ_cFssPUl
/* 8015E354  48 00 00 0C */	b lbl_8015E360
lbl_8015E358:
/* 8015E358  38 00 00 00 */	li r0, 0
/* 8015E35C  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_8015E360:
/* 8015E360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015E364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015E368  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 8015E36C  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 8015E370  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 8015E374  38 61 00 08 */	addi r3, r1, 8
/* 8015E378  38 81 00 14 */	addi r4, r1, 0x14
/* 8015E37C  4B EB 71 71 */	bl mDoLib_pos2camera__FP3VecP3Vec
/* 8015E380  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8015E384  EC 20 E8 2A */	fadds f1, f0, f29
/* 8015E388  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8015E38C  C0 02 9B E4 */	lfs f0, lit_3872(r2)
/* 8015E390  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8015E394  40 82 00 0C */	bne lbl_8015E3A0
/* 8015E398  C0 02 9B F0 */	lfs f0, lit_3875(r2)
/* 8015E39C  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8015E3A0:
/* 8015E3A0  C0 62 9B F4 */	lfs f3, lit_3876(r2)
/* 8015E3A4  C0 42 9B F8 */	lfs f2, lit_3877(r2)
/* 8015E3A8  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 8015E3AC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8015E3B0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8015E3B4  EC 3F 00 2A */	fadds f1, f31, f0
/* 8015E3B8  EC 1E F8 28 */	fsubs f0, f30, f31
/* 8015E3BC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8015E3C0  EC 02 00 2A */	fadds f0, f2, f0
/* 8015E3C4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8015E3C8  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 8015E3CC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8015E3D0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8015E3D4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8015E3D8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8015E3DC  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8015E3E0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8015E3E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8015E3E8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8015E3EC  7C 08 03 A6 */	mtlr r0
/* 8015E3F0  38 21 00 70 */	addi r1, r1, 0x70
/* 8015E3F4  4E 80 00 20 */	blr 
