lbl_80767CD0:
/* 80767CD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80767CD4  7C 08 02 A6 */	mflr r0
/* 80767CD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80767CDC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80767CE0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80767CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80767CE8  7C 7F 1B 78 */	mr r31, r3
/* 80767CEC  FF E0 08 90 */	fmr f31, f1
/* 80767CF0  38 7F 10 B8 */	addi r3, r31, 0x10b8
/* 80767CF4  C0 3F 10 D0 */	lfs f1, 0x10d0(r31)
/* 80767CF8  FC 40 F8 90 */	fmr f2, f31
/* 80767CFC  C0 7F 10 E8 */	lfs f3, 0x10e8(r31)
/* 80767D00  C0 1F 10 F8 */	lfs f0, 0x10f8(r31)
/* 80767D04  EC 63 00 32 */	fmuls f3, f3, f0
/* 80767D08  4B B0 7D 34 */	b cLib_addCalc2__FPffff
/* 80767D0C  38 7F 10 BC */	addi r3, r31, 0x10bc
/* 80767D10  C0 3F 10 D4 */	lfs f1, 0x10d4(r31)
/* 80767D14  FC 40 F8 90 */	fmr f2, f31
/* 80767D18  C0 7F 10 EC */	lfs f3, 0x10ec(r31)
/* 80767D1C  C0 1F 10 F8 */	lfs f0, 0x10f8(r31)
/* 80767D20  EC 63 00 32 */	fmuls f3, f3, f0
/* 80767D24  4B B0 7D 18 */	b cLib_addCalc2__FPffff
/* 80767D28  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 80767D2C  C0 3F 10 D8 */	lfs f1, 0x10d8(r31)
/* 80767D30  FC 40 F8 90 */	fmr f2, f31
/* 80767D34  C0 7F 10 F0 */	lfs f3, 0x10f0(r31)
/* 80767D38  C0 1F 10 F8 */	lfs f0, 0x10f8(r31)
/* 80767D3C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80767D40  4B B0 7C FC */	b cLib_addCalc2__FPffff
/* 80767D44  38 7F 10 AC */	addi r3, r31, 0x10ac
/* 80767D48  C0 3F 10 C4 */	lfs f1, 0x10c4(r31)
/* 80767D4C  FC 40 F8 90 */	fmr f2, f31
/* 80767D50  C0 7F 10 DC */	lfs f3, 0x10dc(r31)
/* 80767D54  C0 1F 10 F8 */	lfs f0, 0x10f8(r31)
/* 80767D58  EC 63 00 32 */	fmuls f3, f3, f0
/* 80767D5C  4B B0 7C E0 */	b cLib_addCalc2__FPffff
/* 80767D60  38 7F 10 B0 */	addi r3, r31, 0x10b0
/* 80767D64  C0 3F 10 C8 */	lfs f1, 0x10c8(r31)
/* 80767D68  FC 40 F8 90 */	fmr f2, f31
/* 80767D6C  C0 7F 10 E0 */	lfs f3, 0x10e0(r31)
/* 80767D70  C0 1F 10 F8 */	lfs f0, 0x10f8(r31)
/* 80767D74  EC 63 00 32 */	fmuls f3, f3, f0
/* 80767D78  4B B0 7C C4 */	b cLib_addCalc2__FPffff
/* 80767D7C  38 7F 10 B4 */	addi r3, r31, 0x10b4
/* 80767D80  C0 3F 10 CC */	lfs f1, 0x10cc(r31)
/* 80767D84  FC 40 F8 90 */	fmr f2, f31
/* 80767D88  C0 7F 10 E4 */	lfs f3, 0x10e4(r31)
/* 80767D8C  C0 1F 10 F8 */	lfs f0, 0x10f8(r31)
/* 80767D90  EC 63 00 32 */	fmuls f3, f3, f0
/* 80767D94  4B B0 7C A8 */	b cLib_addCalc2__FPffff
/* 80767D98  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80767D9C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80767DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80767DA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80767DA8  7C 08 03 A6 */	mtlr r0
/* 80767DAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80767DB0  4E 80 00 20 */	blr 
