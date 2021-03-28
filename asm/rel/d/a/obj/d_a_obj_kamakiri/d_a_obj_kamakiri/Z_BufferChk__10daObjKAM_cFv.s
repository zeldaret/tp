lbl_80C36CB8:
/* 80C36CB8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C36CBC  7C 08 02 A6 */	mflr r0
/* 80C36CC0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C36CC4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C36CC8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C36CCC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C36CD0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C36CD4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C36CD8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C36CDC  7C 7E 1B 78 */	mr r30, r3
/* 80C36CE0  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C36CE4  3B E3 84 08 */	addi r31, r3, lit_3775@l
/* 80C36CE8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C36CEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C36CF0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C36CF4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C36CF8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C36CFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C36D00  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C36D04  EC 01 00 2A */	fadds f0, f1, f0
/* 80C36D08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C36D0C  38 61 00 08 */	addi r3, r1, 8
/* 80C36D10  38 81 00 14 */	addi r4, r1, 0x14
/* 80C36D14  4B 3D E5 FC */	b mDoLib_project__FP3VecP3Vec
/* 80C36D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C36D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C36D20  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80C36D24  28 03 00 00 */	cmplwi r3, 0
/* 80C36D28  41 82 00 0C */	beq lbl_80C36D34
/* 80C36D2C  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 80C36D30  48 00 00 08 */	b lbl_80C36D38
lbl_80C36D34:
/* 80C36D34  C0 7F 00 50 */	lfs f3, 0x50(r31)
lbl_80C36D38:
/* 80C36D38  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80C36D3C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C36D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C36D44  40 81 00 5C */	ble lbl_80C36DA0
/* 80C36D48  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80C36D4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C36D50  40 80 00 50 */	bge lbl_80C36DA0
/* 80C36D54  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80C36D58  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80C36D5C  40 81 00 44 */	ble lbl_80C36DA0
/* 80C36D60  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80C36D64  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C36D68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C36D6C  40 80 00 34 */	bge lbl_80C36DA0
/* 80C36D70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C36D74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C36D78  3C 63 00 02 */	addis r3, r3, 2
/* 80C36D7C  FC 00 08 1E */	fctiwz f0, f1
/* 80C36D80  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C36D84  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C36D88  FC 00 10 1E */	fctiwz f0, f2
/* 80C36D8C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C36D90  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80C36D94  38 DE 09 BC */	addi r6, r30, 0x9bc
/* 80C36D98  38 63 C0 F4 */	addi r3, r3, -16140
/* 80C36D9C  4B 41 F2 7C */	b newData__13dDlst_peekZ_cFssPUl
lbl_80C36DA0:
/* 80C36DA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C36DA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C36DA8  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80C36DAC  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 80C36DB0  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 80C36DB4  38 61 00 08 */	addi r3, r1, 8
/* 80C36DB8  38 81 00 14 */	addi r4, r1, 0x14
/* 80C36DBC  4B 3D E7 30 */	b mDoLib_pos2camera__FP3VecP3Vec
/* 80C36DC0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80C36DC4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C36DC8  EC 21 00 2A */	fadds f1, f1, f0
/* 80C36DCC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C36DD0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C36DD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C36DD8  40 81 00 08 */	ble lbl_80C36DE0
/* 80C36DDC  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80C36DE0:
/* 80C36DE0  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 80C36DE4  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C36DE8  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 80C36DEC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C36DF0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C36DF4  EC 3F 00 2A */	fadds f1, f31, f0
/* 80C36DF8  EC 1E F8 28 */	fsubs f0, f30, f31
/* 80C36DFC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C36E00  EC 02 00 2A */	fadds f0, f2, f0
/* 80C36E04  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C36E08  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 80C36E0C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C36E10  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C36E14  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C36E18  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C36E1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C36E20  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C36E24  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C36E28  7C 08 03 A6 */	mtlr r0
/* 80C36E2C  38 21 00 60 */	addi r1, r1, 0x60
/* 80C36E30  4E 80 00 20 */	blr 
