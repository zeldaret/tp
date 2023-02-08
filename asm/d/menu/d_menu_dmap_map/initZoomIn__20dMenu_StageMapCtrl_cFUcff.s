lbl_801C1CEC:
/* 801C1CEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C1CF0  7C 08 02 A6 */	mflr r0
/* 801C1CF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C1CF8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801C1CFC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801C1D00  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 801C1D04  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 801C1D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C1D0C  93 C1 00 08 */	stw r30, 8(r1)
/* 801C1D10  7C 7E 1B 78 */	mr r30, r3
/* 801C1D14  7C 9F 23 78 */	mr r31, r4
/* 801C1D18  FF C0 08 90 */	fmr f30, f1
/* 801C1D1C  FF E0 10 90 */	fmr f31, f2
/* 801C1D20  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1D24  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801C1D28  7D 89 03 A6 */	mtctr r12
/* 801C1D2C  4E 80 04 21 */	bctrl 
/* 801C1D30  D0 3E 00 E0 */	stfs f1, 0xe0(r30)
/* 801C1D34  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 801C1D38  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 801C1D3C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801C1D40  EC 01 00 2A */	fadds f0, f1, f0
/* 801C1D44  D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 801C1D48  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 801C1D4C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 801C1D50  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801C1D54  EC 01 00 2A */	fadds f0, f1, f0
/* 801C1D58  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 801C1D5C  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 801C1D60  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 801C1D64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1D68  40 80 00 0C */	bge lbl_801C1D74
/* 801C1D6C  D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 801C1D70  48 00 00 14 */	b lbl_801C1D84
lbl_801C1D74:
/* 801C1D74  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 801C1D78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1D7C  40 81 00 08 */	ble lbl_801C1D84
/* 801C1D80  D0 1E 00 AC */	stfs f0, 0xac(r30)
lbl_801C1D84:
/* 801C1D84  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 801C1D88  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 801C1D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1D90  40 80 00 0C */	bge lbl_801C1D9C
/* 801C1D94  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 801C1D98  48 00 00 14 */	b lbl_801C1DAC
lbl_801C1D9C:
/* 801C1D9C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 801C1DA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1DA4  40 81 00 08 */	ble lbl_801C1DAC
/* 801C1DA8  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
lbl_801C1DAC:
/* 801C1DAC  9B FE 00 F2 */	stb r31, 0xf2(r30)
/* 801C1DB0  38 00 00 01 */	li r0, 1
/* 801C1DB4  98 1E 00 F5 */	stb r0, 0xf5(r30)
/* 801C1DB8  7F C3 F3 78 */	mr r3, r30
/* 801C1DBC  88 1E 00 F5 */	lbz r0, 0xf5(r30)
/* 801C1DC0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C1DC4  3C 80 80 3C */	lis r4, init_process@ha /* 0x803BCCE4@ha */
/* 801C1DC8  38 04 CC E4 */	addi r0, r4, init_process@l /* 0x803BCCE4@l */
/* 801C1DCC  7D 80 2A 14 */	add r12, r0, r5
/* 801C1DD0  48 1A 02 B5 */	bl __ptmf_scall
/* 801C1DD4  60 00 00 00 */	nop 
/* 801C1DD8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801C1DDC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801C1DE0  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 801C1DE4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 801C1DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C1DEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C1DF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C1DF4  7C 08 03 A6 */	mtlr r0
/* 801C1DF8  38 21 00 30 */	addi r1, r1, 0x30
/* 801C1DFC  4E 80 00 20 */	blr 
